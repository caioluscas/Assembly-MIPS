.data
msg1: .asciiz "\nDiga sua altura: "
msg2: .asciiz "\nDiga sua massa: "
msg3: .asciiz "\n Magreza grave"
msg4: .asciiz "\n Magreza moderada"
msg5: .asciiz "\n Magreza leve"
msg6: .asciiz "\n Saudavel"
msg7: .asciiz "\n Sobrepeso"
msg8: .asciiz "\n Obesidade de Grau I"
msg9: .asciiz "\n Obesidade de Grau II"
msg10: .asciiz "\n Obesidade de Grau III"
num1:.float 16
num2:.float 17
num3:.float 18.5
num4:.float 25
num5:.float 30
num6:.float 35
num7:.float 40

.text
#imprime a altura
	li $v0, 4
	la $a0, msg1
	syscall
#recebe o valor de altura
	li $v0, 6
	syscall
	mov.s $f1, $f0


#imprime a massa
	li $v0, 4
	la $a0, msg2
	syscall
#recebe o valor da massa
	li $v0, 6
	syscall
	mov.s $f2, $f0

#inicio no imc altura*altura
	mul.s $f3,$f1,$f1
#divisao imc
	div.s $f4,$f2,$f3


	l.s $f5, num1
#menor ou igual
	c.lt.s   $f4, $f5
	bc1t se
	bc1f senao

se:
#imprime mensagem magreza grave
	li $v0, 4
	la $a0, msg3
	syscall
	j fimse

senao:
	l.s $f6, num2
	c.lt.s   $f4, $f6
	bc1t se2
	bc1f senao2

se2:
#imprime mensagem Magreza moderada
	li $v0, 4
	la $a0, msg4
	syscall
	j fimse

senao2:
	l.s $f7, num3
	c.lt.s   $f4, $f7
	bc1t se3
	bc1f senao3

se3:
#imprime mensagem Magreza leve
	li $v0, 4
	la $a0, msg5
	syscall
	j fimse
	
	
senao3:
	l.s $f8, num4
	c.lt.s   $f4, $f8
	bc1t se4
	bc1f senao4
	
se4:
#imprime mensagem saudavel
	li $v0, 4
	la $a0, msg6
	syscall
	j fimse
	
senao4:
	l.s $f9, num5
	c.lt.s   $f4, $f9
	bc1t se5
	bc1f senao5
	
se5:
#imprime mensagem sobrepeso
	li $v0, 4
	la $a0, msg7
	syscall
	j fimse
	
senao5:
	l.s $f10, num6
	c.lt.s   $f4, $f10
	bc1t se6
	bc1f senao6
	
se6:
#mensagem Obesidade grau I
	li $v0, 4
	la $a0, msg8
	syscall
	j fimse
	
senao6:
	l.s $f11, num7
	c.lt.s   $f4, $f11
	bc1t se7
	bc1f senao7
	
se7:
#mensagem Obesidade de Grau II
	li $v0, 4
	la $a0, msg9
	syscall
	j fimse
	
senao7:
	li $v0, 4
	la $a0, msg10
	syscall
	j fimse
	fimse:
	
	
