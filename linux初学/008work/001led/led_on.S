
/*
 * 点亮LED1: gpf6
 */

.text
.global _start

_start:

/* 配置GPF6为输出引脚
 * 把0x1000写到地址0x56000050
 */
	ldr r1, =0x56000050
	ldr r0, =0x1000	/* mov r0, #0x1000*/
	str r0, [r1]

/* 设置GPF4输出高电平 
 * 把0写到地址0x56000054
 */
	ldr r1, =0x56000054
	ldr r0, =0	/* mov r0, #0 */
	str r0, [r1]

	/* 死循环 */
halt:
	b halt
		
