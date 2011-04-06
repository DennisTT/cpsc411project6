   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4410:
   # movl    %ebx, %ebx/*t12086*/
   # movl    %esi, %esi/*t12087*/
   # movl    %edi, %edi/*t12088*/
   movl    $8, %eax/*t12114*/
   movl    %eax/*t12114*/, (%esp)
   call    mj_new_object
   movl    %eax, %ecx/*t12113*/
   movl    $10, %eax/*t12115*/
   movl    %eax/*t12115*/, 4(%esp)
   movl    %ecx/*t12113*/, (%esp)
   call    BBS_Start
   # movl    %eax, %eax/*t12112*/
   movl    %eax/*t12112*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12086*/, %ebx
   # movl    %esi/*t12087*/, %esi
   # movl    %edi/*t12088*/, %edi
DONE_4411:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl BBS_Start
     .type BBS_Start, @function
BBS_Start:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4412:
   # movl    %ebx, %ebx/*t12090*/
   # movl    %esi, %esi/*t12091*/
   # movl    %edi, %edi/*t12092*/
   movl    12(%ebp), %eax/*t12116*/
   movl    %eax/*t12116*/, 4(%esp)
   movl    8(%ebp), %eax/*t12117*/
   movl    %eax/*t12117*/, (%esp)
   call    BBS_Init
   # movl    %eax, %eax/*t12089*/
   movl    8(%ebp), %eax/*t12118*/
   movl    %eax/*t12118*/, (%esp)
   call    BBS_Print
   # movl    %eax, %eax/*t12089*/
   movl    $99999, %eax/*t12119*/
   movl    %eax/*t12119*/, (%esp)
   call    mj_println
   movl    8(%ebp), %eax/*t12120*/
   movl    %eax/*t12120*/, (%esp)
   call    BBS_Sort
   # movl    %eax, %eax/*t12089*/
   movl    8(%ebp), %eax/*t12121*/
   movl    %eax/*t12121*/, (%esp)
   call    BBS_Print
   # movl    %eax, %eax/*t12089*/
   movl    $0, %eax/*t12122*/
   # movl    %eax/*t12122*/, %eax
   # movl    %ebx/*t12090*/, %ebx
   # movl    %esi/*t12091*/, %esi
   # movl    %edi/*t12092*/, %edi
DONE_4413:
   #return sink
   leave
   ret
   .size BBS_Start, .-BBS_Start

.globl BBS_Sort
     .type BBS_Sort, @function
BBS_Sort:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $16, %esp
L_4414:
   movl    %ebx, -16(%ebp)
   movl    %esi, -12(%ebp)
   movl    %edi, -8(%ebp)
   movl    8(%ebp), %ebx/*t12198*/
   movl    4(%ebx/*t12198*/), %ebx/*t12197*/
   # movl    %ebx/*t12197*/, %ebx/*t12196*/
   decl    %ebx/*t12196*/
   movl    %ebx/*t12196*/, -4(%ebp)
   movl    $-1, %ebx/*t12199*/
   movl    %ebx/*t12199*/, %eax/*t12095*/
L_4400:
   movl    -4(%ebp), %ebx/*t12200*/
   cmpl    %ebx/*t12200*/, %eax/*t12095*/
   jl      L_4399
L_4398:
   movl    $0, %ebx/*t12201*/
   movl    %ebx/*t12201*/, %eax
   movl    -16(%ebp), %ebx/*t12202*/
   # movl    %ebx/*t12202*/, %ebx
   movl    -12(%ebp), %esi/*t12203*/
   # movl    %esi/*t12203*/, %esi
   movl    -8(%ebp), %edi/*t12204*/
   # movl    %edi/*t12204*/, %edi
   jmp     DONE_4415
L_4399:
   movl    $1, %ebx/*t12205*/
   movl    %ebx/*t12205*/, %edi/*t12100*/
L_4403:
   movl    -4(%ebp), %ebx/*t12207*/
   # movl    %ebx/*t12207*/, %ebx/*t12206*/
   incl    %ebx/*t12206*/
   cmpl    %ebx/*t12206*/, %edi/*t12100*/
   jl      L_4402
L_4401:
   movl    -4(%ebp), %ebx/*t12209*/
   # movl    %ebx/*t12209*/, %ebx/*t12208*/
   decl    %ebx/*t12208*/
   movl    %ebx/*t12208*/, -4(%ebp)
   jmp     L_4400
L_4402:
   movl    %edi/*t12100*/, %ebx/*t12210*/
   decl    %ebx/*t12210*/
   movl    %ebx/*t12210*/, %esi/*t12099*/
   movl    8(%ebp), %ebx/*t12213*/
   movl    (%ebx/*t12213*/), %ebx/*t12212*/
   movl    (%ebx/*t12212*/, %esi/*t12099*/, 4), %ebx/*t12211*/
   movl    %ebx/*t12211*/, %esi/*t12096*/
   movl    8(%ebp), %ebx/*t12216*/
   movl    (%ebx/*t12216*/), %ebx/*t12215*/
   movl    (%ebx/*t12215*/, %edi/*t12100*/, 4), %ebx/*t12214*/
   # movl    %ebx/*t12214*/, %ebx/*t12097*/
   cmpl    %esi/*t12096*/, %ebx/*t12097*/
   jl      L_4404
L_4405:
   movl    $0, %ebx/*t12217*/
   # movl    %ebx/*t12217*/, %ebx/*t12093*/
L_4406:
   movl    %edi/*t12100*/, %ebx/*t12218*/
   incl    %ebx/*t12218*/
   movl    %ebx/*t12218*/, %edi/*t12100*/
   jmp     L_4403
L_4404:
   movl    %edi/*t12100*/, %ebx/*t12219*/
   decl    %ebx/*t12219*/
   movl    %ebx/*t12219*/, %edx/*t12098*/
   movl    8(%ebp), %ebx/*t12222*/
   movl    (%ebx/*t12222*/), %ebx/*t12221*/
   movl    (%ebx/*t12221*/, %edx/*t12098*/, 4), %ebx/*t12220*/
   movl    %ebx/*t12220*/, %esi/*t12101*/
   movl    8(%ebp), %ebx/*t12224*/
   movl    (%ebx/*t12224*/), %ecx/*t12223*/
   movl    8(%ebp), %ebx/*t12227*/
   movl    (%ebx/*t12227*/), %ebx/*t12226*/
   movl    (%ebx/*t12226*/, %edi/*t12100*/, 4), %ebx/*t12225*/
   movl    %ebx/*t12225*/, (%ecx/*t12223*/, %edx/*t12098*/, 4)
   movl    8(%ebp), %ebx/*t12229*/
   movl    (%ebx/*t12229*/), %ebx/*t12228*/
   movl    %esi/*t12101*/, (%ebx/*t12228*/, %edi/*t12100*/, 4)
   jmp     L_4406
DONE_4415:
   #return sink
   leave
   ret
   .size BBS_Sort, .-BBS_Sort

.globl BBS_Print
     .type BBS_Print, @function
BBS_Print:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4416:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t12107*/
   # movl    %edi, %edi/*t12108*/
   movl    $0, %ebx/*t12230*/
   # movl    %ebx/*t12230*/, %ebx/*t12105*/
L_4409:
   movl    8(%ebp), %eax/*t12232*/
   movl    4(%eax/*t12232*/), %eax/*t12231*/
   cmpl    %eax/*t12231*/, %ebx/*t12105*/
   jl      L_4408
L_4407:
   movl    $0, %ebx/*t12233*/
   movl    %ebx/*t12233*/, %eax
   movl    -4(%ebp), %ebx/*t12234*/
   # movl    %ebx/*t12234*/, %ebx
   # movl    %esi/*t12107*/, %esi
   # movl    %edi/*t12108*/, %edi
   jmp     DONE_4417
L_4408:
   movl    8(%ebp), %eax/*t12237*/
   movl    (%eax/*t12237*/), %eax/*t12236*/
   movl    (%eax/*t12236*/, %ebx/*t12105*/, 4), %eax/*t12235*/
   movl    %eax/*t12235*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12105*/, %ebx/*t12238*/
   incl    %ebx/*t12238*/
   # movl    %ebx/*t12238*/, %ebx/*t12105*/
   jmp     L_4409
DONE_4417:
   #return sink
   leave
   ret
   .size BBS_Print, .-BBS_Print

.globl BBS_Init
     .type BBS_Init, @function
BBS_Init:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4418:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t12110*/
   # movl    %edi, %edi/*t12111*/
   movl    8(%ebp), %eax/*t12239*/
   movl    12(%ebp), %ebx/*t12240*/
   movl    %ebx/*t12240*/, 4(%eax/*t12239*/)
   movl    8(%ebp), %ebx/*t12241*/
   # movl    %ebx/*t12241*/, %ebx/*t12160*/
   movl    12(%ebp), %eax/*t12242*/
   movl    %eax/*t12242*/, (%esp)
   call    mj_new_array
   # movl    %eax, %eax/*t12159*/
   movl    %eax/*t12159*/, (%ebx/*t12160*/)
   movl    8(%ebp), %ebx/*t12244*/
   movl    (%ebx/*t12244*/), %eax/*t12243*/
   movl    $20, %ebx/*t12245*/
   movl    %ebx/*t12245*/, (%eax/*t12243*/)
   movl    8(%ebp), %ebx/*t12247*/
   movl    (%ebx/*t12247*/), %eax/*t12246*/
   movl    $7, %ebx/*t12248*/
   movl    %ebx/*t12248*/, 4(%eax/*t12246*/)
   movl    8(%ebp), %ebx/*t12250*/
   movl    (%ebx/*t12250*/), %eax/*t12249*/
   movl    $12, %ebx/*t12251*/
   movl    %ebx/*t12251*/, 8(%eax/*t12249*/)
   movl    8(%ebp), %ebx/*t12253*/
   movl    (%ebx/*t12253*/), %eax/*t12252*/
   movl    $18, %ebx/*t12254*/
   movl    %ebx/*t12254*/, 12(%eax/*t12252*/)
   movl    8(%ebp), %ebx/*t12256*/
   movl    (%ebx/*t12256*/), %eax/*t12255*/
   movl    $2, %ebx/*t12257*/
   movl    %ebx/*t12257*/, 16(%eax/*t12255*/)
   movl    8(%ebp), %ebx/*t12259*/
   movl    (%ebx/*t12259*/), %eax/*t12258*/
   movl    $11, %ebx/*t12260*/
   movl    %ebx/*t12260*/, 20(%eax/*t12258*/)
   movl    8(%ebp), %ebx/*t12262*/
   movl    (%ebx/*t12262*/), %eax/*t12261*/
   movl    $6, %ebx/*t12263*/
   movl    %ebx/*t12263*/, 24(%eax/*t12261*/)
   movl    8(%ebp), %ebx/*t12265*/
   movl    (%ebx/*t12265*/), %eax/*t12264*/
   movl    $9, %ebx/*t12266*/
   movl    %ebx/*t12266*/, 28(%eax/*t12264*/)
   movl    8(%ebp), %ebx/*t12268*/
   movl    (%ebx/*t12268*/), %eax/*t12267*/
   movl    $19, %ebx/*t12269*/
   movl    %ebx/*t12269*/, 32(%eax/*t12267*/)
   movl    8(%ebp), %ebx/*t12271*/
   movl    (%ebx/*t12271*/), %eax/*t12270*/
   movl    $5, %ebx/*t12272*/
   movl    %ebx/*t12272*/, 36(%eax/*t12270*/)
   movl    $0, %ebx/*t12273*/
   movl    %ebx/*t12273*/, %eax
   movl    -4(%ebp), %ebx/*t12274*/
   # movl    %ebx/*t12274*/, %ebx
   # movl    %esi/*t12110*/, %esi
   # movl    %edi/*t12111*/, %edi
DONE_4419:
   #return sink
   leave
   ret
   .size BBS_Init, .-BBS_Init

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
