#  LINUX初学
  
##  001
  
***
![单片机程序的学习方法001_为何要学习](%E7%AC%AC001%E8%AF%BE_%E4%B8%8D%E8%A6%81%E5%86%8D%E7%94%A8%E8%80%81%E6%96%B9%E6%B3%95%E5%AD%A6%E4%B9%A0%E5%8D%95%E7%89%87%E6%9C%BA%E5%92%8CARM/%E5%8D%95%E7%89%87%E6%9C%BA%E7%A8%8B%E5%BA%8F%E7%9A%84%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95001_%E4%B8%BA%E4%BD%95%E8%A6%81%E5%AD%A6%E4%B9%A0.jpg )
![单片机程序的学习方法002_怎样学习](%E7%AC%AC001%E8%AF%BE_%E4%B8%8D%E8%A6%81%E5%86%8D%E7%94%A8%E8%80%81%E6%96%B9%E6%B3%95%E5%AD%A6%E4%B9%A0%E5%8D%95%E7%89%87%E6%9C%BA%E5%92%8CARM/%E5%8D%95%E7%89%87%E6%9C%BA%E7%A8%8B%E5%BA%8F%E7%9A%84%E5%AD%A6%E4%B9%A0%E6%96%B9%E6%B3%95002_%E6%80%8E%E6%A0%B7%E5%AD%A6%E4%B9%A0.jpg )
  
##  002
  
***
1.新建并编辑文本文件
  
2.office软件
  
3.打开图片
默认image view打开图片
  
4.mp3文件---本地听歌
使用audacious软件
  
5.视频---
使用smplayer软件
  
6.上网
（初学者不容易掌握的问题，也是百问网近几年答疑频率比较高的问题）  
设置网络、然后使用火狐浏览器打开。  
  
7.网络听歌  
网易云音乐  
  
8.网络看视频  
![安装虚拟机](%E7%AC%AC002%E8%AF%BE_ubuntu%E5%9B%BE%E5%BD%A2%E7%95%8C%E9%9D%A2%E6%93%8D%E4%BD%9C/%E5%AE%89%E8%A3%85%E8%99%9A%E6%8B%9F%E6%9C%BA.png )
  
##  003
  
***
问题:  
除了图形界面，ubuntu下面有没有其他方式也可以创建目录、创建文件？  
回答:  
通过linux命令  
  
linux命令，是每一个linux学习者必须掌握的基础知识，入门阶段掌握常用的一些命令即可。 
  
pwd		:显示当前所在的目录  
ls		:显示当前目录下的文件  
cd		:切换路径  
<img src="https://latex.codecogs.com/gif.latex?~~~~"/> cd .. 返回到上一级路径  
mkdir	:新建目录  
rmdir	:删除目录  
touch	:新建文件  
cp		:复制文件	  
rm		:删除文件	   
cat		:将文件内容显示到终端中  
clear	:清除屏幕的显示内容  
  
在shell中输入字符串并回车的过程:  
1. shell根据第1个字符串去环境变量PATH所指定的目录中找到同名的应用程序  
2. 然后执行它  
  
我们可以设置PATH环境变量添加我们的目录:  
export PATH=<img src="https://latex.codecogs.com/gif.latex?PATH:&#x2F;my&#x2F;dir%20%20command%20not%20found的原因:%20%201.%20PATH所确定的目录中无此程序%20%202.%20它不是可执行的程序%20%20&#x2F;&#x2F;========================================================%20%20命令提示符，显示了%20%201.%20当前登录的用户名%20%202.%20用户当前所在的路径%20%20%20%20&#x2F;&#x2F;========================================================%20%20%20%20linux命令的格式"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?命令"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[选项]"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[参数]%20%20举例:"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?ls"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?ls%20-l"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?ls%20-l%20&#x2F;home%20%201.%20命令这一部分肯定是存在%20%20%202.%20选项和参数不一定存在，可有可无。%20%20%20%20%20选项和参数取决于你使用该命令实现的具体目的。%20%203.%20选项是以&quot;-&quot;来指明的。%20%204.%20命令、选项、参数之间是以空格来隔开的，%20%20%20%20%20%20%20一个或多个空格都视为1个空格。%20%20%20%20%20%20%20如：ls%20-l%20&#x2F;home与ls%20-l%20&#x2F;home的目的是一样的。%20%20%205.%20完成linux命令输入后，按下enter键，即可执行该命令。%20%20&#x2F;&#x2F;========================================================%20%20%20如ls命令有选项-l,那么ls到底有哪些选项呢?可以通过man%20ls来查看。%20%20%20ls命令的选项有很多，入门阶段先掌握ls命令的-l、-a、-h等常用选项。%20%20%20在后面的视频中，也是先介绍linux基础命令(pwd、cd、ls等)的常用选项。%20%20%20&#x2F;&#x2F;========================================================%20%20pwd:打印当前所在的路径%20%20cd%20:切换路径"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?cd%20%20~切换到当前用户的家目录"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?cd%20.%20%20切换到当前路径"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?cd%20..%20切换到上一级路径"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?cd%20..&#x2F;..%20切换到上上级路径(其中：在linux中路径分隔符为斜杠&#x2F;)"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?cd%20-%20%20切换到上一次的路径%20%20%20	linux目录结构%20%20&#x2F;"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?$~~~~~~"/>------------------根目录/  
|------bin  ------------------/bin  
|------home ------------------/home  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> |------book ------------------/home/book  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> |------Guest ------------------/home/Guest  
|------usr  ------------------/usr  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> |------lib ------------------/usr/lib  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> |------bin ------------------/usr/bin  
  
举例:
/home/book  是绝对路径  
相对路径一般以.和..来构成  
1. 当前路径为/bin，然后./pwd就是执行了/bin/pwd  
2. 当前路径为/home/book/100ask  
然后cd ../Videos/就到达/home/book/Videos  
cd ../..就到达/home  
  
注意事项:
1. 你切换的路径必须保证存在，可以使用ls命令来查看某一个路径下面的所有内容。
2. 一定要记得多使用tab键。
  
//========================================================  
ls：列出目录内容    
cd切换路径，然后在使用ls来查看目录内容  
  
举例:  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 命令<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>[选项]<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>[参数]
  
1. ls  
直接ls，则显示当前所在目录的内容  
2. ls <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>目录名  
如：ls /home,则指定显示/home的内容   
如：ls ~    ,则指定显示/home/book的内容   
3. ls <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>选项  
或：ls <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>选项<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>目录名  
  
常用的选项:  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> -l(long的缩写),显示目录下文件的更详细的信息(文件权限、文件最后修改时间、文件大小)  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> -a(all的缩写),显示了隐藏文件  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> -h(human-able的缩写),将文件大小以K(KB)、M(MB)、G(GB)来表示
  
//========================================================   
目录的操作  
  
mkdir:创建目录   
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 命令<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>[选项]<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>[参数]
  
举例:  
1. mkdir <img src="https://latex.codecogs.com/gif.latex?~~~~~"/>目录名  
mkdir dir0 创建了dir0这个目录    
2. mkdir <img src="https://latex.codecogs.com/gif.latex?~~~~~"/>-p <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>父目录/子目录  
mkdir -p dir1/dir2  
  
-p(parents的缩写)  
连续创建多级目录(父目录和子目录)，如果父目录不存在，则需要加入-p参数。  
  
rmdir:删除目录  
举例:
1. rmdir <img src="https://latex.codecogs.com/gif.latex?~~~~~"/>目录名  
  
注意:rmdir不能删除非空目录(非空目录:该目录下面有子目录或者文件)
  
//========================================================  
文件的操作  
  
touch:新建文件  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> touch <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>文件名  
举例:  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> touch file1 在当前目录新建名为file1的文件  
  
注意:
1. 同一目录无法创建同名的文件  
2. linux的文件名是区分大小写的，如file1和File1是不同文件。  
这一点跟windows不同。  
  
mv(move的缩写):修改文件(目录)名、移动路径  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> mv <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>旧文件名<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 新文件名<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> ====>修改文件名  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 如：mv file1 filea将当前目录的文件file1改名为filea  
  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> mv <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>旧目录名<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 新目录名<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> ====>修改目录名  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 如：mv dir1 dira将当前目录下的目录dir1改为dira  
  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> mv <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>文件名<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 目录名<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> ====>移动路径   
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 如：mv filea dira将当前目录下filea移动到dira子目录  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 如：mv filea  ~  将当前目录下filea移动家目录   
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> 如：mv ~/filea  ..将家目录下的fila移动到上一个路径   
  
cp(copy的缩写):复制文件(目录)   
1. cp <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>源文件名 <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>目标文件名     
举例:   
cp File1  file2将当前目录下的文件File1拷贝成file2  
  
2. cp <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>源文件名 <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>目标目录名  
举例:  
cp file2 dira/将当前目录下的文件file2拷贝到dira子目录  
  
2. cp <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>源目录名 <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>目标目录名	 
举例:  
cp -r dira dirb 复制dira目录下的所有内容到dirb  
其中,-r参数时递归复制   
cp -i file2 dira如果dira目录下面有同名的file2，加入-i参数就会   
要求你确认是否覆盖同名的文件   
  
注意:cp的常用参数有:-i,-r,-f,-d等，在后面讲解了linux权限之后，我们会加深cp这个命令的讲解。   
  
rm(remove的缩写):删除文件(目录)  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> rm <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>[选项]<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> [文件名 | 目录名]  
  
常用选项:  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> -i(interactive(交互)的缩写),删除文件(目录)之前，要求你确认是否同意删除  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> -r(recursive(递归)的缩写),递归删除指定目录下的子目录和文件  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> -f(force(强制)的缩写),强制删除	  
  
举例：  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> rm File1       删除当前目录下的文件File1   
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> rm -i file2    删除文件file2，删除前要求你确认是否同意删除，其中y表明同意删除，n表示取消删除  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> rm -r dira     删除目录dira  
<img src="https://latex.codecogs.com/gif.latex?~~~~~~"/> rm -ir dirb    删除目录dirb，删除前要求你确认是否同意删除，其中y表明同意删除，n表示取消删除    
  
注意：  
1. 删除文件(目录)前，确定该文件(目录)是否可以被删除。  
2. rm的常用参数有：-i,-r,-f等，在后面讲解了linux权限之后，我们会加深rm这个命令的讲解。  
  
//========================================================  
文件的查看和编辑  
1. cat查看文件内容  
cat <img src="https://latex.codecogs.com/gif.latex?~~~~~~"/>文件名  
举例:  
    cat file1          将file1的内容打印到标准输出中(默认标准标准输出指向终端)  
    cat file1 file2    将file1和file2的内容串联并依次全部打印到标准输出中   
    cat -n file1       显示内容并在内容前显示行号。   
类似的查看命令:more、less、head、tail等后面讲解	
2. gedit图形应用程序的编辑器
3. vi 编辑器
  
//========================================================  
清除屏幕  
clear:刷新屏幕，保留历史命令操作记录  
说明:此命令本质上只是让终端向后翻一页，  
当向上滚动鼠标时，还是可以看到之前命令的操作记录  
  
reset:重新初始化屏幕，清除历史命令操作记录
  
//========================================================  
man、info、--help  
  
1. man使用的最多  
ls 常用选项为-l、-a、-h  
可以通过man ls来查看这些选项的含义。
举例:
	man man     查看man手册的说明  
	man ls      当没有指定使用那一页，默认使用第1页  
	man 1 ls  
	man 1 gcc   gcc是一个应用程序，在linux中一般使用gcc编译器来编译c/c++语言的程序  
	open/write/read/close   等等都是系统调用  
	man 2 open  查看系统调用open的man手册说明  
注意: 
	man手册的9册内容的侧重点，最好记一下。  
  
2. info 
如info ls
  
3. --help
如ls --help
  
##  004
  
***
vi编辑器的使用  
  
一个编辑器具备的功能  
1. 打开文件、新建文件、保存文件  
2. 光标移动  
3. 文本编辑  
4. (多行间|多列间)复制、粘贴、删除  
5. 查找和替换  
  
//=========================================  
vi编辑器的配置    
cd /etc/vim  
cp vimrc ~/.vimrc  
cd ~  
gedit .vimrc  
在.vimrc中加入如下内容:  
"关闭兼容功能  
set nocompatible   
"显示行号  
set number  
"编辑时 backspace 键设置为2个空格  
set backspace=2  
"编辑时 tab 键设置为4个空格   
set tabstop=4   
"设置自动对齐为4个空格   
set shiftwidth=4   
"搜索时不区分大小写   
set ignorecase   
"搜索时高亮显示  
set hlsearch  
  
//=========================================   
vi编辑器有三种模式   
1. 一般模式（光标移动、复制、粘贴、删除）  
2. 编辑模式（编辑文本）  
3. 命令行模式（查找和替换）  
  
注意:  
1. 当不知道处于何种模式时，按ESC键返回到一般模式。  
2. wq(write quit)   
3. i(insert)   
  
//==================================================  
1. 打开文件、新建文件、保存文件  
   vi 文件名   
   如果文件存在，输入结束后，:wq保存并退出文件   
   如果文件不存在，输入结束后，:wq就可以新建并保存文件  
在编辑完成时，返回一般模式:   
1.输入:w则保存文件，如果已经保存文件，输入:q则退出文件   
2.直接输入:wq保存并退出    
3.如果不想保存被修改的内容，则:q!强制退出。  
  
2. 进入编辑模式   
i(在光标前开始插入文本)  
a在光标后开始插入文本   
o(在当前行之下新开一行，并到行首)  
  
3. 光标移动  
在一般模式下，hjkl这四个按键就可以移动光标   
h(左)  
j(下)   
k(上)          
l(右)   
快速的定位到某一行:   
文件头、文件尾、指定某一行  
ngg光标移至第n行的行首（n为数字），  
	如1gg就跳到第一行的行首，就是文件头  
	如2gg就跳到第二行的行首   
G转至文件结尾   
注意:ngg和G是在一般模式     
  
在某一行如何快速定位到某一列   
0（数字零）光标移至当前行行首     
<img src="https://latex.codecogs.com/gif.latex?光标移至当前行行末%20%20fx搜索当前行中下一个出现字母x的地方%20%20%20注意:0、"/>、fx是在一般模式  
  
vi的难点:  
vi操作之前，先判断一下当前是哪一种模式，再看光标所在位置。  
当你不知道处于何种模式时，使用esc键返回到一般模式。  
再看光标，难点在于移动光标，可以做到快速切换到某一行某一列。  
  
  
4. 文本复制、粘贴、删除、撤销   
yy复制当前行(y:yank(复制))     
nyy复制当前行及其后的n-1行(n是数字)   
使用P键来粘贴(p:paste)   
dd  删除光标所在行(d:delete)   
ndd 删除当前行及其后的n-1行(n是数字)   
按u键来撤销上一步操作    
x删除光标所在位置的字符    
注意:
yy/nyy/dd/ndd/x/u都是在一般模式。  
  
5. 查找和替换    
/pattern 从光标开始处向文件尾搜索pattern，后按下n或N   
注意:   
n在同一个方向重复上一次搜索命令   
N在反方向重复上一次搜索命令  
n(N)来源于next  
注意:   
在/pattern之前先跳到第一行则进行全文件搜索。                       
:%s/p1/p2/g将文件中所有的p1均用p2替换   
:%s/p1/p2/gc替换时需要确认     
s:substitute替换   
g:global全局   
c:confirm确认  
  
vi的难点:   
vi操作之前，先判断一下当前是哪一种模式，再看光标所在位置。   
当你不知道处于何种模式时，使用esc键返回到一般模式。    
再看光标，难点在于移动光标，可以做到快速切换到某一行某一列。  
  
vi编辑器有三种模式    
1. 一般模式(光标移动、复制、粘贴、删除、撤销)    
   hjkl、ngg/G、0、<img src="https://latex.codecogs.com/gif.latex?、fx%20%20%20%20%20yy&#x2F;nyy%20%20%20%20%20%20p%20%20%20%20%20%20dd&#x2F;ndd、x%20%20%20%20%20u%20%20%202.%20编辑模式(编辑文本)%20%20%20%20%20%20i%20%20a%20o%20%20%203.%20命令行模式(查找和替换、保存退出文件)%20%20%20%20%20%20&#x2F;pattern、:%s&#x2F;p1&#x2F;p2&#x2F;gc、:wq%20%20%20%20%20举例:%20%20%201）用vi%20新建一个文件test2.txt，然后输入”welaome%20to%20the%20world%20of%20vi.”,并保存。%20%20%20%202）由于拼写错误，需要将其中的welaome中的a替换成c。%20%20%203）在上步的基础上，复制第一行到第二行和第三行。%20%20%204）在上步的基础上，删除第三行的全部内容。%20%20%205）在上步的基础上，搜索出现vi的地方。%20%20%206）在上步的基础上，将字符串vi替换成vim。%20%20%20%207）保存并退出。%20%20##%20%20004***find%20%20%20目的:查找符合条件的文件%20%20%201.%20在那些目录中查找%20%20%202.%20查找的内容%20%20%20格式:%20find"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[目录名]"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[选项]"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[查找条件]%20%20%20%20举例:%20%20%20%20find%20&#x2F;work&#x2F;001_linux_basic&#x2F;dira&#x2F;%20%20-name%20&quot;test1.txt&quot;%20%20%20说明:"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?a)&#x2F;work&#x2F;001_linux_basic&#x2F;dira&#x2F;指明了查找的路径"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?b)-name表明以名字来查找文件"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?c)&quot;test1.txt&quot;，就指明查找名为test1.txt的文件%20%20同理:"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?find%20&#x2F;work&#x2F;001_linux_basic&#x2F;dira&#x2F;%20%20-name%20&quot;*.txt&quot;"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?查找指定目录下面所以以.txt结尾的文件，其中*是通配符。"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?find%20&#x2F;work&#x2F;001_linux_basic%20%20-name%20&quot;dira&quot;"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?查找指定目录下面是否存在dira这个目录，dira是目录名。%20%20注意:%20%20%201.%20如果没有指定查找目录，则为当前目录。%20%20%20%20%20find%20.%20-name%20&quot;*.txt&quot;%20%20%20其中.代表当前路径%20%20%20%20%20%20%20find%20%20-name%20&quot;*.txt&quot;%20%20%20%20%20%20%20都是一样的功能%20%20%20%202.%20find还有一些高级的用法，如查找最近几天(几个小时)之内(之前)有变动的文件%20%20%20%20%20%20%20find%20&#x2F;home%20-mtime%20-2%20%20查找&#x2F;home目录下两天内有变动的文件	%20%20%20	grep目的:使用grep命令来查找文件中符合条件的字符串%20%20%20%20%20%20格式:%20grep"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[选项]"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[查找模式]"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?[文件名]%20%20%20%20%20将dira目录的test1.txt和dirb目录的test1.txt都含有如下内容:%20%20%20%20aaa%20%20%20%20AAAAAA%20%20%20%20abc%20%20%20%20%20abcabcabc%20%20%20cbacbacba%20%20%20%20match_pattern%20%20%20%20nand-&gt;erase%20%20%20%20查找字符串时希望显示如下内容:1）所在的文件名----grep查找时默认已经显示目标文件名%20%20%20%202）所在的行号------使用-n选项%20%20%20%20%20%20grep%20-rn%20&quot;字符串&quot;%20%20文件名%20%20%20%20r(recursive):递归查找%20%20%20%20n(number):显示目标位置的行号%20%20%20%20字符串:要查找的字符串%20%20%20文件名:要查找的目标文件，如果是*则表示查找当前目录下的所有文件和目录	%20%20%20%20举例:"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?grep%20-n%20&quot;abc&quot;%20test1.txt%20%20%20在test1.txt中查找字符串abc"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?grep%20-rn%20&quot;abc&quot;%20*%20%20%20%20%20%20%20%20%20%20在当前目录递归查找字符串abc%20%20%20%20	注意:1）可以加入-w全字匹配。%20%20%20%20file%20%20%20%20目的:识别文件类型%20%20%20%20%20格式:%20file"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?文件名%20%20%20%20%20linux下一切皆文件%20%20%20举例:%20%20%20file%20~&#x2F;.bashrc%20%20%20%20%20为ASCII%20编码的text类型%20%20%20%20file%20~&#x2F;.vimrc%20%20%20%20%20%20为UTF-8%20Unicode%20编码的text类型%20%20%20file%20~&#x2F;Pictures&#x2F;*%20%20如图形文件JPEG&#x2F;PNG&#x2F;BMP格式%20%20%20%20file%20~&#x2F;100ask&#x2F;%20%20%20%20%20为directory表明这是一个目录%20%20%20file%20&#x2F;bin&#x2F;pwd%20%20%20%20%20%20出现%20ELF%2064-bit%20LSB%20executable，即为ELF格式的可执行文件%20%20%20%20file%20&#x2F;dev&#x2F;*%20%20%20%20%20%20%20%20出现character%20special(字符设备文件)、%20block%20special(块设备文件)等%20%20%20%20%20which和whereis%20%20%20%20目的:查找命令或应用程序的所在位置%20%20%20%20格式:which"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?命令名&#x2F;应用程序名%20%20%20%20在终端上执行pwd实际上是去执行了&#x2F;bin&#x2F;pwd%20%20%20%20举例:"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?which%20pwd%20定位到&#x2F;bin&#x2F;pwd"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?which%20gcc%20定位到&#x2F;usr&#x2F;bin&#x2F;gcc"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?whereis%20%20pwd查找到可执行程序的位置&#x2F;bin&#x2F;pwd和手册页的位置&#x2F;usr&#x2F;share&#x2F;man&#x2F;man1&#x2F;pwd.1.gz%20%20%20%20压缩1.%20压缩的概念%20%20%20%201）压缩的目的:%20%20%20%20%20%20%20%20在网络传递文件时，可以先将文件压缩，然后传递压缩后的文件，从而减少网络带宽。%20%20	接受者接受文件后，解压即可。%20%202）压缩的类型%20%20%20%20%20%20%20有损压缩、无损压缩。%20%20%20%20%20%20%20%20a)有损压缩:%20%20%20%20%20%20如mp4视频文件，即使压缩过程中，减少了很多帧的数据，%20%20%20%20%20%20%20对观看者而言，也没有影响。当然mp3音乐文件也是有损压缩。%20%20%20%20%20%20%20b)无损压缩:%20%20%20%20%20%20%20如普通文件的压缩，为了保证信息的正确传递，%20%20%20%20%20%20不希望文件经过压缩或解压后，出现问题。%20%20%202.%20linux下常用的压缩命令%20%20%20小节:	%20%20单个文件的压缩(解压)使用gzip%20和bzip2%20%20%20%20多个文件和目录使用tar%20%20%20%20%20%20%20%20%20gzip的常用选项%20%20%20%20-l(list)"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?列出压缩文件的内容%20%20%20%20-k(keep)"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?在压缩或解压时，保留输入文件。%20%20%20%20%20-d(decompress)"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?将压缩文件进行解压缩%20%20%201.%20查看%20%20%20%20	gzip%20%20-l%20压缩文件名%20%20	比如：gzip%20-l%20pwd.1.gz%20%20%20%202.%20解压%20%20%20%20	gzip%20-kd%20%20压缩文件名%20%20%20	比如：gzip%20-kd%20pwd.1.gz%20%20%20	该压缩文件是以.gz结尾的单个文件%20%20%20%203.%20压缩%20%20%20	gzip%20-k%20%20源文件名%20%20%20%20	比如：gzip%20-k%20mypwd.1%20%20%20%20%20%20%20%20得到了一个.gz结尾的压缩文件%20%20%20%20%20%20%20%20注意:%20%20%201）如果gzip不加任何选项，此时为压缩，压缩完该文件会生成后缀为.gz的压缩文件，%20%20并删除原有的文件，所以说，推荐使用gzip%20-k%20%20来压缩源文件。%20%20%202）相同的文件内容，如果文件名不同，压缩后的大小也不同。%20%20%203）gzip只能压缩单个文件，不能压缩目录。%20%20%20	提示:%20%20%20man%20pwd会解压&#x2F;usr&#x2F;share&#x2F;man&#x2F;man1&#x2F;pwd.1.gz这个文件，%20%20%20%20然后读取该文件中固定的格式的一些信息，然后显示到终端中。%20%20%20bzip2来压缩单个文件%20%20%20bzip2的常用选项%20%20-k(keep)"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?在压缩或解压时，保留输入文件。%20%20%20-d(decompress)"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?将压缩文件进行解压缩%20%20%20%20%201.%20压缩%20%20%20%20%20	bzip2"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?-k"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?源文件名%20%20%20	比如:bzip2%20-k%20mypwd.1%20%20%20%20	得到一个.bz2后缀的压缩文件%20%20%20%202.%20解压	bzip2"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?-kd"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名%20%20%20%20	bzip2%20-kd%20mypwd.1.bz2	%20%20%20%20注意:1）如果bzip2不加任何选项，此时为压缩，压缩完该文件会生成后缀为.bz2的压缩文件，%20%20并删除原有的文件，所以说，推荐使用bzip2%20-k%20%20来压缩源文件。%20%20%202）bzip2只能压缩单个文件，不能压缩目录。%20%20%20单个文件的压缩使用gzip或bzip2，%20%20%20压缩有两个参数:%201）压缩时间%20%202）压缩比%20%20%20%20一般情况下，小文件使用gzip来压缩，大文件使用bzip2来压缩。%20%20%20%20%20%20mypwd.1源大小是1477字节，"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?gzip压缩后mypwd.1.gz是877字节，"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?bzip2压缩后mypwd.1.bz2是939字节。%20%20%20%20myls.1源文件大小7664字节，"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?gzip压缩后myls.1.gz是3144字节，"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?bzip2压缩后myls.1.bz2是3070字节。	%20%20	&#x2F;&#x2F;============================================================%20%20%20%20gzip、bizp2只能对一个文件进行压缩，而不能对多个文件和目录进行压缩。%20%20%20%20所以需要tar来对多个目录、文件进行打包和压缩。%20%20%20%20%20tar常用选项%20%20%20%20-c(create)%20表示创建用来生成文件包%20%20%20%20-x：表示提取，从文件包中提取文件%20%20%20%20-t可以查看压缩的文件。%20%20%20-z使用gzip方式进行处理，它与”c“结合就表示压缩，与”x“结合就表示解压缩。%20%20%20%20-j使用bzip2方式进行处理，它与”c“结合就表示压缩，与”x“结合就表示解压缩。%20%20%20%20%20-v(verbose)详细报告tar处理的信息%20%20%20%20%20%20-f(file)表示文件，后面接着一个文件名。%20%20%20%20%20-C"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?&lt;指定目录&gt;"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?解压到指定目录%20%20%20%201.%20tar打包、gzip压缩%20%20%201）压缩%20%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?-czvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?目录名%20%20%20%20	如：tar%20czvf%20dira.tar.gz%20dira%20%20%20%20%20%20注意：%20%20%20%20tar%20%20-czvf与tar%20%20czvf是一样的效果，所以说，后面统一取消-。%20%20%20%202）查看%20%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?tvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名%20%20%20%20	如：tar%20tvf%20dira.tar.gz%20%20%20%203）解压%20%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?xzvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?xzvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?-C"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?指定目录%20%20%20%20	如：tar%20xzvf%20dira.tar.gz%20%20%20%20解压到当前目录%20%20%20%20	如：tar%20xzvf%20dira.tar.gz%20-C%20&#x2F;home&#x2F;book%20%20解压到&#x2F;home&#x2F;book%20%20%20%202.%20tar打包、bzip2压缩%20%20%20%201）压缩%20%20%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?cjvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?目录名%20%20%20%20	如：tar%20cjvf%20dira.tar.bz2%20dira%20%20%20%202）查看%20%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?tvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名%20%20%20%20%20%20	如：tar%20tvf%20dira.tar.bz2%20%20%20%20%20%203）解压%20%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?xjvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名%20%20%20%20	tar"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?xjvf"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?压缩文件名"/>~~~~~~<img src="https://latex.codecogs.com/gif.latex?-C"/>~~~~~~$指定目录    
	如：tar xjvf dira.tar.bz2   解压到当前目录     
	如：tar xjvf dira.tar.bz2 -C /home/book     解压到/home/book      
  
  