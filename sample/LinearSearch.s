   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4442:
   # movl    %ebx, %ebx/*t12305*/
   # movl    %esi, %esi/*t12306*/
   # movl    %edi, %edi/*t12307*/
   movl    $8, %eax/*t12335*/
   movl    %eax/*t12335*/, (%esp)
   call    mj_new_object
   movl    %eax, %ecx/*t12334*/
   movl    $10, %eax/*t12336*/
   movl    %eax/*t12336*/, 4(%esp)
   movl    %ecx/*t12334*/, (%esp)
   call    LS_Start
   # movl    %eax, %eax/*t12333*/
   movl    %eax/*t12333*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12305*/, %ebx
   # movl    %esi/*t12306*/, %esi
   # movl    %edi/*t12307*/, %edi
DONE_4443:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl LS_Start
     .type LS_Start, @function
LS_Start:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4444:
   # movl    %ebx, %ebx/*t12310*/
   # movl    %esi, %esi/*t12311*/
   # movl    %edi, %edi/*t12312*/
   movl    12(%ebp), %eax/*t12341*/
   movl    %eax/*t12341*/, 4(%esp)
   movl    8(%ebp), %eax/*t12342*/
   movl    %eax/*t12342*/, (%esp)
   call    LS_Init
   # movl    %eax, %eax/*t12308*/
   movl    8(%ebp), %eax/*t12343*/
   movl    %eax/*t12343*/, (%esp)
   call    LS_Print
   # movl    %eax, %eax/*t12309*/
   movl    $9999, %eax/*t12344*/
   movl    %eax/*t12344*/, (%esp)
   call    mj_println
   movl    $8, %eax/*t12345*/
   movl    %eax/*t12345*/, 4(%esp)
   movl    8(%ebp), %eax/*t12346*/
   movl    %eax/*t12346*/, (%esp)
   call    LS_Search
   # movl    %eax, %eax/*t12337*/
   movl    %eax/*t12337*/, (%esp)
   call    mj_println
   movl    $12, %eax/*t12347*/
   movl    %eax/*t12347*/, 4(%esp)
   movl    8(%ebp), %eax/*t12348*/
   movl    %eax/*t12348*/, (%esp)
   call    LS_Search
   # movl    %eax, %eax/*t12338*/
   movl    %eax/*t12338*/, (%esp)
   call    mj_println
   movl    $17, %eax/*t12349*/
   movl    %eax/*t12349*/, 4(%esp)
   movl    8(%ebp), %eax/*t12350*/
   movl    %eax/*t12350*/, (%esp)
   call    LS_Search
   # movl    %eax, %eax/*t12339*/
   movl    %eax/*t12339*/, (%esp)
   call    mj_println
   movl    $50, %eax/*t12351*/
   movl    %eax/*t12351*/, 4(%esp)
   movl    8(%ebp), %eax/*t12352*/
   movl    %eax/*t12352*/, (%esp)
   call    LS_Search
   # movl    %eax, %eax/*t12340*/
   movl    %eax/*t12340*/, (%esp)
   call    mj_println
   movl    $55, %eax/*t12353*/
   # movl    %eax/*t12353*/, %eax
   # movl    %ebx/*t12310*/, %ebx
   # movl    %esi/*t12311*/, %esi
   # movl    %edi/*t12312*/, %edi
DONE_4445:
   #return sink
   leave
   ret
   .size LS_Start, .-LS_Start

.globl LS_Print
     .type LS_Print, @function
LS_Print:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4446:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t12315*/
   # movl    %edi, %edi/*t12316*/
   movl    $1, %ebx/*t12401*/
   # movl    %ebx/*t12401*/, %ebx/*t12313*/
L_4429:
   movl    8(%ebp), %eax/*t12403*/
   movl    4(%eax/*t12403*/), %eax/*t12402*/
   cmpl    %eax/*t12402*/, %ebx/*t12313*/
   jl      L_4428
L_4427:
   movl    $0, %ebx/*t12404*/
   movl    %ebx/*t12404*/, %eax
   movl    -4(%ebp), %ebx/*t12405*/
   # movl    %ebx/*t12405*/, %ebx
   # movl    %esi/*t12315*/, %esi
   # movl    %edi/*t12316*/, %edi
   jmp     DONE_4447
L_4428:
   movl    8(%ebp), %eax/*t12408*/
   movl    (%eax/*t12408*/), %eax/*t12407*/
   movl    (%eax/*t12407*/, %ebx/*t12313*/, 4), %eax/*t12406*/
   movl    %eax/*t12406*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12313*/, %ebx/*t12409*/
   incl    %ebx/*t12409*/
   # movl    %ebx/*t12409*/, %ebx/*t12313*/
   jmp     L_4429
DONE_4447:
   #return sink
   leave
   ret
   .size LS_Print, .-LS_Print

.globl LS_Search
     .type LS_Search, @function
LS_Search:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4448:
   movl    %ebx, -8(%ebp)
   movl    %esi, -4(%ebp)
   # movl    %edi, %edi/*t12325*/
   movl    $1, %ebx/*t12410*/
   movl    %ebx/*t12410*/, %eax/*t12317*/
   movl    $0, %ebx/*t12411*/
   # movl    %ebx/*t12411*/, %ebx/*t12318*/
   movl    $0, %ebx/*t12412*/
   movl    %ebx/*t12412*/, %esi/*t12319*/
L_4432:
   movl    8(%ebp), %ebx/*t12414*/
   movl    4(%ebx/*t12414*/), %ebx/*t12413*/
   cmpl    %ebx/*t12413*/, %eax/*t12317*/
   jl      L_4431
L_4430:
   movl    %esi/*t12319*/, %eax
   movl    -8(%ebp), %ebx/*t12415*/
   # movl    %ebx/*t12415*/, %ebx
   movl    -4(%ebp), %esi/*t12416*/
   # movl    %esi/*t12416*/, %esi
   # movl    %edi/*t12325*/, %edi
   jmp     DONE_4449
L_4431:
   movl    8(%ebp), %ebx/*t12419*/
   movl    (%ebx/*t12419*/), %ebx/*t12418*/
   movl    (%ebx/*t12418*/, %eax/*t12317*/, 4), %ebx/*t12417*/
   movl    %ebx/*t12417*/, %edx/*t12320*/
   movl    12(%ebp), %ebx/*t12421*/
   # movl    %ebx/*t12421*/, %ebx/*t12420*/
   incl    %ebx/*t12420*/
   movl    %ebx/*t12420*/, %ecx/*t12321*/
   movl    12(%ebp), %ebx/*t12422*/
   cmpl    %ebx/*t12422*/, %edx/*t12320*/
   jl      L_4433
L_4434:
   cmpl    %ecx/*t12321*/, %edx/*t12320*/
   jl      L_4437
L_4436:
   movl    $0, %ebx/*t12423*/
   # movl    %ebx/*t12423*/, %ebx/*t12322*/
L_4438:
L_4435:
   movl    %eax/*t12317*/, %ebx/*t12424*/
   incl    %ebx/*t12424*/
   movl    %ebx/*t12424*/, %eax/*t12317*/
   jmp     L_4432
L_4433:
   movl    $0, %ebx/*t12425*/
   # movl    %ebx/*t12425*/, %ebx/*t12322*/
   jmp     L_4435
L_4437:
   movl    $1, %ebx/*t12426*/
   # movl    %ebx/*t12426*/, %ebx/*t12318*/
   movl    $1, %ebx/*t12427*/
   movl    %ebx/*t12427*/, %esi/*t12319*/
   movl    8(%ebp), %ebx/*t12429*/
   movl    4(%ebx/*t12429*/), %ebx/*t12428*/
   movl    %ebx/*t12428*/, %eax/*t12317*/
   jmp     L_4438
DONE_4449:
   #return sink
   leave
   ret
   .size LS_Search, .-LS_Search

.globl LS_Init
     .type LS_Init, @function
LS_Init:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4450:
   movl    %ebx, -8(%ebp)
   movl    %esi, -4(%ebp)
   # movl    %edi, %edi/*t12332*/
   movl    8(%ebp), %esi/*t12430*/
   movl    12(%ebp), %ebx/*t12431*/
   movl    %ebx/*t12431*/, 4(%esi/*t12430*/)
   movl    8(%ebp), %ebx/*t12432*/
   movl    %ebx/*t12432*/, %esi/*t12381*/
   movl    12(%ebp), %ebx/*t12433*/
   movl    %ebx/*t12433*/, (%esp)
   call    mj_new_array
   movl    %eax, %ebx/*t12380*/
   movl    %ebx/*t12380*/, (%esi/*t12381*/)
   movl    $1, %ebx/*t12434*/
   movl    %ebx/*t12434*/, %ecx/*t12326*/
   movl    8(%ebp), %ebx/*t12437*/
   movl    4(%ebx/*t12437*/), %ebx/*t12436*/
   # movl    %ebx/*t12436*/, %ebx/*t12435*/
   incl    %ebx/*t12435*/
   movl    %ebx/*t12435*/, %eax/*t12327*/
L_4441:
   movl    8(%ebp), %ebx/*t12439*/
   movl    4(%ebx/*t12439*/), %ebx/*t12438*/
   cmpl    %ebx/*t12438*/, %ecx/*t12326*/
   jl      L_4440
L_4439:
   movl    $0, %ebx/*t12440*/
   movl    %ebx/*t12440*/, %eax
   movl    -8(%ebp), %ebx/*t12441*/
   # movl    %ebx/*t12441*/, %ebx
   movl    -4(%ebp), %esi/*t12442*/
   # movl    %esi/*t12442*/, %esi
   # movl    %edi/*t12332*/, %edi
   jmp     DONE_4451
L_4440:
   imull   $2, %ecx/*t12326*/, %ebx/*t12443*/
   # movl    %ebx/*t12443*/, %ebx/*t12328*/
   movl    %eax/*t12327*/, %edx/*t12444*/
   movl    $3, %esi/*t12445*/
   subl    %esi/*t12445*/, %edx/*t12444*/
   # movl    %edx/*t12444*/, %edx/*t12329*/
   movl    8(%ebp), %esi/*t12447*/
   movl    (%esi/*t12447*/), %esi/*t12446*/
   # movl    %ebx/*t12328*/, %ebx/*t12448*/
   addl    %edx/*t12329*/, %ebx/*t12448*/
   movl    %ebx/*t12448*/, (%esi/*t12446*/, %ecx/*t12326*/, 4)
   movl    %ecx/*t12326*/, %ebx/*t12449*/
   incl    %ebx/*t12449*/
   movl    %ebx/*t12449*/, %ecx/*t12326*/
   movl    %eax/*t12327*/, %ebx/*t12450*/
   decl    %ebx/*t12450*/
   movl    %ebx/*t12450*/, %eax/*t12327*/
   jmp     L_4441
DONE_4451:
   #return sink
   leave
   ret
   .size LS_Init, .-LS_Init

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
