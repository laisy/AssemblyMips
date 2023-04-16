.text
	addi $a0, $zero, 5
	
	jal fat
	
	add $a0, $v0, $zero
	addi $v0, $zero, 1
	syscall
	
	j exit
	
fat:	addi $v0, $zero, 1
	#if a0 > 0 goto rec
	bgt $a0, $v0, rec
	jr $ra
	
	#alocar
rec: 	addi $sp, $sp, -8
	sw $a0, 0($sp)
	sw $ra, 4($sp)

	#recursão
	addi $a0, $a0, -1
	jal fat
	
	#desalocar
	lw $a0, 0($sp)
	lw $ra, 4($sp)
	addi $sp, $sp, 8

	mul $v0, $a0, $v0
	jr $ra
	
exit:	nop