begin
addi $s0, 1
addi $s1, 4
comp $s2, $s1
lw $t0, 0($zero)
addi $t0, 7
sw $t0, 0($s0)
lw $t0, 0($zero)
addi $t0, 15
sw $t0, 1($s0)
lw $t0, 0($zero)
addi $t0, 3
sw $t0, 2($s0)
lw $t0, 0($zero) 
add $t0, $s0 
lw $t1, 0($zero)	
add $t1, $t0 
add $t1, $s2
bns 36
addi $t0, 1
lw $t2, 0($zero) 
addi $t2, 1
add $t2, $s0
lw $t3, 0($zero)							
add $t3, $t2
add $t3, $s2
bns 15
addi $t2, 1     
lw $t4, -2($t2)			
lw $t5, -1($t2)
comp $t6, $t4
add $t6, $t5
bns 23
sw $t4, -1($t2)
sw $t5, -2($t2)
b 23
lw $v0, 0($s0)
lw $v0, 1($s0)
lw $v0, 2($s0)
end