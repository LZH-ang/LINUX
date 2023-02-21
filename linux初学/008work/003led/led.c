
void delay(volatile int d)
{
	while(d--);
}

int main(int which)
{
	unsigned int *pGPFCON = (unsigned int *)0x56000050;
	unsigned int *pGPFDAT = (unsigned int *)0x56000054;

	if(which == 4)
	/* ����GPF4Ϊ������� */
	*pGPFCON = 0x100;
	else if(which == 6)
	/* ����GPF6Ϊ������� */
	*pGPFCON = 0x1000;
	
	/* ����GPF4/6���0 */
	*pGPFDAT = 0;

	return 0;
}

