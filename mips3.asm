.data

msg1: .asciiz "\nDiga um numero: "
msg2: .asciiz "\nDiga outro numero: "
msg: .asciiz "\n Calculo de média"
num2: .float 2.0
.text
main:
#escreve a média
li $v0, 4
la $a0, msg
syscall

#Pede primeira nota
li $v0, 4
la $a0, msg1
syscall

#leitura do numero inteiro
li $v0, 6
syscall
mov.s $f1, $f0 #guardo a leitura de ponto flutuante em f1

#Pede segunda nota
li $v0, 4
la $a0, msg2
syscall

#leitura do numero inteiro
li $v0, 6
syscall
mov.s $f2, $f0 #guardo a leitura de ponto flutuante em f1

#quantitativo de notas / o numero 2 é f3
l.s $f3, num2

#somar e dividir por 2
add.s $f4, $f1, $f2
#f4 dividido por 2 e guardado em f10
div.s $f10, $f4, $f3

#Exibir a frase de média
li $v0, 4
la $a0, msg
syscall

#escrita do valor da média
li $v0, 2
mov.s $f12, $f10
syscall

