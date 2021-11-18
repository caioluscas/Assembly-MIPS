.data
msg1: .asciiz "\nDiga seu o valor de seu salario:: "
msg2: .asciiz "\nO valor a ser descontado é de R$ "
msg3: .asciiz "\nvalor do salário após a aplicação do desconto R$"
num1:.float 1045.0
num2:.float 2089.60
num3:.float 3134.40
num4:.float 0.0750
num5:.float 0.09
num6:.float 0.12
num7:.float 0.14
.text
main:

#imprime a diga seu salario
	li $v0, 4
	la $a0, msg1
	syscall
#recebe o valor de salario
	li $v0, 6
	syscall
	mov.s $f1, $f0

#menor ou igual
	l.s $f2, num4 #0.0750
	l.s $f3,num1 #1045
	mul.s $f4,$f1,$f2 #desconto
	sub.s $f5,$f1,$f4 #nov sal
	
	#menor ou igual
	c.lt.s   $f1, $f2
	bc1t se
	bc1f senao
	
se:	#<1045
#Mostrar valor do desconto ao usuário....
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	mov.s $f12, $f4
	syscall
	
#Mostrar valor do desconto aplicado....
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	j fimse
senao: #<2089.60
	l.s $f6, num2
	c.lt.s   $f1, $f6
	bc1t se2
	bc1f senao2
	
se2:
	l.s $f7, num5 #0.09
	mul.s $f4,$f1,$f7 #desconto
	sub.s $f5,$f1,$f4 #nov sal
	
	#Mostrar valor do desconto ao usuário....
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	mov.s $f12, $f4
	syscall
	
#Mostrar valor do desconto aplicado....
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	j fimse
senao2:
	l.s $f8, num3
	c.lt.s   $f1, $f8 #<3134.40
	bc1t se3
	bc1f senao3
	
se3:
	l.s $f9, num6 #0.12
	mul.s $f4,$f1,$f9 #desconto
	sub.s $f5,$f1,$f4 #nov sal
	
#Mostrar valor do desconto ao usuário....
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	mov.s $f12, $f4
	syscall
	
#Mostrar valor do desconto aplicado....
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	j fimse

senao3: 
	l.s $f10, num7 #0.14
	mul.s $f4,$f1,$f10 #desconto
	sub.s $f5,$f1,$f4 #nov sal
	
	#Mostrar valor do desconto ao usuário....
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 2
	mov.s $f12, $f4
	syscall
	
#Mostrar valor do desconto aplicado....
	li $v0, 4
	la $a0, msg3
	syscall
	
	li $v0, 2
	mov.s $f12, $f5
	syscall
	j fimse
	fimse:
	

	
	

	
		
			
				
					
						
							
								

	
