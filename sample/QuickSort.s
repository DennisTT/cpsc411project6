   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4555:
   # movl    %ebx, %ebx/*t12806*/
   # movl    %esi, %esi/*t12807*/
   # movl    %edi, %edi/*t12808*/
   movl    $8, %eax/*t12833*/
   movl    %eax/*t12833*/, (%esp)
   call    mj_new_object
   movl    %eax, %ecx/*t12832*/
   movl    $10, %eax/*t12834*/
   movl    %eax/*t12834*/, 4(%esp)
   movl    %ecx/*t12832*/, (%esp)
   call    QS_Start
   # movl    %eax, %eax/*t12831*/
   movl    %eax/*t12831*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12806*/, %ebx
   # movl    %esi/*t12807*/, %esi
   # movl    %edi/*t12808*/, %edi
DONE_4556:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl QS_Start
     .type QS_Start, @function
QS_Start:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4557:
   # movl    %ebx, %ebx/*t12810*/
   # movl    %esi, %esi/*t12811*/
   # movl    %edi, %edi/*t12812*/
   movl    12(%ebp), %eax/*t12835*/
   movl    %eax/*t12835*/, 4(%esp)
   movl    8(%ebp), %eax/*t12836*/
   movl    %eax/*t12836*/, (%esp)
   call    QS_Init
   # movl    %eax, %eax/*t12809*/
   movl    8(%ebp), %eax/*t12837*/
   movl    %eax/*t12837*/, (%esp)
   call    QS_Print
   # movl    %eax, %eax/*t12809*/
   movl    $9999, %eax/*t12838*/
   movl    %eax/*t12838*/, (%esp)
   call    mj_println
   movl    8(%ebp), %eax/*t12841*/
   movl    4(%eax/*t12841*/), %eax/*t12840*/
   # movl    %eax/*t12840*/, %eax/*t12839*/
   decl    %eax/*t12839*/
   # movl    %eax/*t12839*/, %eax/*t12809*/
   movl    %eax/*t12809*/, 8(%esp)
   movl    $0, %eax/*t12842*/
   movl    %eax/*t12842*/, 4(%esp)
   movl    8(%ebp), %eax/*t12843*/
   movl    %eax/*t12843*/, (%esp)
   call    QS_Sort
   # movl    %eax, %eax/*t12809*/
   movl    8(%ebp), %eax/*t12844*/
   movl    %eax/*t12844*/, (%esp)
   call    QS_Print
   # movl    %eax, %eax/*t12809*/
   movl    $0, %eax/*t12845*/
   # movl    %eax/*t12845*/, %eax
   # movl    %ebx/*t12810*/, %ebx
   # movl    %esi/*t12811*/, %esi
   # movl    %edi/*t12812*/, %edi
DONE_4558:
   #return sink
   leave
   ret
   .size QS_Start, .-QS_Start

.globl QS_Sort
     .type QS_Sort, @function
QS_Sort:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $24, %esp
L_4559:
   movl    %ebx, -12(%ebp)
   movl    %esi, -8(%ebp)
   movl    %edi, -4(%ebp)
   movl    $0, %ebx/*t12954*/
   movl    %ebx/*t12954*/, %ecx/*t12817*/
   movl    12(%ebp), %esi/*t12955*/
   movl    16(%ebp), %ebx/*t12956*/
   cmpl    %ebx/*t12956*/, %esi/*t12955*/
   jl      L_4531
L_4532:
   movl    $0, %ebx/*t12957*/
   # movl    %ebx/*t12957*/, %ebx/*t12816*/
L_4533:
   movl    $0, %ebx/*t12958*/
   movl    %ebx/*t12958*/, %eax
   movl    -12(%ebp), %ebx/*t12959*/
   # movl    %ebx/*t12959*/, %ebx
   movl    -8(%ebp), %esi/*t12960*/
   # movl    %esi/*t12960*/, %esi
   movl    -4(%ebp), %edi/*t12961*/
   # movl    %edi/*t12961*/, %edi
   jmp     DONE_4560
L_4531:
   movl    8(%ebp), %ebx/*t12964*/
   movl    (%ebx/*t12964*/), %esi/*t12963*/
   movl    16(%ebp), %ebx/*t12965*/
   movl    (%esi/*t12963*/, %ebx/*t12965*/, 4), %ebx/*t12962*/
   movl    %ebx/*t12962*/, %eax/*t12813*/
   movl    12(%ebp), %ebx/*t12967*/
   # movl    %ebx/*t12967*/, %ebx/*t12966*/
   decl    %ebx/*t12966*/
   movl    %ebx/*t12966*/, %esi/*t12814*/
   movl    16(%ebp), %ebx/*t12968*/
   movl    %ebx/*t12968*/, %edi/*t12815*/
   movl    $1, %ebx/*t12969*/
   movl    %ebx/*t12969*/, %edx/*t12818*/
L_4536:
   movl    $0, %ebx/*t12970*/
   cmpl    %ebx/*t12970*/, %edx/*t12818*/
   jne     L_4535
L_4534:
   movl    8(%ebp), %ebx/*t12972*/
   movl    (%ebx/*t12972*/), %eax/*t12971*/
   movl    8(%ebp), %ebx/*t12975*/
   movl    (%ebx/*t12975*/), %ebx/*t12974*/
   movl    (%ebx/*t12974*/, %esi/*t12814*/, 4), %ebx/*t12973*/
   movl    %ebx/*t12973*/, (%eax/*t12971*/, %edi/*t12815*/, 4)
   movl    8(%ebp), %ebx/*t12977*/
   movl    (%ebx/*t12977*/), %eax/*t12976*/
   movl    8(%ebp), %ebx/*t12980*/
   movl    (%ebx/*t12980*/), %edi/*t12979*/
   movl    16(%ebp), %ebx/*t12981*/
   movl    (%edi/*t12979*/, %ebx/*t12981*/, 4), %ebx/*t12978*/
   movl    %ebx/*t12978*/, (%eax/*t12976*/, %esi/*t12814*/, 4)
   movl    8(%ebp), %ebx/*t12983*/
   movl    (%ebx/*t12983*/), %edi/*t12982*/
   movl    16(%ebp), %ebx/*t12984*/
   movl    %ecx/*t12817*/, (%edi/*t12982*/, %ebx/*t12984*/, 4)
   movl    %esi/*t12814*/, %ebx/*t12985*/
   decl    %ebx/*t12985*/
   movl    %ebx/*t12985*/, 8(%esp)
   movl    12(%ebp), %ebx/*t12986*/
   movl    %ebx/*t12986*/, 4(%esp)
   movl    8(%ebp), %ebx/*t12987*/
   movl    %ebx/*t12987*/, (%esp)
   call    QS_Sort
   movl    %eax, %ebx/*t12816*/
   movl    16(%ebp), %ebx/*t12988*/
   movl    %ebx/*t12988*/, 8(%esp)
   movl    %esi/*t12814*/, %ebx/*t12989*/
   incl    %ebx/*t12989*/
   movl    %ebx/*t12989*/, 4(%esp)
   movl    8(%ebp), %ebx/*t12990*/
   movl    %ebx/*t12990*/, (%esp)
   call    QS_Sort
   movl    %eax, %ebx/*t12816*/
   jmp     L_4533
L_4535:
   movl    $1, %ebx/*t12991*/
   movl    %ebx/*t12991*/, %ecx/*t12819*/
L_4539:
   movl    $0, %ebx/*t12992*/
   cmpl    %ebx/*t12992*/, %ecx/*t12819*/
   jne     L_4538
L_4537:
   movl    $1, %ebx/*t12993*/
   movl    %ebx/*t12993*/, %ecx/*t12819*/
L_4545:
   movl    $0, %ebx/*t12994*/
   cmpl    %ebx/*t12994*/, %ecx/*t12819*/
   jne     L_4544
L_4543:
   movl    8(%ebp), %ebx/*t12997*/
   movl    (%ebx/*t12997*/), %ebx/*t12996*/
   movl    (%ebx/*t12996*/, %esi/*t12814*/, 4), %ebx/*t12995*/
   movl    %ebx/*t12995*/, %ecx/*t12817*/
   movl    8(%ebp), %ebx/*t12999*/
   movl    (%ebx/*t12999*/), %edx/*t12998*/
   movl    8(%ebp), %ebx/*t13002*/
   movl    (%ebx/*t13002*/), %ebx/*t13001*/
   movl    (%ebx/*t13001*/, %edi/*t12815*/, 4), %ebx/*t13000*/
   movl    %ebx/*t13000*/, (%edx/*t12998*/, %esi/*t12814*/, 4)
   movl    8(%ebp), %ebx/*t13004*/
   movl    (%ebx/*t13004*/), %ebx/*t13003*/
   movl    %ecx/*t12817*/, (%ebx/*t13003*/, %edi/*t12815*/, 4)
   movl    %esi/*t12814*/, %ebx/*t13005*/
   incl    %ebx/*t13005*/
   cmpl    %ebx/*t13005*/, %edi/*t12815*/
   jl      L_4549
L_4550:
   movl    $1, %ebx/*t13006*/
   movl    %ebx/*t13006*/, %edx/*t12818*/
L_4551:
   jmp     L_4536
L_4538:
   movl    %esi/*t12814*/, %ebx/*t13007*/
   incl    %ebx/*t13007*/
   movl    %ebx/*t13007*/, %esi/*t12814*/
   movl    8(%ebp), %ebx/*t13010*/
   movl    (%ebx/*t13010*/), %ebx/*t13009*/
   movl    (%ebx/*t13009*/, %esi/*t12814*/, 4), %ebx/*t13008*/
   # movl    %ebx/*t13008*/, %ebx/*t12820*/
   cmpl    %eax/*t12813*/, %ebx/*t12820*/
   jl      L_4541
L_4540:
   movl    $0, %ebx/*t13011*/
   movl    %ebx/*t13011*/, %ecx/*t12819*/
L_4542:
   jmp     L_4539
L_4541:
   movl    $1, %ebx/*t13012*/
   movl    %ebx/*t13012*/, %ecx/*t12819*/
   jmp     L_4542
L_4544:
   movl    %edi/*t12815*/, %ebx/*t13013*/
   decl    %ebx/*t13013*/
   movl    %ebx/*t13013*/, %edi/*t12815*/
   movl    8(%ebp), %ebx/*t13016*/
   movl    (%ebx/*t13016*/), %ebx/*t13015*/
   movl    (%ebx/*t13015*/, %edi/*t12815*/, 4), %ebx/*t13014*/
   # movl    %ebx/*t13014*/, %ebx/*t12820*/
   cmpl    %ebx/*t12820*/, %eax/*t12813*/
   jl      L_4547
L_4546:
   movl    $0, %ebx/*t13017*/
   movl    %ebx/*t13017*/, %ecx/*t12819*/
L_4548:
   jmp     L_4545
L_4547:
   movl    $1, %ebx/*t13018*/
   movl    %ebx/*t13018*/, %ecx/*t12819*/
   jmp     L_4548
L_4549:
   movl    $0, %ebx/*t13019*/
   movl    %ebx/*t13019*/, %edx/*t12818*/
   jmp     L_4551
DONE_4560:
   #return sink
   leave
   ret
   .size QS_Sort, .-QS_Sort

.globl QS_Print
     .type QS_Print, @function
QS_Print:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4561:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t12826*/
   # movl    %edi, %edi/*t12827*/
   movl    $0, %ebx/*t13020*/
   # movl    %ebx/*t13020*/, %ebx/*t12824*/
L_4554:
   movl    8(%ebp), %eax/*t13022*/
   movl    4(%eax/*t13022*/), %eax/*t13021*/
   cmpl    %eax/*t13021*/, %ebx/*t12824*/
   jl      L_4553
L_4552:
   movl    $0, %ebx/*t13023*/
   movl    %ebx/*t13023*/, %eax
   movl    -4(%ebp), %ebx/*t13024*/
   # movl    %ebx/*t13024*/, %ebx
   # movl    %esi/*t12826*/, %esi
   # movl    %edi/*t12827*/, %edi
   jmp     DONE_4562
L_4553:
   movl    8(%ebp), %eax/*t13027*/
   movl    (%eax/*t13027*/), %eax/*t13026*/
   movl    (%eax/*t13026*/, %ebx/*t12824*/, 4), %eax/*t13025*/
   movl    %eax/*t13025*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12824*/, %ebx/*t13028*/
   incl    %ebx/*t13028*/
   # movl    %ebx/*t13028*/, %ebx/*t12824*/
   jmp     L_4554
DONE_4562:
   #return sink
   leave
   ret
   .size QS_Print, .-QS_Print

.globl QS_Init
     .type QS_Init, @function
QS_Init:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4563:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t12829*/
   # movl    %edi, %edi/*t12830*/
   movl    8(%ebp), %eax/*t13029*/
   movl    12(%ebp), %ebx/*t13030*/
   movl    %ebx/*t13030*/, 4(%eax/*t13029*/)
   movl    8(%ebp), %ebx/*t13031*/
   # movl    %ebx/*t13031*/, %ebx/*t12918*/
   movl    12(%ebp), %eax/*t13032*/
   movl    %eax/*t13032*/, (%esp)
   call    mj_new_array
   # movl    %eax, %eax/*t12917*/
   movl    %eax/*t12917*/, (%ebx/*t12918*/)
   movl    8(%ebp), %ebx/*t13034*/
   movl    (%ebx/*t13034*/), %eax/*t13033*/
   movl    $20, %ebx/*t13035*/
   movl    %ebx/*t13035*/, (%eax/*t13033*/)
   movl    8(%ebp), %ebx/*t13037*/
   movl    (%ebx/*t13037*/), %eax/*t13036*/
   movl    $7, %ebx/*t13038*/
   movl    %ebx/*t13038*/, 4(%eax/*t13036*/)
   movl    8(%ebp), %ebx/*t13040*/
   movl    (%ebx/*t13040*/), %eax/*t13039*/
   movl    $12, %ebx/*t13041*/
   movl    %ebx/*t13041*/, 8(%eax/*t13039*/)
   movl    8(%ebp), %ebx/*t13043*/
   movl    (%ebx/*t13043*/), %eax/*t13042*/
   movl    $18, %ebx/*t13044*/
   movl    %ebx/*t13044*/, 12(%eax/*t13042*/)
   movl    8(%ebp), %ebx/*t13046*/
   movl    (%ebx/*t13046*/), %eax/*t13045*/
   movl    $2, %ebx/*t13047*/
   movl    %ebx/*t13047*/, 16(%eax/*t13045*/)
   movl    8(%ebp), %ebx/*t13049*/
   movl    (%ebx/*t13049*/), %eax/*t13048*/
   movl    $11, %ebx/*t13050*/
   movl    %ebx/*t13050*/, 20(%eax/*t13048*/)
   movl    8(%ebp), %ebx/*t13052*/
   movl    (%ebx/*t13052*/), %eax/*t13051*/
   movl    $6, %ebx/*t13053*/
   movl    %ebx/*t13053*/, 24(%eax/*t13051*/)
   movl    8(%ebp), %ebx/*t13055*/
   movl    (%ebx/*t13055*/), %eax/*t13054*/
   movl    $9, %ebx/*t13056*/
   movl    %ebx/*t13056*/, 28(%eax/*t13054*/)
   movl    8(%ebp), %ebx/*t13058*/
   movl    (%ebx/*t13058*/), %eax/*t13057*/
   movl    $19, %ebx/*t13059*/
   movl    %ebx/*t13059*/, 32(%eax/*t13057*/)
   movl    8(%ebp), %ebx/*t13061*/
   movl    (%ebx/*t13061*/), %eax/*t13060*/
   movl    $5, %ebx/*t13062*/
   movl    %ebx/*t13062*/, 36(%eax/*t13060*/)
   movl    $0, %ebx/*t13063*/
   movl    %ebx/*t13063*/, %eax
   movl    -4(%ebp), %ebx/*t13064*/
   # movl    %ebx/*t13064*/, %ebx
   # movl    %esi/*t12829*/, %esi
   # movl    %edi/*t12830*/, %edi
DONE_4564:
   #return sink
   leave
   ret
   .size QS_Init, .-QS_Init

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
