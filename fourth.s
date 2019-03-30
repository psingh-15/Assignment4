@fourth program
@ This program compute the following if statement construct:
@ int x;
@ int y;
@if(x==0)
@y = 1;
 .section .data
x:.word 0 @ 32 bit signed integer
y:.word 0 @ 32 bit signed integer
 .section .text
.globl _start
_start:
ldr r1, =x          @load the memory address of in to r1
ldr r1,[r1]         @ load the value x in to r1
cmp r1,#0
bne endofif          @branch on not equal (z==0) 
thenpart: mov r2,#1
          ldr r3,=y    @load the memory address of y in to r3
          str r2,[r3]  @load r2 register value in to y memory address
endofif:
          mov r7,#1   @program Termination: exit syscall
         svc #0       @program Termination: wake kernel
         .end


