   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $4, %esp
L_4495:
   # movl    %ebx, %ebx/*t12451*/
   # movl    %esi, %esi/*t12452*/
   # movl    %edi, %edi/*t12453*/
   movl    $0, %eax/*t12539*/
   movl    %eax/*t12539*/, (%esp)
   call    mj_new_object
   # movl    %eax, %eax/*t12538*/
   movl    %eax/*t12538*/, (%esp)
   call    LL_Start
   # movl    %eax, %eax/*t12537*/
   movl    %eax/*t12537*/, (%esp)
   call    mj_println
   # movl    %ebx/*t12451*/, %ebx
   # movl    %esi/*t12452*/, %esi
   # movl    %edi/*t12453*/, %edi
DONE_4496:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl Element_Init
     .type Element_Init, @function
Element_Init:
   pushl  %ebp
   movl   %esp, %ebp
L_4497:
   # movl    %ebx, %ebx/*t12454*/
   # movl    %esi, %esi/*t12455*/
   # movl    %edi, %edi/*t12456*/
   movl    8(%ebp), %ecx/*t12540*/
   movl    12(%ebp), %eax/*t12541*/
   movl    %eax/*t12541*/, (%ecx/*t12540*/)
   movl    8(%ebp), %ecx/*t12542*/
   movl    16(%ebp), %eax/*t12543*/
   movl    %eax/*t12543*/, 4(%ecx/*t12542*/)
   movl    8(%ebp), %ecx/*t12544*/
   movl    20(%ebp), %eax/*t12545*/
   movl    %eax/*t12545*/, 8(%ecx/*t12544*/)
   movl    $1, %eax/*t12546*/
   # movl    %eax/*t12546*/, %eax
   # movl    %ebx/*t12454*/, %ebx
   # movl    %esi/*t12455*/, %esi
   # movl    %edi/*t12456*/, %edi
DONE_4498:
   #return sink
   leave
   ret
   .size Element_Init, .-Element_Init

.globl Element_GetAge
     .type Element_GetAge, @function
Element_GetAge:
   pushl  %ebp
   movl   %esp, %ebp
L_4499:
   # movl    %ebx, %ebx/*t12457*/
   # movl    %esi, %esi/*t12458*/
   # movl    %edi, %edi/*t12459*/
   movl    8(%ebp), %eax/*t12548*/
   movl    (%eax/*t12548*/), %eax/*t12547*/
   # movl    %eax/*t12547*/, %eax
   # movl    %ebx/*t12457*/, %ebx
   # movl    %esi/*t12458*/, %esi
   # movl    %edi/*t12459*/, %edi
DONE_4500:
   #return sink
   leave
   ret
   .size Element_GetAge, .-Element_GetAge

.globl Element_GetSalary
     .type Element_GetSalary, @function
Element_GetSalary:
   pushl  %ebp
   movl   %esp, %ebp
L_4501:
   # movl    %ebx, %ebx/*t12460*/
   # movl    %esi, %esi/*t12461*/
   # movl    %edi, %edi/*t12462*/
   movl    8(%ebp), %eax/*t12550*/
   movl    4(%eax/*t12550*/), %eax/*t12549*/
   # movl    %eax/*t12549*/, %eax
   # movl    %ebx/*t12460*/, %ebx
   # movl    %esi/*t12461*/, %esi
   # movl    %edi/*t12462*/, %edi
DONE_4502:
   #return sink
   leave
   ret
   .size Element_GetSalary, .-Element_GetSalary

.globl Element_GetMarried
     .type Element_GetMarried, @function
Element_GetMarried:
   pushl  %ebp
   movl   %esp, %ebp
L_4503:
   # movl    %ebx, %ebx/*t12463*/
   # movl    %esi, %esi/*t12464*/
   # movl    %edi, %edi/*t12465*/
   movl    8(%ebp), %eax/*t12552*/
   movl    8(%eax/*t12552*/), %eax/*t12551*/
   # movl    %eax/*t12551*/, %eax
   # movl    %ebx/*t12463*/, %ebx
   # movl    %esi/*t12464*/, %esi
   # movl    %edi/*t12465*/, %edi
DONE_4504:
   #return sink
   leave
   ret
   .size Element_GetMarried, .-Element_GetMarried

.globl Element_Equal
     .type Element_Equal, @function
Element_Equal:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $16, %esp
L_4505:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t12471*/
   # movl    %edi, %edi/*t12472*/
   movl    $1, %ebx/*t12687*/
   # movl    %ebx/*t12687*/, %ebx/*t12466*/
   movl    12(%ebp), %eax/*t12688*/
   movl    %eax/*t12688*/, (%esp)
   call    Element_GetAge
   movl    %eax, %ecx/*t12467*/
   movl    8(%ebp), %eax/*t12690*/
   movl    (%eax/*t12690*/), %eax/*t12689*/
   movl    %eax/*t12689*/, 8(%esp)
   movl    %ecx/*t12467*/, 4(%esp)
   movl    8(%ebp), %eax/*t12691*/
   movl    %eax/*t12691*/, (%esp)
   call    Element_Compare
   movl    %eax, %ecx/*t12553*/
   movl    $0, %eax/*t12692*/
   cmpl    %eax/*t12692*/, %ecx/*t12553*/
   jne     L_4453
L_4452:
   movl    $0, %ebx/*t12693*/
   # movl    %ebx/*t12693*/, %ebx/*t12466*/
L_4454:
   movl    %ebx/*t12466*/, %eax
   movl    -4(%ebp), %ebx/*t12694*/
   # movl    %ebx/*t12694*/, %ebx
   # movl    %esi/*t12471*/, %esi
   # movl    %edi/*t12472*/, %edi
   jmp     DONE_4506
L_4453:
   movl    12(%ebp), %eax/*t12695*/
   movl    %eax/*t12695*/, (%esp)
   call    Element_GetSalary
   movl    %eax, %ecx/*t12468*/
   movl    8(%ebp), %eax/*t12697*/
   movl    4(%eax/*t12697*/), %eax/*t12696*/
   movl    %eax/*t12696*/, 8(%esp)
   movl    %ecx/*t12468*/, 4(%esp)
   movl    8(%ebp), %eax/*t12698*/
   movl    %eax/*t12698*/, (%esp)
   call    Element_Compare
   movl    %eax, %ecx/*t12554*/
   movl    $0, %eax/*t12699*/
   cmpl    %eax/*t12699*/, %ecx/*t12554*/
   jne     L_4456
L_4455:
   movl    $0, %ebx/*t12700*/
   # movl    %ebx/*t12700*/, %ebx/*t12466*/
L_4457:
   jmp     L_4454
L_4456:
   movl    8(%ebp), %eax/*t12702*/
   movl    8(%eax/*t12702*/), %ecx/*t12701*/
   movl    $0, %eax/*t12703*/
   cmpl    %eax/*t12703*/, %ecx/*t12701*/
   jne     L_4458
L_4459:
   movl    12(%ebp), %eax/*t12704*/
   movl    %eax/*t12704*/, (%esp)
   call    Element_GetMarried
   movl    %eax, %ecx/*t12556*/
   movl    $0, %eax/*t12705*/
   cmpl    %eax/*t12705*/, %ecx/*t12556*/
   jne     L_4464
L_4465:
   movl    $0, %eax/*t12706*/
   # movl    %eax/*t12706*/, %eax/*t12469*/
L_4466:
L_4460:
   jmp     L_4457
L_4458:
   movl    12(%ebp), %eax/*t12707*/
   movl    %eax/*t12707*/, (%esp)
   call    Element_GetMarried
   movl    %eax, %ecx/*t12555*/
   movl    $0, %eax/*t12708*/
   cmpl    %eax/*t12708*/, %ecx/*t12555*/
   jne     L_4462
L_4461:
   movl    $0, %ebx/*t12709*/
   # movl    %ebx/*t12709*/, %ebx/*t12466*/
L_4463:
   jmp     L_4460
L_4462:
   movl    $0, %eax/*t12710*/
   # movl    %eax/*t12710*/, %eax/*t12469*/
   jmp     L_4463
L_4464:
   movl    $0, %ebx/*t12711*/
   # movl    %ebx/*t12711*/, %ebx/*t12466*/
   jmp     L_4466
DONE_4506:
   #return sink
   leave
   ret
   .size Element_Equal, .-Element_Equal

.globl Element_Compare
     .type Element_Compare, @function
Element_Compare:
   pushl  %ebp
   movl   %esp, %ebp
L_4507:
   # movl    %ebx, %ebx/*t12475*/
   # movl    %esi, %esi/*t12476*/
   # movl    %edi, %edi/*t12477*/
   movl    $0, %eax/*t12581*/
   # movl    %eax/*t12581*/, %eax/*t12473*/
   movl    16(%ebp), %eax/*t12583*/
   # movl    %eax/*t12583*/, %eax/*t12582*/
   incl    %eax/*t12582*/
   movl    %eax/*t12582*/, %ecx/*t12474*/
   movl    12(%ebp), %edx/*t12584*/
   movl    16(%ebp), %eax/*t12585*/
   cmpl    %eax/*t12585*/, %edx/*t12584*/
   jl      L_4467
L_4468:
   movl    12(%ebp), %eax/*t12586*/
   cmpl    %ecx/*t12474*/, %eax/*t12586*/
   jl      L_4471
L_4470:
   movl    $0, %eax/*t12587*/
   # movl    %eax/*t12587*/, %eax/*t12473*/
L_4472:
L_4469:
   # movl    %eax/*t12473*/, %eax
   # movl    %ebx/*t12475*/, %ebx
   # movl    %esi/*t12476*/, %esi
   # movl    %edi/*t12477*/, %edi
   jmp     DONE_4508
L_4467:
   movl    $0, %eax/*t12588*/
   # movl    %eax/*t12588*/, %eax/*t12473*/
   jmp     L_4469
L_4471:
   movl    $1, %eax/*t12589*/
   # movl    %eax/*t12589*/, %eax/*t12473*/
   jmp     L_4472
DONE_4508:
   #return sink
   leave
   ret
   .size Element_Compare, .-Element_Compare

.globl List_Init
     .type List_Init, @function
List_Init:
   pushl  %ebp
   movl   %esp, %ebp
L_4509:
   # movl    %ebx, %ebx/*t12478*/
   # movl    %esi, %esi/*t12479*/
   # movl    %edi, %edi/*t12480*/
   movl    8(%ebp), %ecx/*t12590*/
   movl    $1, %eax/*t12591*/
   movl    %eax/*t12591*/, 8(%ecx/*t12590*/)
   movl    $1, %eax/*t12592*/
   # movl    %eax/*t12592*/, %eax
   # movl    %ebx/*t12478*/, %ebx
   # movl    %esi/*t12479*/, %esi
   # movl    %edi/*t12480*/, %edi
DONE_4510:
   #return sink
   leave
   ret
   .size List_Init, .-List_Init

.globl List_InitNew
     .type List_InitNew, @function
List_InitNew:
   pushl  %ebp
   movl   %esp, %ebp
L_4511:
   # movl    %ebx, %ebx/*t12481*/
   # movl    %esi, %esi/*t12482*/
   # movl    %edi, %edi/*t12483*/
   movl    8(%ebp), %ecx/*t12593*/
   movl    20(%ebp), %eax/*t12594*/
   movl    %eax/*t12594*/, 8(%ecx/*t12593*/)
   movl    8(%ebp), %ecx/*t12595*/
   movl    12(%ebp), %eax/*t12596*/
   movl    %eax/*t12596*/, (%ecx/*t12595*/)
   movl    8(%ebp), %ecx/*t12597*/
   movl    16(%ebp), %eax/*t12598*/
   movl    %eax/*t12598*/, 4(%ecx/*t12597*/)
   movl    $1, %eax/*t12599*/
   # movl    %eax/*t12599*/, %eax
   # movl    %ebx/*t12481*/, %ebx
   # movl    %esi/*t12482*/, %esi
   # movl    %edi/*t12483*/, %edi
DONE_4512:
   #return sink
   leave
   ret
   .size List_InitNew, .-List_InitNew

.globl List_Insert
     .type List_Insert, @function
List_Insert:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $24, %esp
L_4513:
   movl    %ebx, -8(%ebp)
   movl    %esi, -4(%ebp)
   # movl    %edi, %edi/*t12489*/
   movl    8(%ebp), %ebx/*t12712*/
   # movl    %ebx/*t12712*/, %ebx/*t12485*/
   movl    $12, %esi/*t12713*/
   movl    %esi/*t12713*/, (%esp)
   call    mj_new_object
   movl    %eax, %esi/*t12486*/
   movl    $0, %eax/*t12714*/
   movl    %eax/*t12714*/, 12(%esp)
   movl    %ebx/*t12485*/, 8(%esp)
   movl    12(%ebp), %ebx/*t12715*/
   movl    %ebx/*t12715*/, 4(%esp)
   movl    %esi/*t12486*/, (%esp)
   call    List_InitNew
   movl    %eax, %ebx/*t12484*/
   movl    %esi/*t12486*/, %eax
   movl    -8(%ebp), %ebx/*t12716*/
   # movl    %ebx/*t12716*/, %ebx
   movl    -4(%ebp), %esi/*t12717*/
   # movl    %esi/*t12717*/, %esi
   # movl    %edi/*t12489*/, %edi
DONE_4514:
   #return sink
   leave
   ret
   .size List_Insert, .-List_Insert

.globl List_SetNext
     .type List_SetNext, @function
List_SetNext:
   pushl  %ebp
   movl   %esp, %ebp
L_4515:
   # movl    %ebx, %ebx/*t12490*/
   # movl    %esi, %esi/*t12491*/
   # movl    %edi, %edi/*t12492*/
   movl    8(%ebp), %ecx/*t12604*/
   movl    12(%ebp), %eax/*t12605*/
   movl    %eax/*t12605*/, 4(%ecx/*t12604*/)
   movl    $1, %eax/*t12606*/
   # movl    %eax/*t12606*/, %eax
   # movl    %ebx/*t12490*/, %ebx
   # movl    %esi/*t12491*/, %esi
   # movl    %edi/*t12492*/, %edi
DONE_4516:
   #return sink
   leave
   ret
   .size List_SetNext, .-List_SetNext

.globl List_Delete
     .type List_Delete, @function
List_Delete:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $36, %esp
L_4517:
   movl    %ebx, -28(%ebp)
   movl    %esi, -24(%ebp)
   movl    %edi, -20(%ebp)
   movl    8(%ebp), %ebx/*t12718*/
   movl    %ebx/*t12718*/, -16(%ebp)
   movl    $0, %ebx/*t12719*/
   movl    %ebx/*t12719*/, -12(%ebp)
   movl    $-1, %ebx/*t12720*/
   movl    %ebx/*t12720*/, -8(%ebp)
   movl    8(%ebp), %ebx/*t12721*/
   movl    %ebx/*t12721*/, -4(%ebp)
   movl    8(%ebp), %ebx/*t12722*/
   movl    %ebx/*t12722*/, %edi/*t12497*/
   movl    8(%ebp), %ebx/*t12724*/
   movl    8(%ebx/*t12724*/), %ebx/*t12723*/
   movl    %ebx/*t12723*/, %esi/*t12498*/
   movl    8(%ebp), %ebx/*t12726*/
   movl    (%ebx/*t12726*/), %ebx/*t12725*/
   # movl    %ebx/*t12725*/, %ebx/*t12499*/
L_4475:
   movl    $0, %eax/*t12727*/
   cmpl    %eax/*t12727*/, %esi/*t12498*/
   jne     L_4473
L_4476:
   movl    -12(%ebp), %ecx/*t12728*/
   movl    $0, %eax/*t12729*/
   cmpl    %eax/*t12729*/, %ecx/*t12728*/
   jne     L_4473
L_4474:
   movl    %ebx/*t12499*/, 4(%esp)
   movl    12(%ebp), %eax/*t12730*/
   movl    %eax/*t12730*/, (%esp)
   call    Element_Equal
   movl    %eax, %ecx/*t12607*/
   movl    $0, %eax/*t12731*/
   cmpl    %eax/*t12731*/, %ecx/*t12607*/
   jne     L_4477
L_4478:
   movl    $0, %eax/*t12732*/
   # movl    %eax/*t12732*/, %eax/*t12501*/
L_4479:
   movl    -12(%ebp), %ecx/*t12733*/
   movl    $0, %eax/*t12734*/
   cmpl    %eax/*t12734*/, %ecx/*t12733*/
   jne     L_4484
L_4483:
   movl    -4(%ebp), %ebx/*t12735*/
   movl    %ebx/*t12735*/, %edi/*t12497*/
   movl    -4(%ebp), %ebx/*t12736*/
   movl    %ebx/*t12736*/, (%esp)
   call    List_GetNext
   movl    %eax, -4(%ebp)
   movl    -4(%ebp), %ebx/*t12737*/
   movl    %ebx/*t12737*/, (%esp)
   call    List_GetEnd
   movl    %eax, %esi/*t12498*/
   movl    -4(%ebp), %ebx/*t12738*/
   movl    %ebx/*t12738*/, (%esp)
   call    List_GetElem
   movl    %eax, %ebx/*t12499*/
   movl    $1, %eax/*t12739*/
   movl    %eax/*t12739*/, -8(%ebp)
L_4485:
   jmp     L_4475
L_4477:
   movl    $1, %eax/*t12740*/
   movl    %eax/*t12740*/, -12(%ebp)
   movl    -8(%ebp), %ecx/*t12741*/
   movl    $0, %eax/*t12742*/
   cmpl    %eax/*t12742*/, %ecx/*t12741*/
   jl      L_4480
L_4481:
   movl    $-555, %eax/*t12743*/
   movl    %eax/*t12743*/, (%esp)
   call    mj_println
   # movl    %edi/*t12497*/, %edi/*t12609*/
   movl    -4(%ebp), %eax/*t12744*/
   movl    %eax/*t12744*/, (%esp)
   call    List_GetNext
   # movl    %eax, %eax/*t12608*/
   movl    %eax/*t12608*/, 4(%esp)
   movl    %edi/*t12609*/, (%esp)
   call    List_SetNext
   # movl    %eax, %eax/*t12495*/
   movl    $-555, %eax/*t12745*/
   movl    %eax/*t12745*/, (%esp)
   call    mj_println
L_4482:
   jmp     L_4479
L_4480:
   movl    -4(%ebp), %eax/*t12746*/
   movl    %eax/*t12746*/, (%esp)
   call    List_GetNext
   movl    %eax, -16(%ebp)
   jmp     L_4482
L_4484:
   movl    $0, %eax/*t12747*/
   # movl    %eax/*t12747*/, %eax/*t12501*/
   jmp     L_4485
L_4473:
   movl    -16(%ebp), %ebx/*t12748*/
   movl    %ebx/*t12748*/, %eax
   movl    -28(%ebp), %ebx/*t12749*/
   # movl    %ebx/*t12749*/, %ebx
   movl    -24(%ebp), %esi/*t12750*/
   # movl    %esi/*t12750*/, %esi
   movl    -20(%ebp), %edi/*t12751*/
   # movl    %edi/*t12751*/, %edi
DONE_4518:
   #return sink
   leave
   ret
   .size List_Delete, .-List_Delete

.globl List_Search
     .type List_Search, @function
List_Search:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $20, %esp
L_4519:
   movl    %ebx, -12(%ebp)
   movl    %esi, -8(%ebp)
   movl    %edi, -4(%ebp)
   movl    $0, %ebx/*t12752*/
   movl    %ebx/*t12752*/, %edi/*t12505*/
   movl    8(%ebp), %ebx/*t12753*/
   movl    %ebx/*t12753*/, %esi/*t12506*/
   movl    8(%ebp), %ebx/*t12755*/
   movl    8(%ebx/*t12755*/), %ebx/*t12754*/
   # movl    %ebx/*t12754*/, %ebx/*t12508*/
   movl    8(%ebp), %eax/*t12757*/
   movl    (%eax/*t12757*/), %eax/*t12756*/
   movl    %eax/*t12756*/, %ecx/*t12507*/
L_4488:
   movl    $0, %eax/*t12758*/
   cmpl    %eax/*t12758*/, %ebx/*t12508*/
   jne     L_4486
L_4487:
   movl    %ecx/*t12507*/, 4(%esp)
   movl    12(%ebp), %ebx/*t12759*/
   movl    %ebx/*t12759*/, (%esp)
   call    Element_Equal
   # movl    %eax, %eax/*t12631*/
   movl    $0, %ebx/*t12760*/
   cmpl    %ebx/*t12760*/, %eax/*t12631*/
   jne     L_4489
L_4490:
   movl    $0, %ebx/*t12761*/
   # movl    %ebx/*t12761*/, %ebx/*t12509*/
L_4491:
   movl    %esi/*t12506*/, (%esp)
   call    List_GetNext
   movl    %eax, %esi/*t12506*/
   movl    %esi/*t12506*/, (%esp)
   call    List_GetEnd
   movl    %eax, %ebx/*t12508*/
   movl    %esi/*t12506*/, (%esp)
   call    List_GetElem
   movl    %eax, %ecx/*t12507*/
   jmp     L_4488
L_4489:
   movl    $1, %ebx/*t12762*/
   movl    %ebx/*t12762*/, %edi/*t12505*/
   jmp     L_4491
L_4486:
   movl    %edi/*t12505*/, %eax
   movl    -12(%ebp), %ebx/*t12763*/
   # movl    %ebx/*t12763*/, %ebx
   movl    -8(%ebp), %esi/*t12764*/
   # movl    %esi/*t12764*/, %esi
   movl    -4(%ebp), %edi/*t12765*/
   # movl    %edi/*t12765*/, %edi
DONE_4520:
   #return sink
   leave
   ret
   .size List_Search, .-List_Search

.globl List_GetEnd
     .type List_GetEnd, @function
List_GetEnd:
   pushl  %ebp
   movl   %esp, %ebp
L_4521:
   # movl    %ebx, %ebx/*t12513*/
   # movl    %esi, %esi/*t12514*/
   # movl    %edi, %edi/*t12515*/
   movl    8(%ebp), %eax/*t12644*/
   movl    8(%eax/*t12644*/), %eax/*t12643*/
   # movl    %eax/*t12643*/, %eax
   # movl    %ebx/*t12513*/, %ebx
   # movl    %esi/*t12514*/, %esi
   # movl    %edi/*t12515*/, %edi
DONE_4522:
   #return sink
   leave
   ret
   .size List_GetEnd, .-List_GetEnd

.globl List_GetElem
     .type List_GetElem, @function
List_GetElem:
   pushl  %ebp
   movl   %esp, %ebp
L_4523:
   # movl    %ebx, %ebx/*t12516*/
   # movl    %esi, %esi/*t12517*/
   # movl    %edi, %edi/*t12518*/
   movl    8(%ebp), %eax/*t12646*/
   movl    (%eax/*t12646*/), %eax/*t12645*/
   # movl    %eax/*t12645*/, %eax
   # movl    %ebx/*t12516*/, %ebx
   # movl    %esi/*t12517*/, %esi
   # movl    %edi/*t12518*/, %edi
DONE_4524:
   #return sink
   leave
   ret
   .size List_GetElem, .-List_GetElem

.globl List_GetNext
     .type List_GetNext, @function
List_GetNext:
   pushl  %ebp
   movl   %esp, %ebp
L_4525:
   # movl    %ebx, %ebx/*t12519*/
   # movl    %esi, %esi/*t12520*/
   # movl    %edi, %edi/*t12521*/
   movl    8(%ebp), %eax/*t12648*/
   movl    4(%eax/*t12648*/), %eax/*t12647*/
   # movl    %eax/*t12647*/, %eax
   # movl    %ebx/*t12519*/, %ebx
   # movl    %esi/*t12520*/, %esi
   # movl    %edi/*t12521*/, %edi
DONE_4526:
   #return sink
   leave
   ret
   .size List_GetNext, .-List_GetNext

.globl List_Print
     .type List_Print, @function
List_Print:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_4527:
   movl    %ebx, -8(%ebp)
   movl    %esi, -4(%ebp)
   # movl    %edi, %edi/*t12527*/
   movl    8(%ebp), %ebx/*t12766*/
   movl    %ebx/*t12766*/, %esi/*t12522*/
   movl    8(%ebp), %ebx/*t12768*/
   movl    8(%ebx/*t12768*/), %ebx/*t12767*/
   # movl    %ebx/*t12767*/, %ebx/*t12523*/
   movl    8(%ebp), %eax/*t12770*/
   movl    (%eax/*t12770*/), %eax/*t12769*/
   movl    %eax/*t12769*/, %ecx/*t12524*/
L_4494:
   movl    $0, %eax/*t12771*/
   cmpl    %eax/*t12771*/, %ebx/*t12523*/
   jne     L_4492
L_4493:
   movl    %ecx/*t12524*/, (%esp)
   call    Element_GetAge
   movl    %eax, %ebx/*t12649*/
   movl    %ebx/*t12649*/, (%esp)
   call    mj_println
   movl    %esi/*t12522*/, (%esp)
   call    List_GetNext
   movl    %eax, %esi/*t12522*/
   movl    %esi/*t12522*/, (%esp)
   call    List_GetEnd
   movl    %eax, %ebx/*t12523*/
   movl    %esi/*t12522*/, (%esp)
   call    List_GetElem
   movl    %eax, %ecx/*t12524*/
   jmp     L_4494
L_4492:
   movl    $1, %ebx/*t12772*/
   movl    %ebx/*t12772*/, %eax
   movl    -8(%ebp), %ebx/*t12773*/
   # movl    %ebx/*t12773*/, %ebx
   movl    -4(%ebp), %esi/*t12774*/
   # movl    %esi/*t12774*/, %esi
   # movl    %edi/*t12527*/, %edi
DONE_4528:
   #return sink
   leave
   ret
   .size List_Print, .-List_Print

.globl LL_Start
     .type LL_Start, @function
LL_Start:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $28, %esp
L_4529:
   movl    %ebx, -12(%ebp)
   movl    %esi, -8(%ebp)
   movl    %edi, -4(%ebp)
   movl    $12, %ebx/*t12775*/
   movl    %ebx/*t12775*/, (%esp)
   call    mj_new_object
   movl    %eax, %ebx/*t12529*/
   movl    %ebx/*t12529*/, (%esp)
   call    List_Init
   # movl    %eax, %eax/*t12530*/
   movl    %ebx/*t12529*/, %edi/*t12528*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Init
   # movl    %eax, %eax/*t12530*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Print
   # movl    %eax, %eax/*t12530*/
   movl    $12, %ebx/*t12776*/
   movl    %ebx/*t12776*/, (%esp)
   call    mj_new_object
   movl    %eax, %esi/*t12531*/
   movl    $0, %ebx/*t12777*/
   movl    %ebx/*t12777*/, 12(%esp)
   movl    $37000, %ebx/*t12778*/
   movl    %ebx/*t12778*/, 8(%esp)
   movl    $25, %ebx/*t12779*/
   movl    %ebx/*t12779*/, 4(%esp)
   movl    %esi/*t12531*/, (%esp)
   call    Element_Init
   # movl    %eax, %eax/*t12530*/
   movl    %esi/*t12531*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Insert
   movl    %eax, %edi/*t12528*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Print
   # movl    %eax, %eax/*t12530*/
   movl    $10000000, %ebx/*t12780*/
   movl    %ebx/*t12780*/, (%esp)
   call    mj_println
   movl    $12, %ebx/*t12781*/
   movl    %ebx/*t12781*/, (%esp)
   call    mj_new_object
   movl    %eax, %esi/*t12531*/
   movl    $1, %ebx/*t12782*/
   movl    %ebx/*t12782*/, 12(%esp)
   movl    $42000, %ebx/*t12783*/
   movl    %ebx/*t12783*/, 8(%esp)
   movl    $39, %ebx/*t12784*/
   movl    %ebx/*t12784*/, 4(%esp)
   movl    %esi/*t12531*/, (%esp)
   call    Element_Init
   # movl    %eax, %eax/*t12530*/
   movl    %esi/*t12531*/, %ebx/*t12532*/
   movl    %esi/*t12531*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Insert
   movl    %eax, %edi/*t12528*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Print
   # movl    %eax, %eax/*t12530*/
   movl    $10000000, %esi/*t12785*/
   movl    %esi/*t12785*/, (%esp)
   call    mj_println
   movl    $12, %esi/*t12786*/
   movl    %esi/*t12786*/, (%esp)
   call    mj_new_object
   movl    %eax, %esi/*t12531*/
   movl    $0, %eax/*t12787*/
   movl    %eax/*t12787*/, 12(%esp)
   movl    $34000, %eax/*t12788*/
   movl    %eax/*t12788*/, 8(%esp)
   movl    $22, %eax/*t12789*/
   movl    %eax/*t12789*/, 4(%esp)
   movl    %esi/*t12531*/, (%esp)
   call    Element_Init
   # movl    %eax, %eax/*t12530*/
   movl    %esi/*t12531*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Insert
   movl    %eax, %edi/*t12528*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Print
   # movl    %eax, %eax/*t12530*/
   movl    $12, %esi/*t12790*/
   movl    %esi/*t12790*/, (%esp)
   call    mj_new_object
   movl    %eax, %esi/*t12533*/
   movl    $0, %eax/*t12791*/
   movl    %eax/*t12791*/, 12(%esp)
   movl    $34000, %eax/*t12792*/
   movl    %eax/*t12792*/, 8(%esp)
   movl    $27, %eax/*t12793*/
   movl    %eax/*t12793*/, 4(%esp)
   movl    %esi/*t12533*/, (%esp)
   call    Element_Init
   # movl    %eax, %eax/*t12530*/
   movl    %ebx/*t12532*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Search
   # movl    %eax, %eax/*t12657*/
   movl    %eax/*t12657*/, (%esp)
   call    mj_println
   movl    %esi/*t12533*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Search
   movl    %eax, %esi/*t12658*/
   movl    %esi/*t12658*/, (%esp)
   call    mj_println
   movl    $10000000, %esi/*t12794*/
   movl    %esi/*t12794*/, (%esp)
   call    mj_println
   movl    $12, %esi/*t12795*/
   movl    %esi/*t12795*/, (%esp)
   call    mj_new_object
   movl    %eax, %esi/*t12531*/
   movl    $0, %eax/*t12796*/
   movl    %eax/*t12796*/, 12(%esp)
   movl    $35000, %eax/*t12797*/
   movl    %eax/*t12797*/, 8(%esp)
   movl    $28, %eax/*t12798*/
   movl    %eax/*t12798*/, 4(%esp)
   movl    %esi/*t12531*/, (%esp)
   call    Element_Init
   # movl    %eax, %eax/*t12530*/
   movl    %esi/*t12531*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Insert
   movl    %eax, %edi/*t12528*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Print
   # movl    %eax, %eax/*t12530*/
   movl    $2220000, %eax/*t12799*/
   movl    %eax/*t12799*/, (%esp)
   call    mj_println
   movl    %ebx/*t12532*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Delete
   movl    %eax, %edi/*t12528*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Print
   # movl    %eax, %eax/*t12530*/
   movl    $33300000, %ebx/*t12800*/
   movl    %ebx/*t12800*/, (%esp)
   call    mj_println
   movl    %esi/*t12531*/, 4(%esp)
   movl    %edi/*t12528*/, (%esp)
   call    List_Delete
   movl    %eax, %edi/*t12528*/
   movl    %edi/*t12528*/, (%esp)
   call    List_Print
   # movl    %eax, %eax/*t12530*/
   movl    $44440000, %ebx/*t12801*/
   movl    %ebx/*t12801*/, (%esp)
   call    mj_println
   movl    $0, %ebx/*t12802*/
   movl    %ebx/*t12802*/, %eax
   movl    -12(%ebp), %ebx/*t12803*/
   # movl    %ebx/*t12803*/, %ebx
   movl    -8(%ebp), %esi/*t12804*/
   # movl    %esi/*t12804*/, %esi
   movl    -4(%ebp), %edi/*t12805*/
   # movl    %edi/*t12805*/, %edi
DONE_4530:
   #return sink
   leave
   ret
   .size LL_Start, .-LL_Start

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
