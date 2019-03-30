@int x;
@if(x<=3)
@x=x-1
@else x=x-2
.section .data
x:.word 4 
.section .text 
.globl _start
_start:
ldr r1,=x              @load the memory address of x in to r1
ldr r1, [r1]           @load the value x in to r1
cmp r1, #3             @compare the value with 3
bgt else               @branch with else if the value is greater than 3
sub r1,r1,#1
b next                  @ if less than or equal decrement the value
else: sub r1,r1,#2
next:
mov r7,#1
svc #0
.end
