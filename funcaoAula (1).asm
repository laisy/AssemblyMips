.text
	addi $a0, $zero, 80
	addi $a1, $zero, 12
	jal max
	
	add $a0, $v0, $zero
	addi $v0, $zero, 1
	syscall
	j exit
	# a0 > a1 goto a0Maior 
max:	bgt $a0, $a1, a0Maior
	add $v0, $a1, $zero
	j end
a0Maior:add $v0, $a0, $zero
end:	jr $ra

exit:	nop
	