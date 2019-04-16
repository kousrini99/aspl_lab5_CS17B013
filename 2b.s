main:
	li	 $s0,-7
	li	 $s1,-3
	li	 $s2,0
	li	 $s3,1
	blt	 $s0,$zero,if
	blt	 $s1,$zero,if1

if:
	mul  $s0,$s0,-1
	mul  $s3,$s3,-1
	blt	 $s1,$zero,if1
	j 	 loop

if1:
	mul  $s1,$s1,-1
	mul  $s3,$s3,-1

loop:
	blt	 $s0,$s1,exit
	sub	 $s0,$s0,$s1
	addi $s2,$s2,1
	j	 loop

exit:
	mul  $s2,$s2,$s3
	jr	 $31	