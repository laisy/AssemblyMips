.text
	addi $sp, $sp, -1
	addi $t0, $zero, 5
	sb  $t0, 0($sp)
	
	addi $a0, $zero, 1
	addi $a1, $zero, 2
	addi $a2, $zero, 3
	addi $a3, $zero, 4
	jal max
	
	add $a0, $v0, $zero
	addi $v0, $zero, 1
	syscall
	j exit
	
	# a0>a1 goto a0Maior	
max:	bgt $a0, $a1, a0Maior
	add $v0, $a1, $zero
	
max2:	bgt $v0, $a2, a0Maior
	add $v0, $a2, $zero
	
max3:	bgt $v0, $a3, a0Maior
	add $v0, $a3, $zero
	
max4:	bgt $v0, $t0, a0Maior
	add $v0, $t0, $zero
	
	j end
	
a0Maior: add $v0, $a0, $zero
end:	jr $ra

	addi $sp, $sp, 1
exit: nop 
