   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $4, %esp
L_4354:
   # movl    %ebx, %ebx/*t11626*/
   # movl    %esi, %esi/*t11627*/
   # movl    %edi, %edi/*t11628*/
   movl    $0, %eax/*t11723*/
   movl    %eax/*t11723*/, (%esp)
   call    mj_new_object
   # movl    %eax, %eax/*t11722*/
   movl    %eax/*t11722*/, (%esp)
   call    BT_Start
   # movl    %eax, %eax/*t11721*/
   movl    %eax/*t11721*/, (%esp)
   call    mj_println
   # movl    %ebx/*t11626*/, %ebx
   # movl    %esi/*t11627*/, %esi
   # movl    %edi/*t11628*/, %edi
DONE_4355:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl BT_Start
     .type BT_Start, @function
BT_Start:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4356:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t11633*/
   # movl    %edi, %edi/*t11634*/
   movl    $24, %ebx/*t11932*/
   movl    %ebx/*t11932*/, (%esp)
   call    mj_new_object
   movl    %eax, %ebx/*t11629*/
   movl    $16, %eax/*t11933*/
   movl    %eax/*t11933*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Init
   # movl    %eax, %eax/*t11630*/
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Print
   # movl    %eax, %eax/*t11630*/
   movl    $100000000, %eax/*t11934*/
   movl    %eax/*t11934*/, (%esp)
   call    mj_println
   movl    $8, %eax/*t11935*/
   movl    %eax/*t11935*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Insert
   # movl    %eax, %eax/*t11630*/
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Print
   # movl    %eax, %eax/*t11630*/
   movl    $24, %eax/*t11936*/
   movl    %eax/*t11936*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Insert
   # movl    %eax, %eax/*t11630*/
   movl    $4, %eax/*t11937*/
   movl    %eax/*t11937*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Insert
   # movl    %eax, %eax/*t11630*/
   movl    $12, %eax/*t11938*/
   movl    %eax/*t11938*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Insert
   # movl    %eax, %eax/*t11630*/
   movl    $20, %eax/*t11939*/
   movl    %eax/*t11939*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Insert
   # movl    %eax, %eax/*t11630*/
   movl    $28, %eax/*t11940*/
   movl    %eax/*t11940*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Insert
   # movl    %eax, %eax/*t11630*/
   movl    $14, %eax/*t11941*/
   movl    %eax/*t11941*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Insert
   # movl    %eax, %eax/*t11630*/
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Print
   # movl    %eax, %eax/*t11630*/
   movl    $24, %eax/*t11942*/
   movl    %eax/*t11942*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Search
   # movl    %eax, %eax/*t11724*/
   movl    %eax/*t11724*/, (%esp)
   call    mj_println
   movl    $12, %eax/*t11943*/
   movl    %eax/*t11943*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Search
   # movl    %eax, %eax/*t11725*/
   movl    %eax/*t11725*/, (%esp)
   call    mj_println
   movl    $16, %eax/*t11944*/
   movl    %eax/*t11944*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Search
   # movl    %eax, %eax/*t11726*/
   movl    %eax/*t11726*/, (%esp)
   call    mj_println
   movl    $50, %eax/*t11945*/
   movl    %eax/*t11945*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Search
   # movl    %eax, %eax/*t11727*/
   movl    %eax/*t11727*/, (%esp)
   call    mj_println
   movl    $12, %eax/*t11946*/
   movl    %eax/*t11946*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Search
   # movl    %eax, %eax/*t11728*/
   movl    %eax/*t11728*/, (%esp)
   call    mj_println
   movl    $12, %eax/*t11947*/
   movl    %eax/*t11947*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Delete
   # movl    %eax, %eax/*t11630*/
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Print
   # movl    %eax, %eax/*t11630*/
   movl    $12, %eax/*t11948*/
   movl    %eax/*t11948*/, 4(%esp)
   movl    %ebx/*t11629*/, (%esp)
   call    Tree_Search
   movl    %eax, %ebx/*t11729*/
   movl    %ebx/*t11729*/, (%esp)
   call    mj_println
   movl    $0, %ebx/*t11949*/
   movl    %ebx/*t11949*/, %eax
   movl    -4(%ebp), %ebx/*t11950*/
   # movl    %ebx/*t11950*/, %ebx
   # movl    %esi/*t11633*/, %esi
   # movl    %edi/*t11634*/, %edi
DONE_4357:
   #return sink
   leave
   ret
   .size BT_Start, .-BT_Start

.globl Tree_Init
     .type Tree_Init, @function
Tree_Init:
   pushl  %ebp
   movl   %esp, %ebp
L_4358:
   # movl    %ebx, %ebx/*t11635*/
   # movl    %esi, %esi/*t11636*/
   # movl    %edi, %edi/*t11637*/
   movl    8(%ebp), %ecx/*t11748*/
   movl    12(%ebp), %eax/*t11749*/
   movl    %eax/*t11749*/, 8(%ecx/*t11748*/)
   movl    8(%ebp), %ecx/*t11750*/
   movl    $0, %eax/*t11751*/
   movl    %eax/*t11751*/, 12(%ecx/*t11750*/)
   movl    8(%ebp), %ecx/*t11752*/
   movl    $0, %eax/*t11753*/
   movl    %eax/*t11753*/, 16(%ecx/*t11752*/)
   movl    $1, %eax/*t11754*/
   # movl    %eax/*t11754*/, %eax
   # movl    %ebx/*t11635*/, %ebx
   # movl    %esi/*t11636*/, %esi
   # movl    %edi/*t11637*/, %edi
DONE_4359:
   #return sink
   leave
   ret
   .size Tree_Init, .-Tree_Init

.globl Tree_SetRight
     .type Tree_SetRight, @function
Tree_SetRight:
   pushl  %ebp
   movl   %esp, %ebp
L_4360:
   # movl    %ebx, %ebx/*t11638*/
   # movl    %esi, %esi/*t11639*/
   # movl    %edi, %edi/*t11640*/
   movl    8(%ebp), %ecx/*t11755*/
   movl    12(%ebp), %eax/*t11756*/
   movl    %eax/*t11756*/, 4(%ecx/*t11755*/)
   movl    $1, %eax/*t11757*/
   # movl    %eax/*t11757*/, %eax
   # movl    %ebx/*t11638*/, %ebx
   # movl    %esi/*t11639*/, %esi
   # movl    %edi/*t11640*/, %edi
DONE_4361:
   #return sink
   leave
   ret
   .size Tree_SetRight, .-Tree_SetRight

.globl Tree_SetLeft
     .type Tree_SetLeft, @function
Tree_SetLeft:
   pushl  %ebp
   movl   %esp, %ebp
L_4362:
   # movl    %ebx, %ebx/*t11641*/
   # movl    %esi, %esi/*t11642*/
   # movl    %edi, %edi/*t11643*/
   movl    8(%ebp), %ecx/*t11758*/
   movl    12(%ebp), %eax/*t11759*/
   movl    %eax/*t11759*/, (%ecx/*t11758*/)
   movl    $1, %eax/*t11760*/
   # movl    %eax/*t11760*/, %eax
   # movl    %ebx/*t11641*/, %ebx
   # movl    %esi/*t11642*/, %esi
   # movl    %edi/*t11643*/, %edi
DONE_4363:
   #return sink
   leave
   ret
   .size Tree_SetLeft, .-Tree_SetLeft

.globl Tree_GetRight
     .type Tree_GetRight, @function
Tree_GetRight:
   pushl  %ebp
   movl   %esp, %ebp
L_4364:
   # movl    %ebx, %ebx/*t11644*/
   # movl    %esi, %esi/*t11645*/
   # movl    %edi, %edi/*t11646*/
   movl    8(%ebp), %eax/*t11762*/
   movl    4(%eax/*t11762*/), %eax/*t11761*/
   # movl    %eax/*t11761*/, %eax
   # movl    %ebx/*t11644*/, %ebx
   # movl    %esi/*t11645*/, %esi
   # movl    %edi/*t11646*/, %edi
DONE_4365:
   #return sink
   leave
   ret
   .size Tree_GetRight, .-Tree_GetRight

.globl Tree_GetLeft
     .type Tree_GetLeft, @function
Tree_GetLeft:
   pushl  %ebp
   movl   %esp, %ebp
L_4366:
   # movl    %ebx, %ebx/*t11647*/
   # movl    %esi, %esi/*t11648*/
   # movl    %edi, %edi/*t11649*/
   movl    8(%ebp), %eax/*t11764*/
   movl    (%eax/*t11764*/), %eax/*t11763*/
   # movl    %eax/*t11763*/, %eax
   # movl    %ebx/*t11647*/, %ebx
   # movl    %esi/*t11648*/, %esi
   # movl    %edi/*t11649*/, %edi
DONE_4367:
   #return sink
   leave
   ret
   .size Tree_GetLeft, .-Tree_GetLeft

.globl Tree_GetKey
     .type Tree_GetKey, @function
Tree_GetKey:
   pushl  %ebp
   movl   %esp, %ebp
L_4368:
   # movl    %ebx, %ebx/*t11650*/
   # movl    %esi, %esi/*t11651*/
   # movl    %edi, %edi/*t11652*/
   movl    8(%ebp), %eax/*t11766*/
   movl    8(%eax/*t11766*/), %eax/*t11765*/
   # movl    %eax/*t11765*/, %eax
   # movl    %ebx/*t11650*/, %ebx
   # movl    %esi/*t11651*/, %esi
   # movl    %edi/*t11652*/, %edi
DONE_4369:
   #return sink
   leave
   ret
   .size Tree_GetKey, .-Tree_GetKey

.globl Tree_SetKey
     .type Tree_SetKey, @function
Tree_SetKey:
   pushl  %ebp
   movl   %esp, %ebp
L_4370:
   # movl    %ebx, %ebx/*t11653*/
   # movl    %esi, %esi/*t11654*/
   # movl    %edi, %edi/*t11655*/
   movl    8(%ebp), %ecx/*t11767*/
   movl    12(%ebp), %eax/*t11768*/
   movl    %eax/*t11768*/, 8(%ecx/*t11767*/)
   movl    $1, %eax/*t11769*/
   # movl    %eax/*t11769*/, %eax
   # movl    %ebx/*t11653*/, %ebx
   # movl    %esi/*t11654*/, %esi
   # movl    %edi/*t11655*/, %edi
DONE_4371:
   #return sink
   leave
   ret
   .size Tree_SetKey, .-Tree_SetKey

.globl Tree_GetHas_Right
     .type Tree_GetHas_Right, @function
Tree_GetHas_Right:
   pushl  %ebp
   movl   %esp, %ebp
L_4372:
   # movl    %ebx, %ebx/*t11656*/
   # movl    %esi, %esi/*t11657*/
   # movl    %edi, %edi/*t11658*/
   movl    8(%ebp), %eax/*t11771*/
   movl    16(%eax/*t11771*/), %eax/*t11770*/
   # movl    %eax/*t11770*/, %eax
   # movl    %ebx/*t11656*/, %ebx
   # movl    %esi/*t11657*/, %esi
   # movl    %edi/*t11658*/, %edi
DONE_4373:
   #return sink
   leave
   ret
   .size Tree_GetHas_Right, .-Tree_GetHas_Right

.globl Tree_GetHas_Left
     .type Tree_GetHas_Left, @function
Tree_GetHas_Left:
   pushl  %ebp
   movl   %esp, %ebp
L_4374:
   # movl    %ebx, %ebx/*t11659*/
   # movl    %esi, %esi/*t11660*/
   # movl    %edi, %edi/*t11661*/
   movl    8(%ebp), %eax/*t11773*/
   movl    12(%eax/*t11773*/), %eax/*t11772*/
   # movl    %eax/*t11772*/, %eax
   # movl    %ebx/*t11659*/, %ebx
   # movl    %esi/*t11660*/, %esi
   # movl    %edi/*t11661*/, %edi
DONE_4375:
   #return sink
   leave
   ret
   .size Tree_GetHas_Left, .-Tree_GetHas_Left

.globl Tree_SetHas_Left
     .type Tree_SetHas_Left, @function
Tree_SetHas_Left:
   pushl  %ebp
   movl   %esp, %ebp
L_4376:
   # movl    %ebx, %ebx/*t11662*/
   # movl    %esi, %esi/*t11663*/
   # movl    %edi, %edi/*t11664*/
   movl    8(%ebp), %ecx/*t11774*/
   movl    12(%ebp), %eax/*t11775*/
   movl    %eax/*t11775*/, 12(%ecx/*t11774*/)
   movl    $1, %eax/*t11776*/
   # movl    %eax/*t11776*/, %eax
   # movl    %ebx/*t11662*/, %ebx
   # movl    %esi/*t11663*/, %esi
   # movl    %edi/*t11664*/, %edi
DONE_4377:
   #return sink
   leave
   ret
   .size Tree_SetHas_Left, .-Tree_SetHas_Left

.globl Tree_SetHas_Right
     .type Tree_SetHas_Right, @function
Tree_SetHas_Right:
   pushl  %ebp
   movl   %esp, %ebp
L_4378:
   # movl    %ebx, %ebx/*t11665*/
   # movl    %esi, %esi/*t11666*/
   # movl    %edi, %edi/*t11667*/
   movl    8(%ebp), %ecx/*t11777*/
   movl    12(%ebp), %eax/*t11778*/
   movl    %eax/*t11778*/, 16(%ecx/*t11777*/)
   movl    $1, %eax/*t11779*/
   # movl    %eax/*t11779*/, %eax
   # movl    %ebx/*t11665*/, %ebx
   # movl    %esi/*t11666*/, %esi
   # movl    %edi/*t11667*/, %edi
DONE_4379:
   #return sink
   leave
   ret
   .size Tree_SetHas_Right, .-Tree_SetHas_Right

.globl Tree_Compare
     .type Tree_Compare, @function
Tree_Compare:
   pushl  %ebp
   movl   %esp, %ebp
L_4380:
   # movl    %ebx, %ebx/*t11670*/
   # movl    %esi, %esi/*t11671*/
   # movl    %edi, %edi/*t11672*/
   movl    $0, %eax/*t11780*/
   # movl    %eax/*t11780*/, %eax/*t11668*/
   movl    16(%ebp), %eax/*t11782*/
   # movl    %eax/*t11782*/, %eax/*t11781*/
   incl    %eax/*t11781*/
   movl    %eax/*t11781*/, %ecx/*t11669*/
   movl    12(%ebp), %edx/*t11783*/
   movl    16(%ebp), %eax/*t11784*/
   cmpl    %eax/*t11784*/, %edx/*t11783*/
   jl      L_4278
L_4279:
   movl    12(%ebp), %eax/*t11785*/
   cmpl    %ecx/*t11669*/, %eax/*t11785*/
   jl      L_4282
L_4281:
   movl    $0, %eax/*t11786*/
   # movl    %eax/*t11786*/, %eax/*t11668*/
L_4283:
L_4280:
   # movl    %eax/*t11668*/, %eax
   # movl    %ebx/*t11670*/, %ebx
   # movl    %esi/*t11671*/, %esi
   # movl    %edi/*t11672*/, %edi
   jmp     DONE_4381
L_4278:
   movl    $0, %eax/*t11787*/
   # movl    %eax/*t11787*/, %eax/*t11668*/
   jmp     L_4280
L_4282:
   movl    $1, %eax/*t11788*/
   # movl    %eax/*t11788*/, %eax/*t11668*/
   jmp     L_4283
DONE_4381:
   #return sink
   leave
   ret
   .size Tree_Compare, .-Tree_Compare

.globl Tree_Insert
     .type Tree_Insert, @function
Tree_Insert:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $20, %esp
L_4382:
   movl    %ebx, -12(%ebp)
   movl    %esi, -8(%ebp)
   movl    %edi, -4(%ebp)
   movl    $24, %ebx/*t11951*/
   movl    %ebx/*t11951*/, (%esp)
   call    mj_new_object
   movl    %eax, %edi/*t11673*/
   movl    12(%ebp), %ebx/*t11952*/
   movl    %ebx/*t11952*/, 4(%esp)
   movl    %edi/*t11673*/, (%esp)
   call    Tree_Init
   # movl    %eax, %eax/*t11674*/
   movl    8(%ebp), %ebx/*t11953*/
   movl    %ebx/*t11953*/, %esi/*t11677*/
   movl    $1, %ebx/*t11954*/
   # movl    %ebx/*t11954*/, %ebx/*t11675*/
L_4286:
   movl    $0, %eax/*t11955*/
   cmpl    %eax/*t11955*/, %ebx/*t11675*/
   jne     L_4285
L_4284:
   movl    $1, %ebx/*t11956*/
   movl    %ebx/*t11956*/, %eax
   movl    -12(%ebp), %ebx/*t11957*/
   # movl    %ebx/*t11957*/, %ebx
   movl    -8(%ebp), %esi/*t11958*/
   # movl    %esi/*t11958*/, %esi
   movl    -4(%ebp), %edi/*t11959*/
   # movl    %edi/*t11959*/, %edi
   jmp     DONE_4383
L_4285:
   movl    %esi/*t11677*/, (%esp)
   call    Tree_GetKey
   movl    %eax, %ecx/*t11676*/
   movl    12(%ebp), %eax/*t11960*/
   cmpl    %ecx/*t11676*/, %eax/*t11960*/
   jl      L_4287
L_4288:
   movl    %esi/*t11677*/, (%esp)
   call    Tree_GetHas_Right
   movl    %eax, %ecx/*t11790*/
   movl    $0, %eax/*t11961*/
   cmpl    %eax/*t11961*/, %ecx/*t11790*/
   jne     L_4293
L_4294:
   movl    $0, %ebx/*t11962*/
   # movl    %ebx/*t11962*/, %ebx/*t11675*/
   movl    $1, %eax/*t11963*/
   movl    %eax/*t11963*/, 4(%esp)
   movl    %esi/*t11677*/, (%esp)
   call    Tree_SetHas_Right
   # movl    %eax, %eax/*t11674*/
   movl    %edi/*t11673*/, 4(%esp)
   movl    %esi/*t11677*/, (%esp)
   call    Tree_SetRight
   # movl    %eax, %eax/*t11674*/
L_4295:
L_4289:
   jmp     L_4286
L_4287:
   movl    %esi/*t11677*/, (%esp)
   call    Tree_GetHas_Left
   movl    %eax, %ecx/*t11789*/
   movl    $0, %eax/*t11964*/
   cmpl    %eax/*t11964*/, %ecx/*t11789*/
   jne     L_4290
L_4291:
   movl    $0, %ebx/*t11965*/
   # movl    %ebx/*t11965*/, %ebx/*t11675*/
   movl    $1, %eax/*t11966*/
   movl    %eax/*t11966*/, 4(%esp)
   movl    %esi/*t11677*/, (%esp)
   call    Tree_SetHas_Left
   # movl    %eax, %eax/*t11674*/
   movl    %edi/*t11673*/, 4(%esp)
   movl    %esi/*t11677*/, (%esp)
   call    Tree_SetLeft
   # movl    %eax, %eax/*t11674*/
L_4292:
   jmp     L_4289
L_4290:
   movl    %esi/*t11677*/, (%esp)
   call    Tree_GetLeft
   movl    %eax, %esi/*t11677*/
   jmp     L_4292
L_4293:
   movl    %esi/*t11677*/, (%esp)
   call    Tree_GetRight
   movl    %eax, %esi/*t11677*/
   jmp     L_4295
DONE_4383:
   #return sink
   leave
   ret
   .size Tree_Insert, .-Tree_Insert

.globl Tree_Delete
     .type Tree_Delete, @function
Tree_Delete:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $32, %esp
L_4384:
   movl    %ebx, -20(%ebp)
   movl    %esi, -16(%ebp)
   movl    %edi, -12(%ebp)
   movl    8(%ebp), %ebx/*t11967*/
   movl    %ebx/*t11967*/, -8(%ebp)
   movl    8(%ebp), %ebx/*t11968*/
   movl    %ebx/*t11968*/, -4(%ebp)
   movl    $1, %ebx/*t11969*/
   movl    %ebx/*t11969*/, %edi/*t11683*/
   movl    $0, %ebx/*t11970*/
   movl    %ebx/*t11970*/, %esi/*t11684*/
   movl    $1, %ebx/*t11971*/
   # movl    %ebx/*t11971*/, %ebx/*t11685*/
L_4298:
   movl    $0, %eax/*t11972*/
   cmpl    %eax/*t11972*/, %edi/*t11683*/
   jne     L_4297
L_4296:
   movl    %esi/*t11684*/, %eax
   movl    -20(%ebp), %ebx/*t11973*/
   # movl    %ebx/*t11973*/, %ebx
   movl    -16(%ebp), %esi/*t11974*/
   # movl    %esi/*t11974*/, %esi
   movl    -12(%ebp), %edi/*t11975*/
   # movl    %edi/*t11975*/, %edi
   jmp     DONE_4385
L_4297:
   movl    -8(%ebp), %eax/*t11976*/
   movl    %eax/*t11976*/, (%esp)
   call    Tree_GetKey
   movl    %eax, %ecx/*t11686*/
   movl    12(%ebp), %eax/*t11977*/
   cmpl    %ecx/*t11686*/, %eax/*t11977*/
   jl      L_4299
L_4300:
   movl    12(%ebp), %eax/*t11978*/
   cmpl    %eax/*t11978*/, %ecx/*t11686*/
   jl      L_4305
L_4306:
   movl    $0, %esi/*t11979*/
   cmpl    %esi/*t11979*/, %ebx/*t11685*/
   jne     L_4311
L_4312:
   movl    -8(%ebp), %ebx/*t11980*/
   movl    %ebx/*t11980*/, 8(%esp)
   movl    -4(%ebp), %ebx/*t11981*/
   movl    %ebx/*t11981*/, 4(%esp)
   movl    8(%ebp), %ebx/*t11982*/
   movl    %ebx/*t11982*/, (%esp)
   call    Tree_Remove
   movl    %eax, %ebx/*t11687*/
L_4313:
   movl    $1, %ebx/*t11983*/
   movl    %ebx/*t11983*/, %esi/*t11684*/
   movl    $0, %ebx/*t11984*/
   movl    %ebx/*t11984*/, %edi/*t11683*/
L_4307:
L_4301:
   movl    $0, %ebx/*t11985*/
   # movl    %ebx/*t11985*/, %ebx/*t11685*/
   jmp     L_4298
L_4299:
   movl    -8(%ebp), %ebx/*t11986*/
   movl    %ebx/*t11986*/, (%esp)
   call    Tree_GetHas_Left
   # movl    %eax, %eax/*t11804*/
   movl    $0, %ebx/*t11987*/
   cmpl    %ebx/*t11987*/, %eax/*t11804*/
   jne     L_4302
L_4303:
   movl    $0, %ebx/*t11988*/
   movl    %ebx/*t11988*/, %edi/*t11683*/
L_4304:
   jmp     L_4301
L_4302:
   movl    -8(%ebp), %ebx/*t11989*/
   movl    %ebx/*t11989*/, -4(%ebp)
   movl    -8(%ebp), %ebx/*t11990*/
   movl    %ebx/*t11990*/, (%esp)
   call    Tree_GetLeft
   movl    %eax, -8(%ebp)
   jmp     L_4304
L_4305:
   movl    -8(%ebp), %ebx/*t11991*/
   movl    %ebx/*t11991*/, (%esp)
   call    Tree_GetHas_Right
   # movl    %eax, %eax/*t11805*/
   movl    $0, %ebx/*t11992*/
   cmpl    %ebx/*t11992*/, %eax/*t11805*/
   jne     L_4308
L_4309:
   movl    $0, %ebx/*t11993*/
   movl    %ebx/*t11993*/, %edi/*t11683*/
L_4310:
   jmp     L_4307
L_4308:
   movl    -8(%ebp), %ebx/*t11994*/
   movl    %ebx/*t11994*/, -4(%ebp)
   movl    -8(%ebp), %ebx/*t11995*/
   movl    %ebx/*t11995*/, (%esp)
   call    Tree_GetRight
   movl    %eax, -8(%ebp)
   jmp     L_4310
L_4311:
   movl    -8(%ebp), %ebx/*t11996*/
   movl    %ebx/*t11996*/, (%esp)
   call    Tree_GetHas_Right
   movl    %eax, %esi/*t11806*/
   movl    $0, %ebx/*t11997*/
   cmpl    %ebx/*t11997*/, %esi/*t11806*/
   jne     L_4315
L_4317:
   movl    -8(%ebp), %ebx/*t11998*/
   movl    %ebx/*t11998*/, (%esp)
   call    Tree_GetHas_Left
   movl    %eax, %esi/*t11807*/
   movl    $0, %ebx/*t11999*/
   cmpl    %ebx/*t11999*/, %esi/*t11807*/
   jne     L_4315
L_4314:
   movl    $1, %ebx/*t12000*/
   # movl    %ebx/*t12000*/, %ebx/*t11687*/
L_4316:
   jmp     L_4313
L_4315:
   movl    -8(%ebp), %ebx/*t12001*/
   movl    %ebx/*t12001*/, 8(%esp)
   movl    -4(%ebp), %ebx/*t12002*/
   movl    %ebx/*t12002*/, 4(%esp)
   movl    8(%ebp), %ebx/*t12003*/
   movl    %ebx/*t12003*/, (%esp)
   call    Tree_Remove
   movl    %eax, %ebx/*t11687*/
   jmp     L_4316
DONE_4385:
   #return sink
   leave
   ret
   .size Tree_Delete, .-Tree_Delete

.globl Tree_Remove
     .type Tree_Remove, @function
Tree_Remove:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $16, %esp
L_4386:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t11695*/
   # movl    %edi, %edi/*t11696*/
   movl    16(%ebp), %ebx/*t12004*/
   movl    %ebx/*t12004*/, (%esp)
   call    Tree_GetHas_Left
   # movl    %eax, %eax/*t11829*/
   movl    $0, %ebx/*t12005*/
   cmpl    %ebx/*t12005*/, %eax/*t11829*/
   jne     L_4318
L_4319:
   movl    16(%ebp), %ebx/*t12006*/
   movl    %ebx/*t12006*/, (%esp)
   call    Tree_GetHas_Right
   # movl    %eax, %eax/*t11830*/
   movl    $0, %ebx/*t12007*/
   cmpl    %ebx/*t12007*/, %eax/*t11830*/
   jne     L_4321
L_4322:
   movl    16(%ebp), %ebx/*t12008*/
   movl    %ebx/*t12008*/, (%esp)
   call    Tree_GetKey
   movl    %eax, %ebx/*t11692*/
   movl    12(%ebp), %eax/*t12009*/
   movl    %eax/*t12009*/, (%esp)
   call    Tree_GetLeft
   # movl    %eax, %eax/*t11831*/
   movl    %eax/*t11831*/, (%esp)
   call    Tree_GetKey
   # movl    %eax, %eax/*t11693*/
   movl    %eax/*t11693*/, 8(%esp)
   movl    %ebx/*t11692*/, 4(%esp)
   movl    8(%ebp), %ebx/*t12010*/
   movl    %ebx/*t12010*/, (%esp)
   call    Tree_Compare
   # movl    %eax, %eax/*t11832*/
   movl    $0, %ebx/*t12011*/
   cmpl    %ebx/*t12011*/, %eax/*t11832*/
   jne     L_4324
L_4325:
   movl    8(%ebp), %ebx/*t12013*/
   movl    20(%ebx/*t12013*/), %ebx/*t12012*/
   movl    %ebx/*t12012*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12014*/
   movl    %ebx/*t12014*/, (%esp)
   call    Tree_SetRight
   movl    %eax, %ebx/*t11691*/
   movl    $0, %ebx/*t12015*/
   movl    %ebx/*t12015*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12016*/
   movl    %ebx/*t12016*/, (%esp)
   call    Tree_SetHas_Right
   movl    %eax, %ebx/*t11691*/
L_4326:
L_4323:
L_4320:
   movl    $1, %ebx/*t12017*/
   movl    %ebx/*t12017*/, %eax
   movl    -4(%ebp), %ebx/*t12018*/
   # movl    %ebx/*t12018*/, %ebx
   # movl    %esi/*t11695*/, %esi
   # movl    %edi/*t11696*/, %edi
   jmp     DONE_4387
L_4318:
   movl    16(%ebp), %ebx/*t12019*/
   movl    %ebx/*t12019*/, 8(%esp)
   movl    12(%ebp), %ebx/*t12020*/
   movl    %ebx/*t12020*/, 4(%esp)
   movl    8(%ebp), %ebx/*t12021*/
   movl    %ebx/*t12021*/, (%esp)
   call    Tree_RemoveLeft
   movl    %eax, %ebx/*t11691*/
   jmp     L_4320
L_4321:
   movl    16(%ebp), %ebx/*t12022*/
   movl    %ebx/*t12022*/, 8(%esp)
   movl    12(%ebp), %ebx/*t12023*/
   movl    %ebx/*t12023*/, 4(%esp)
   movl    8(%ebp), %ebx/*t12024*/
   movl    %ebx/*t12024*/, (%esp)
   call    Tree_RemoveRight
   movl    %eax, %ebx/*t11691*/
   jmp     L_4323
L_4324:
   movl    8(%ebp), %ebx/*t12026*/
   movl    20(%ebx/*t12026*/), %ebx/*t12025*/
   movl    %ebx/*t12025*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12027*/
   movl    %ebx/*t12027*/, (%esp)
   call    Tree_SetLeft
   movl    %eax, %ebx/*t11691*/
   movl    $0, %ebx/*t12028*/
   movl    %ebx/*t12028*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12029*/
   movl    %ebx/*t12029*/, (%esp)
   call    Tree_SetHas_Left
   movl    %eax, %ebx/*t11691*/
   jmp     L_4326
DONE_4387:
   #return sink
   leave
   ret
   .size Tree_Remove, .-Tree_Remove

.globl Tree_RemoveRight
     .type Tree_RemoveRight, @function
Tree_RemoveRight:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4388:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t11699*/
   # movl    %edi, %edi/*t11700*/
L_4329:
   movl    16(%ebp), %ebx/*t12030*/
   movl    %ebx/*t12030*/, (%esp)
   call    Tree_GetHas_Right
   # movl    %eax, %eax/*t11858*/
   movl    $0, %ebx/*t12031*/
   cmpl    %ebx/*t12031*/, %eax/*t11858*/
   jne     L_4328
L_4327:
   movl    8(%ebp), %ebx/*t12033*/
   movl    20(%ebx/*t12033*/), %ebx/*t12032*/
   movl    %ebx/*t12032*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12034*/
   movl    %ebx/*t12034*/, (%esp)
   call    Tree_SetRight
   movl    %eax, %ebx/*t11697*/
   movl    $0, %ebx/*t12035*/
   movl    %ebx/*t12035*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12036*/
   movl    %ebx/*t12036*/, (%esp)
   call    Tree_SetHas_Right
   movl    %eax, %ebx/*t11697*/
   movl    $1, %ebx/*t12037*/
   movl    %ebx/*t12037*/, %eax
   movl    -4(%ebp), %ebx/*t12038*/
   # movl    %ebx/*t12038*/, %ebx
   # movl    %esi/*t11699*/, %esi
   # movl    %edi/*t11700*/, %edi
   jmp     DONE_4389
L_4328:
   movl    16(%ebp), %ebx/*t12039*/
   # movl    %ebx/*t12039*/, %ebx/*t11861*/
   movl    16(%ebp), %eax/*t12040*/
   movl    %eax/*t12040*/, (%esp)
   call    Tree_GetRight
   # movl    %eax, %eax/*t11860*/
   movl    %eax/*t11860*/, (%esp)
   call    Tree_GetKey
   # movl    %eax, %eax/*t11859*/
   movl    %eax/*t11859*/, 4(%esp)
   movl    %ebx/*t11861*/, (%esp)
   call    Tree_SetKey
   movl    %eax, %ebx/*t11697*/
   movl    16(%ebp), %ebx/*t12041*/
   movl    %ebx/*t12041*/, 12(%ebp)
   movl    %ebp, %ebx/*t12042*/
   addl    $16, %ebx/*t12042*/
   # movl    %ebx/*t12042*/, %ebx/*t11863*/
   movl    16(%ebp), %eax/*t12043*/
   movl    %eax/*t12043*/, (%esp)
   call    Tree_GetRight
   # movl    %eax, %eax/*t11862*/
   movl    %eax/*t11862*/, (%ebx/*t11863*/)
   jmp     L_4329
DONE_4389:
   #return sink
   leave
   ret
   .size Tree_RemoveRight, .-Tree_RemoveRight

.globl Tree_RemoveLeft
     .type Tree_RemoveLeft, @function
Tree_RemoveLeft:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4390:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t11703*/
   # movl    %edi, %edi/*t11704*/
L_4332:
   movl    16(%ebp), %ebx/*t12044*/
   movl    %ebx/*t12044*/, (%esp)
   call    Tree_GetHas_Left
   # movl    %eax, %eax/*t11877*/
   movl    $0, %ebx/*t12045*/
   cmpl    %ebx/*t12045*/, %eax/*t11877*/
   jne     L_4331
L_4330:
   movl    8(%ebp), %ebx/*t12047*/
   movl    20(%ebx/*t12047*/), %ebx/*t12046*/
   movl    %ebx/*t12046*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12048*/
   movl    %ebx/*t12048*/, (%esp)
   call    Tree_SetLeft
   movl    %eax, %ebx/*t11701*/
   movl    $0, %ebx/*t12049*/
   movl    %ebx/*t12049*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12050*/
   movl    %ebx/*t12050*/, (%esp)
   call    Tree_SetHas_Left
   movl    %eax, %ebx/*t11701*/
   movl    $1, %ebx/*t12051*/
   movl    %ebx/*t12051*/, %eax
   movl    -4(%ebp), %ebx/*t12052*/
   # movl    %ebx/*t12052*/, %ebx
   # movl    %esi/*t11703*/, %esi
   # movl    %edi/*t11704*/, %edi
   jmp     DONE_4391
L_4331:
   movl    16(%ebp), %ebx/*t12053*/
   # movl    %ebx/*t12053*/, %ebx/*t11880*/
   movl    16(%ebp), %eax/*t12054*/
   movl    %eax/*t12054*/, (%esp)
   call    Tree_GetLeft
   # movl    %eax, %eax/*t11879*/
   movl    %eax/*t11879*/, (%esp)
   call    Tree_GetKey
   # movl    %eax, %eax/*t11878*/
   movl    %eax/*t11878*/, 4(%esp)
   movl    %ebx/*t11880*/, (%esp)
   call    Tree_SetKey
   movl    %eax, %ebx/*t11701*/
   movl    16(%ebp), %ebx/*t12055*/
   movl    %ebx/*t12055*/, 12(%ebp)
   movl    %ebp, %ebx/*t12056*/
   addl    $16, %ebx/*t12056*/
   # movl    %ebx/*t12056*/, %ebx/*t11882*/
   movl    16(%ebp), %eax/*t12057*/
   movl    %eax/*t12057*/, (%esp)
   call    Tree_GetLeft
   # movl    %eax, %eax/*t11881*/
   movl    %eax/*t11881*/, (%ebx/*t11882*/)
   jmp     L_4332
DONE_4391:
   #return sink
   leave
   ret
   .size Tree_RemoveLeft, .-Tree_RemoveLeft

.globl Tree_Search
     .type Tree_Search, @function
Tree_Search:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $16, %esp
L_4392:
   movl    %ebx, -12(%ebp)
   movl    %esi, -8(%ebp)
   movl    %edi, -4(%ebp)
   movl    8(%ebp), %ebx/*t12058*/
   movl    %ebx/*t12058*/, %edi/*t11707*/
   movl    $1, %ebx/*t12059*/
   # movl    %ebx/*t12059*/, %ebx/*t11705*/
   movl    $0, %esi/*t12060*/
   # movl    %esi/*t12060*/, %esi/*t11706*/
L_4335:
   movl    $0, %eax/*t12061*/
   cmpl    %eax/*t12061*/, %ebx/*t11705*/
   jne     L_4334
L_4333:
   movl    %esi/*t11706*/, %eax
   movl    -12(%ebp), %ebx/*t12062*/
   # movl    %ebx/*t12062*/, %ebx
   movl    -8(%ebp), %esi/*t12063*/
   # movl    %esi/*t12063*/, %esi
   movl    -4(%ebp), %edi/*t12064*/
   # movl    %edi/*t12064*/, %edi
   jmp     DONE_4393
L_4334:
   movl    %edi/*t11707*/, (%esp)
   call    Tree_GetKey
   movl    %eax, %ecx/*t11708*/
   movl    12(%ebp), %eax/*t12065*/
   cmpl    %ecx/*t11708*/, %eax/*t12065*/
   jl      L_4336
L_4337:
   movl    12(%ebp), %eax/*t12066*/
   cmpl    %eax/*t12066*/, %ecx/*t11708*/
   jl      L_4342
L_4343:
   movl    $1, %ebx/*t12067*/
   movl    %ebx/*t12067*/, %esi/*t11706*/
   movl    $0, %ebx/*t12068*/
   # movl    %ebx/*t12068*/, %ebx/*t11705*/
L_4344:
L_4338:
   jmp     L_4335
L_4336:
   movl    %edi/*t11707*/, (%esp)
   call    Tree_GetHas_Left
   movl    %eax, %ecx/*t11896*/
   movl    $0, %eax/*t12069*/
   cmpl    %eax/*t12069*/, %ecx/*t11896*/
   jne     L_4339
L_4340:
   movl    $0, %ebx/*t12070*/
   # movl    %ebx/*t12070*/, %ebx/*t11705*/
L_4341:
   jmp     L_4338
L_4339:
   movl    %edi/*t11707*/, (%esp)
   call    Tree_GetLeft
   movl    %eax, %edi/*t11707*/
   jmp     L_4341
L_4342:
   movl    %edi/*t11707*/, (%esp)
   call    Tree_GetHas_Right
   movl    %eax, %ecx/*t11897*/
   movl    $0, %eax/*t12071*/
   cmpl    %eax/*t12071*/, %ecx/*t11897*/
   jne     L_4345
L_4346:
   movl    $0, %ebx/*t12072*/
   # movl    %ebx/*t12072*/, %ebx/*t11705*/
L_4347:
   jmp     L_4344
L_4345:
   movl    %edi/*t11707*/, (%esp)
   call    Tree_GetRight
   movl    %eax, %edi/*t11707*/
   jmp     L_4347
DONE_4393:
   #return sink
   leave
   ret
   .size Tree_Search, .-Tree_Search

.globl Tree_Print
     .type Tree_Print, @function
Tree_Print:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_4394:
   # movl    %ebx, %ebx/*t11714*/
   # movl    %esi, %esi/*t11715*/
   # movl    %edi, %edi/*t11716*/
   movl    8(%ebp), %eax/*t11910*/
   # movl    %eax/*t11910*/, %eax/*t11712*/
   movl    %eax/*t11712*/, 4(%esp)
   movl    8(%ebp), %eax/*t11911*/
   movl    %eax/*t11911*/, (%esp)
   call    Tree_RecPrint
   # movl    %eax, %eax/*t11713*/
   movl    $1, %eax/*t11912*/
   # movl    %eax/*t11912*/, %eax
   # movl    %ebx/*t11714*/, %ebx
   # movl    %esi/*t11715*/, %esi
   # movl    %edi/*t11716*/, %edi
DONE_4395:
   #return sink
   leave
   ret
   .size Tree_Print, .-Tree_Print

.globl Tree_RecPrint
     .type Tree_RecPrint, @function
Tree_RecPrint:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4396:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t11719*/
   # movl    %edi, %edi/*t11720*/
   movl    12(%ebp), %ebx/*t12073*/
   movl    %ebx/*t12073*/, (%esp)
   call    Tree_GetHas_Left
   # movl    %eax, %eax/*t11913*/
   movl    $0, %ebx/*t12074*/
   cmpl    %ebx/*t12074*/, %eax/*t11913*/
   jne     L_4348
L_4349:
   movl    $1, %ebx/*t12075*/
   # movl    %ebx/*t12075*/, %ebx/*t11717*/
L_4350:
   movl    12(%ebp), %ebx/*t12076*/
   movl    %ebx/*t12076*/, (%esp)
   call    Tree_GetKey
   movl    %eax, %ebx/*t11916*/
   movl    %ebx/*t11916*/, (%esp)
   call    mj_println
   movl    12(%ebp), %ebx/*t12077*/
   movl    %ebx/*t12077*/, (%esp)
   call    Tree_GetHas_Right
   # movl    %eax, %eax/*t11917*/
   movl    $0, %ebx/*t12078*/
   cmpl    %ebx/*t12078*/, %eax/*t11917*/
   jne     L_4351
L_4352:
   movl    $1, %ebx/*t12079*/
   # movl    %ebx/*t12079*/, %ebx/*t11717*/
L_4353:
   movl    $1, %ebx/*t12080*/
   movl    %ebx/*t12080*/, %eax
   movl    -4(%ebp), %ebx/*t12081*/
   # movl    %ebx/*t12081*/, %ebx
   # movl    %esi/*t11719*/, %esi
   # movl    %edi/*t11720*/, %edi
   jmp     DONE_4397
L_4348:
   movl    8(%ebp), %ebx/*t12082*/
   # movl    %ebx/*t12082*/, %ebx/*t11915*/
   movl    12(%ebp), %eax/*t12083*/
   movl    %eax/*t12083*/, (%esp)
   call    Tree_GetLeft
   # movl    %eax, %eax/*t11914*/
   movl    %eax/*t11914*/, 4(%esp)
   movl    %ebx/*t11915*/, (%esp)
   call    Tree_RecPrint
   movl    %eax, %ebx/*t11717*/
   jmp     L_4350
L_4351:
   movl    8(%ebp), %ebx/*t12084*/
   # movl    %ebx/*t12084*/, %ebx/*t11919*/
   movl    12(%ebp), %eax/*t12085*/
   movl    %eax/*t12085*/, (%esp)
   call    Tree_GetRight
   # movl    %eax, %eax/*t11918*/
   movl    %eax/*t11918*/, 4(%esp)
   movl    %ebx/*t11919*/, (%esp)
   call    Tree_RecPrint
   movl    %eax, %ebx/*t11717*/
   jmp     L_4353
DONE_4397:
   #return sink
   leave
   ret
   .size Tree_RecPrint, .-Tree_RecPrint

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
