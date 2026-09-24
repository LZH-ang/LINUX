# Ubuntu LVM 卷缩容及分配空间教程（为安装其他系统腾出空间）

在基于 LVM（逻辑卷管理）的 Ubuntu 系统上，如果想要为安装其他操作系统（如 Windows 或其他 Linux 发行版）腾出硬盘空间，我们需要通过 Live USB 环境对系统的 LVM 逻辑卷进行安全缩容。

**⚠️ 重要警告：** 调整分区和 LVM 大小存在较高风险，操作前 **务必备份重要数据**！

## 1. 准备工作与进入 Live 系统

由于不能在系统运行且挂载根目录的情况下对其进行缩减，我们需要使用 Ubuntu Live USB 启动电脑。

1. 通过 Ubuntu Live U盘引导启动，选择 "Try Ubuntu"（试用 Ubuntu）。

2. 打开 Terminal 终端。

3. 获取 Root 权限（接下来的全程操作都需要在 root 权限下进行）：

```bash
   sudo -i
```

*(注：根据提示输入两次密码，为临时系统 root 账号设置密码)*

4. **验证当前环境**：查看存储信息，确认根目录挂载点。
   如果在 Live 系统中查看到的根目录挂载分区是 `/cow` 而不是 `/dev/vgubuntu/root`，说明原系统分区未被占用，此时可以安全地调整原系统根目录。

## 2. 查看当前磁盘与 LVM 状态

在动手修改前，先全面了解当前的硬盘、物理卷（PV）、卷组（VG）和逻辑卷（LV）的状态。

常用查看命令：

* **查看硬盘及分区情况**：`lsblk`
* **查看 PV (物理卷) 情况**：`pvs`
* **查看 VG (卷组) 情况**：`vgs`
* **查看 LV (逻辑卷) 情况**：`lvs`

进一步确认 LVM 详细使用信息：

```bash
# 查看物理卷的使用情况
pvs -o+pv_used

# 检查物理扩展(PE)在硬盘上的分布（检查是否连续，假设目标 PV 为 /dev/nvme0n1p3）
pvs -v --segments /dev/nvme0n1p3
```

## 3. 文件系统与逻辑卷的缩减操作

假设我们要将根目录所在的逻辑卷 `/dev/vgubuntu/root` 缩减到 **600G**。

### 3.1 激活逻辑卷并检测

缩减前需要激活目标逻辑卷，并强制进行文件系统完整性检查：

```bash
# 激活需要缩减的逻辑卷
lvchange -ay /dev/vgubuntu/root

# 强制检测文件系统
e2fsck -f /dev/vgubuntu/root
```

### 3.2 缩减文件系统

检测完毕后，首先重置目标文件系统的大小（以缩减至 600G 为例）：

```bash
resize2fs /dev/vgubuntu/root 600G
```

> **📌 文件系统调整注意事项：**
>
> * 对于 **ext2 / ext3 / ext4** 文件系统，使用 `resize2fs` 进行调整（同时支持增大和缩小）。
> * 对于 **xfs** 文件系统，对应的调整命令是 `xfs_growfs`（**只支持增大，不支持缩小**）。

### 3.3 缩减逻辑卷 (LV)

文件系统调整后，接下来调整目标逻辑卷的大小：

```bash
lvreduce -L 600G -f -r /dev/vgubuntu/root
```

*注：执行此命令时，系统会提示数据可能损坏，输入 `y` 确认即可。*

## 4. 硬盘分区缩容 (释放未分配空间)

逻辑卷缩小后，物理分区上并没有直接空出可以给其他系统用的“未分配空间(Unallocated)”，我们需要进一步处理。

1. 再次查看 PV 的使用情况，确认状态：

```bash
   pvs -o+pv_used
```

2. 打开系统自带的 **GParted** 工具（一般可以在 Live 系统中直接搜索打开）。

3. 在 GParted 可视化界面中，找到对应的 LVM 分区，右键对其进行 **Resize/Move** 缩容操作。*(如果发现 GParted 无法缩容到期望的大小，请直接跳至 **附录二** 处理碎片化 PE 问题。)*

4. 将空闲出来的空间分配为 **Unallocated（未分配空间）**，应用更改。
   *(这部分未分配空间现在就可以用来安装其他操作系统了)*

## 附录一：扩容补救措施 (若用 GParted 调整前需要恢复)

如果缩减后发现需要再扩容，且**尚未**用 GParted 调整底层物理分区：

1. 重新激活卷组：

```bash
   vgchange -ay vgubuntu
```

2. 直接把逻辑卷放大回去（往大里填，假设扩展 400G）：

```bash
   lvextend -L +400G /dev/vgubuntu/root
```

3. 修复并扩大文件系统：

```bash
   e2fsck -f /dev/vgubuntu/root
   resize2fs /dev/vgubuntu/root
```

## 附录二：GParted 缩容受阻？（Swap 导致 PE 碎片化及修复）

**问题现象：** 在 LVM 缩容后，使用 GParted 调整底层分区时，发现能实际缩减出来的 Free 空间比 LVM 中释放的空间小得多。

**原因分析：** 物理卷在分配 PE（物理扩展）时可能**不连续**。例如你之前设置的 Swap 分区可能恰好被分配到了磁盘的末端（比如 600G 之后的位置）。这就像一个钉子钉在了磁盘尾部，导致 GParted 无法收缩整个分区的边界。

### 解决步骤：删除末尾的 Swap 并重建

1. **确认 Swap 占用了末尾 PE：**
   执行 `pvs -v --segments /dev/nvme0n1p3`，观察映射，如果发现 `swap_1` 位于靠后的物理扇区，则需要先移除它。

2. **关闭并删除原 Swap 逻辑卷：**

```bash
   # 查看当前 swap 状态
   free -h
   
   # 关闭 swap
   swapoff -v /dev/vgubuntu/swap_1
   
   # 删除 swap 逻辑卷
   lvremove /dev/vgubuntu/swap_1
```

*删除后，再次执行 `pvs -v --segments /dev/nvme0n1p3` 确认 Swap 的 PE 已经消失。*

3. **使用 GParted 完成缩容：**
   此时再回到 GParted 工具中，你会发现可以顺利将物理分区向左收缩，留出想要的未分配空间。

4. **在调整后的 LVM 中重建 Swap：**

```bash
   # 重新创建 swap 逻辑卷（假设分配 2.5G，名称为 swap_1，保持和原来一样）
   lvcreate -n swap_1 -L 2.5G vgubuntu
   
   # 格式化为 swap 文件系统
   mkswap /dev/vgubuntu/swap_1
```

5. **挂载、检查 fstab 并进行最终验证：**
   为了确保万无一失，验证根目录缩容成功及挂载配置是否正常：

```bash
   # 确保卷组处于激活状态
   vgchange -ay
   
   # 挂载根目录进行检查
   mount /dev/vgubuntu/root /mnt
   
   # 查看 root 卷大小是否正确（如 600G）
   df -h /mnt
   
   # 查看原系统的 fstab，确认 swap 的挂载方式
   cat /mnt/etc/fstab
   
   # 检查所有分区的 UUID 作为对比备用
   blkid
   
   # 卸载根目录，准备重启
   cd /
   umount /mnt
   
   # 确认 root 已经不在挂载列表中
   df -h
```

**💡 关于 Swap 重建后的 `fstab` 挂载说明（非常重要）：**

重建 Swap 时，虽然 `mkswap` 会赋予 Swap 空间一个新的 UUID，但是否需要修改系统的 `/etc/fstab` 取决于系统的挂载策略：

1. **按 LVM 路径映射挂载（Ubuntu 默认方案，无需修改）：**
   如您在 `cat /mnt/etc/fstab` 时看到记录类似于 `/dev/mapper/vgubuntu-swap_1 none swap sw 0 0`，由于我们刚才重建逻辑卷时，**依然使用了完全相同的卷名 `swap_1` 和卷组名 `vgubuntu`**，它的设备路径并没有改变。LVM 帮我们屏蔽了底层 UUID 的变化，因此这种情况下**完全不需要修改 `fstab`**，重启后系统可直接识别。
   
2. **按 UUID 挂载（需修改）：**
   如果您在 `fstab` 中看到的是类似 `UUID=xxxx-xxxx none swap sw 0 0`，这种情况下就必须将 `blkid` 获取到的新 UUID 替换进去，否则会引发开机找寻不到 Swap 分区的超时报错。
   
*(注：如果您在 `fstab` 中还看到了 `/swapfile`，这是 Ubuntu 独立的交换文件机制，与 LVM 分区无关，直接保留原样即可。)*