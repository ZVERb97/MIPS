lui $a0, 0x1001
ori $a0, $a0, 0x0000

lui $t0, 0x0000
ori $t0, $t0, 0x00FF

lui $t3, 0x00FF
ori $t3, $t3, 0xFF00

sw $t0, ($a0)
ori $t1, $t1, 15
ori $t2, $t2, 0

loop:
addiu $a0,$a0, 8
la $a1,($a0)
addiu $a1, $a1, -4
sw $t0, ($a0)
sw $t3, ($a1)
addiu $t1, $t1, -1
beqz $t1, changeOffset
j loop

changeOffset:
beqz $t2, addFour
j subFour

addFour:
addiu $a0, $a0, 4
sw $t0, ($a0)
ori $t1, $t1, 16
addiu $t2, $t2, 1
j loop

subFour:
addiu $a0, $a0, -4
sw $t0, ($a0)
ori $t1, $t1, 16
addiu $t2, $t2, -1
j loop


 
