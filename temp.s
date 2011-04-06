   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $4, %esp
L_1:
   # movl    %ebx, %ebx/*t0*/
   # movl    %esi, %esi/*t1*/
   # movl    %edi, %edi/*t2*/
   movl    $8, %eax/*t8*/
   movl    %eax/*t8*/, (%esp)
   call    mj_new_object
   # movl    %eax, %eax/*t7*/
   movl    %eax/*t7*/, (%esp)
   call    Point_doit
   # movl    %eax, %eax/*t6*/
   movl    %eax/*t6*/, (%esp)
   call    mj_println
   # movl    %ebx/*t0*/, %ebx
   # movl    %esi/*t1*/, %esi
   # movl    %edi/*t2*/, %edi
DONE_2:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl Point_doit
     .type Point_doit, @function
Point_doit:
   pushl  %ebp
   movl   %esp, %ebp
L_3:
   # movl    %ebx, %ebx/*t3*/
   # movl    %esi, %esi/*t4*/
   # movl    %edi, %edi/*t5*/
   movl    8(%ebp), %ecx/*t9*/
   movl    $10, %eax/*t10*/
   movl    %eax/*t10*/, (%ecx/*t9*/)
   movl    8(%ebp), %ecx/*t11*/
   movl    $20, %eax/*t12*/
   movl    %eax/*t12*/, 4(%ecx/*t11*/)
   movl    8(%ebp), %eax/*t15*/
   movl    (%eax/*t15*/), %eax/*t14*/
   movl    %eax/*t14*/, %ecx/*t13*/
   movl    8(%ebp), %eax/*t18*/
   movl    4(%eax/*t18*/), %eax/*t17*/
   imull   $2, %eax/*t17*/, %eax/*t16*/
   addl    %eax/*t16*/, %ecx/*t13*/
   movl    %ecx/*t13*/, %eax
   # movl    %ebx/*t3*/, %ebx
   # movl    %esi/*t4*/, %esi
   # movl    %edi/*t5*/, %edi
DONE_4:
   #return sink
   leave
   ret
   .size Point_doit, .-Point_doit

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
