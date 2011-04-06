   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4423:
   # movl    %ebx, %ebx/*t12275*/
   # movl    %esi, %esi/*t12276*/
   # movl    %edi, %edi/*t12277*/
   movl    $0, %eax/*t12284*/
   movl    %eax/*t12284*/, (%esp)
   call    mj_new_object
   movl    %eax, %ecx/*t12283*/
   movl    $10, %eax/*t12285*/
   movl    %eax/*t12285*/, 4(%esp)
   movl    %ecx/*t12283*/, (%esp)
   call    Fac_ComputeFac
   # movl    %eax, %eax/*t12282*/
   movl    %eax/*t12282*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12275*/, %ebx
   # movl    %esi/*t12276*/, %esi
   # movl    %edi/*t12277*/, %edi
DONE_4424:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl Fac_ComputeFac
     .type Fac_ComputeFac, @function
Fac_ComputeFac:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4425:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t12280*/
   # movl    %edi, %edi/*t12281*/
   movl    12(%ebp), %eax/*t12296*/
   movl    $1, %ebx/*t12297*/
   cmpl    %ebx/*t12297*/, %eax/*t12296*/
   jl      L_4420
L_4421:
   movl    12(%ebp), %ebx/*t12298*/
   # movl    %ebx/*t12298*/, %ebx/*t12287*/
   movl    12(%ebp), %eax/*t12300*/
   # movl    %eax/*t12300*/, %eax/*t12299*/
   decl    %eax/*t12299*/
   movl    %eax/*t12299*/, 4(%esp)
   movl    8(%ebp), %eax/*t12301*/
   movl    %eax/*t12301*/, (%esp)
   call    Fac_ComputeFac
   # movl    %eax, %eax/*t12286*/
   # movl    %ebx/*t12287*/, %ebx/*t12302*/
   imull   %eax/*t12286*/, %ebx/*t12302*/
   # movl    %ebx/*t12302*/, %ebx/*t12278*/
L_4422:
   movl    %ebx/*t12278*/, %eax
   movl    -4(%ebp), %ebx/*t12303*/
   # movl    %ebx/*t12303*/, %ebx
   # movl    %esi/*t12280*/, %esi
   # movl    %edi/*t12281*/, %edi
   jmp     DONE_4426
L_4420:
   movl    $1, %ebx/*t12304*/
   # movl    %ebx/*t12304*/, %ebx/*t12278*/
   jmp     L_4422
DONE_4426:
   #return sink
   leave
   ret
   .size Fac_ComputeFac, .-Fac_ComputeFac

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
