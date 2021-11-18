.data

msg1: .asciiz "\nDiga o numero do quarto desejado: "
msg2: .asciiz "\nVá para a direita "
msg3: .asciiz "\nVá para a esquerda"
num2: .float 2.0
.text
main:
#escreve quarto desejado
li $v0, 4
la $a0, msg1
syscall	
#le inteiro
li $v0, 5
syscall

#soma o numero digitado com 0
add $t1,$v0,$zero
#numero divisivel por 2
rem $t2,$t1,2

#se $t2 for igual a 0 entao ele é par
beq $t2,0,se
j senao

#escreve direita na tela
se:
li $v0, 4
la $a0, msg2
syscall	
j fimse

senao:
li $v0, 4
la $a0, msg3
syscall	
fimse:






