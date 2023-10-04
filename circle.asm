.text
	beqz $a0, init_end
	lw $a0, 0($a1)
	jal atoi
init_end:
	subi $sp, $sp, 4
	sw $v0, 0($sp)
	jal main
	li $v0, 10
	syscall
l:
	subi $sp, $sp, 4
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	addi $fp, $sp, 4
	addi $sp, $sp, 0
	b __l_0
__l_1:
	lw $t0, 4($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, 4($fp)
__l_0:
	lw $t0, 4($fp)
	li $t1, 150
	slt $t0, $t0, $t1
	bnez $t0, __l_1
	li $t0, 0
	addi $sp, $fp, -4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	li $t0, 0
	addi $sp, $fp, -4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
affiche_ligne:
	subi $sp, $sp, 4
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	addi $fp, $sp, 4
	addi $sp, $sp, -4
	li $t0, 0
	sw $t0, -8($fp)
	b __affiche_ligne_0
__affiche_ligne_1:
	lw $t0, 4($fp)
	lw $t1, 4($fp)
	mul $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	mul $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, 8($fp)
	lw $t2, 8($fp)
	mul $t1, $t1, $t2
	slt $t0, $t0, $t1
	bnez $t0, __affiche_ligne_2
	li $t0, 35
	move $a0, $t0
	li $v0, 11
	syscall
	b __affiche_ligne_3
__affiche_ligne_2:
	li $t0, 46
	move $a0, $t0
	li $v0, 11
	syscall
__affiche_ligne_3:
	la $t0, espace
	lw $t0, 0($t0)
	move $a0, $t0
	li $v0, 11
	syscall
	lw $t0, -8($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -8($fp)
__affiche_ligne_0:
	lw $t0, 8($fp)
	li $t1, 1
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	slt $t0, $t0, $t1
	bnez $t0, __affiche_ligne_1
	li $t0, 0
	addi $sp, $fp, -4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
main:
	subi $sp, $sp, 4
	sw $fp, 0($sp)
	subi $sp, $sp, 4
	sw $ra, 0($sp)
	addi $fp, $sp, 4
	addi $sp, $sp, -8
	li $t0, 2
	sw $t0, -8($fp)
	lw $t0, -8($fp)
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	lw $t1, -8($fp)
	lw $t2, -8($fp)
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	lw $t2, -8($fp)
	lw $t3, -8($fp)
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	lw $t3, -8($fp)
	lw $t4, -8($fp)
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	lw $t4, -8($fp)
	lw $t5, -8($fp)
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	lw $t5, -8($fp)
	lw $t6, -8($fp)
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	lw $t6, -8($fp)
	lw $t7, -8($fp)
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	sw $t0, -8($fp)
	li $t0, 1
	li $t1, 1
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	li $t1, 1
	li $t2, 1
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	li $t2, 1
	li $t3, 1
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	li $t3, 1
	li $t4, 1
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	li $t4, 1
	li $t5, 1
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	li $t5, 1
	li $t6, 1
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t6, $t6, $t7
	subi $sp, $sp, 4
	sw $t6, 0($sp)
	li $t6, 1
	li $t7, 1
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t7, $t7, $t6
	lw $t6, 0($sp)
	addi $sp, $sp, 4
	add $t6, $t6, $t7
	add $t5, $t5, $t6
	add $t4, $t4, $t5
	add $t3, $t3, $t4
	add $t2, $t2, $t3
	add $t1, $t1, $t2
	add $t0, $t0, $t1
	sw $t0, -8($fp)
	li $t0, 0
	subi $sp, $sp, 4
	sw $t0, 0($sp)
	jal l
	addi $sp, $sp, 4
	lw $t0, -8($fp)
	lw $t1, -8($fp)
	add $t0, $t0, $t1
	sw $t0, -8($fp)
	li $t0, 0
	sw $t0, -12($fp)
	li $t0, 10
	la $t1, retour
	sw $t0, 0($t1)
	li $t0, 32
	la $t1, espace
	sw $t0, 0($t1)
	b __main_0
__main_1:
	lw $t0, 4($fp)
	subi $sp, $sp, 4
	sw $t0, 0($sp)
	lw $t0, -12($fp)
	subi $sp, $sp, 4
	sw $t0, 0($sp)
	jal affiche_ligne
	addi $sp, $sp, 8
	la $t0, retour
	lw $t0, 0($t0)
	move $a0, $t0
	li $v0, 11
	syscall
	lw $t0, -12($fp)
	li $t1, 1
	add $t0, $t0, $t1
	sw $t0, -12($fp)
__main_0:
	lw $t0, 4($fp)
	li $t1, 1
	add $t0, $t0, $t1
	lw $t1, -12($fp)
	slt $t0, $t0, $t1
	bnez $t0, __main_1
	li $t0, 0
	addi $sp, $fp, -4
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	lw $fp, 0($sp)
	addi $sp, $sp, 4
	jr $ra
#built-in atoi
atoi:
	li $v0, 0
atoi_loop:
	lbu $t0, 0($a0)
	beqz $t0, atoi_end
	addi $t0, $t0, -48
	bltz $t0, atoi_error
	bge $t0, 10, atoi_error
	mul $v0, $v0, 10
	add $v0, $v0, $t0
	addi $a0, $a0, 1
	b atoi_loop
atoi_error:
	li $v0, 10
	syscall
atoi_end:
	jr $ra
.data
retour:
	.word 0
espace:
	.word 0
