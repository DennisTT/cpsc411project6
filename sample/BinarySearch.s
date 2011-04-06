   .text
.globl mj_main
     .type mj_main, @function
mj_main:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_223:
   # movl    %ebx, %ebx/*t535*/
   # movl    %esi, %esi/*t536*/
   # movl    %edi, %edi/*t537*/
   movl    $8, %eax/*t577*/
   movl    %eax/*t577*/, (%esp)
   call    mj_new_object
   movl    %eax, %ecx/*t576*/
   movl    $20, %eax/*t578*/
   movl    %eax/*t578*/, 4(%esp)
   movl    %ecx/*t576*/, (%esp)
   call    BS_Start
   # movl    %eax, %eax/*t575*/
   movl    %eax/*t575*/, (%esp)
   call    mj_println
   # movl    %ebx/*t535*/, %ebx
   # movl    %esi/*t536*/, %esi
   # movl    %edi/*t537*/, %edi
DONE_224:
   #return sink
   leave
   ret
   .size mj_main, .-mj_main

.globl BS_Start
     .type BS_Start, @function
BS_Start:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_225:
   # movl    %ebx, %ebx/*t540*/
   # movl    %esi, %esi/*t541*/
   # movl    %edi, %edi/*t542*/
   movl    12(%ebp), %eax/*t587*/
   movl    %eax/*t587*/, 4(%esp)
   movl    8(%ebp), %eax/*t588*/
   movl    %eax/*t588*/, (%esp)
   call    BS_Init
   # movl    %eax, %eax/*t538*/
   movl    8(%ebp), %eax/*t589*/
   movl    %eax/*t589*/, (%esp)
   call    BS_Print
   # movl    %eax, %eax/*t539*/
   movl    $8, %eax/*t590*/
   movl    %eax/*t590*/, 4(%esp)
   movl    8(%ebp), %eax/*t591*/
   movl    %eax/*t591*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t579*/
   movl    $0, %eax/*t592*/
   cmpl    %eax/*t592*/, %ecx/*t579*/
   jne     L_169
L_170:
   movl    $0, %eax/*t593*/
   movl    %eax/*t593*/, (%esp)
   call    mj_println
L_171:
   movl    $19, %eax/*t594*/
   movl    %eax/*t594*/, 4(%esp)
   movl    8(%ebp), %eax/*t595*/
   movl    %eax/*t595*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t580*/
   movl    $0, %eax/*t596*/
   cmpl    %eax/*t596*/, %ecx/*t580*/
   jne     L_172
L_173:
   movl    $0, %eax/*t597*/
   movl    %eax/*t597*/, (%esp)
   call    mj_println
L_174:
   movl    $20, %eax/*t598*/
   movl    %eax/*t598*/, 4(%esp)
   movl    8(%ebp), %eax/*t599*/
   movl    %eax/*t599*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t581*/
   movl    $0, %eax/*t600*/
   cmpl    %eax/*t600*/, %ecx/*t581*/
   jne     L_175
L_176:
   movl    $0, %eax/*t601*/
   movl    %eax/*t601*/, (%esp)
   call    mj_println
L_177:
   movl    $21, %eax/*t602*/
   movl    %eax/*t602*/, 4(%esp)
   movl    8(%ebp), %eax/*t603*/
   movl    %eax/*t603*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t582*/
   movl    $0, %eax/*t604*/
   cmpl    %eax/*t604*/, %ecx/*t582*/
   jne     L_178
L_179:
   movl    $0, %eax/*t605*/
   movl    %eax/*t605*/, (%esp)
   call    mj_println
L_180:
   movl    $37, %eax/*t606*/
   movl    %eax/*t606*/, 4(%esp)
   movl    8(%ebp), %eax/*t607*/
   movl    %eax/*t607*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t583*/
   movl    $0, %eax/*t608*/
   cmpl    %eax/*t608*/, %ecx/*t583*/
   jne     L_181
L_182:
   movl    $0, %eax/*t609*/
   movl    %eax/*t609*/, (%esp)
   call    mj_println
L_183:
   movl    $38, %eax/*t610*/
   movl    %eax/*t610*/, 4(%esp)
   movl    8(%ebp), %eax/*t611*/
   movl    %eax/*t611*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t584*/
   movl    $0, %eax/*t612*/
   cmpl    %eax/*t612*/, %ecx/*t584*/
   jne     L_184
L_185:
   movl    $0, %eax/*t613*/
   movl    %eax/*t613*/, (%esp)
   call    mj_println
L_186:
   movl    $39, %eax/*t614*/
   movl    %eax/*t614*/, 4(%esp)
   movl    8(%ebp), %eax/*t615*/
   movl    %eax/*t615*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t585*/
   movl    $0, %eax/*t616*/
   cmpl    %eax/*t616*/, %ecx/*t585*/
   jne     L_187
L_188:
   movl    $0, %eax/*t617*/
   movl    %eax/*t617*/, (%esp)
   call    mj_println
L_189:
   movl    $50, %eax/*t618*/
   movl    %eax/*t618*/, 4(%esp)
   movl    8(%ebp), %eax/*t619*/
   movl    %eax/*t619*/, (%esp)
   call    BS_Search
   movl    %eax, %ecx/*t586*/
   movl    $0, %eax/*t620*/
   cmpl    %eax/*t620*/, %ecx/*t586*/
   jne     L_190
L_191:
   movl    $0, %eax/*t621*/
   movl    %eax/*t621*/, (%esp)
   call    mj_println
L_192:
   movl    $999, %eax/*t622*/
   # movl    %eax/*t622*/, %eax
   # movl    %ebx/*t540*/, %ebx
   # movl    %esi/*t541*/, %esi
   # movl    %edi/*t542*/, %edi
   jmp     DONE_226
L_169:
   movl    $1, %eax/*t623*/
   movl    %eax/*t623*/, (%esp)
   call    mj_println
   jmp     L_171
L_172:
   movl    $1, %eax/*t624*/
   movl    %eax/*t624*/, (%esp)
   call    mj_println
   jmp     L_174
L_175:
   movl    $1, %eax/*t625*/
   movl    %eax/*t625*/, (%esp)
   call    mj_println
   jmp     L_177
L_178:
   movl    $1, %eax/*t626*/
   movl    %eax/*t626*/, (%esp)
   call    mj_println
   jmp     L_180
L_181:
   movl    $1, %eax/*t627*/
   movl    %eax/*t627*/, (%esp)
   call    mj_println
   jmp     L_183
L_184:
   movl    $1, %eax/*t628*/
   movl    %eax/*t628*/, (%esp)
   call    mj_println
   jmp     L_186
L_187:
   movl    $1, %eax/*t629*/
   movl    %eax/*t629*/, (%esp)
   call    mj_println
   jmp     L_189
L_190:
   movl    $1, %eax/*t630*/
   movl    %eax/*t630*/, (%esp)
   call    mj_println
   jmp     L_192
DONE_226:
   #return sink
   leave
   ret
   .size BS_Start, .-BS_Start

.globl BS_Search
     .type BS_Search, @function
BS_Search:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $24, %esp
L_227:
   movl    %ebx, -12(%ebp)
   movl    %esi, -8(%ebp)
   movl    %edi, -4(%ebp)
   movl    $0, %ebx/*t709*/
   movl    %ebx/*t709*/, %edi/*t548*/
   movl    $0, %ebx/*t710*/
   # movl    %ebx/*t710*/, %ebx/*t543*/
   movl    8(%ebp), %ebx/*t714*/
   movl    (%ebx/*t714*/), %ebx/*t713*/
   movl    %ebx/*t713*/, %esi/*t712*/
   movl    $4, %ebx/*t715*/
   subl    %ebx/*t715*/, %esi/*t712*/
   movl    (%esi/*t712*/), %ebx/*t711*/
   movl    %ebx/*t711*/, %esi/*t544*/
   movl    %esi/*t544*/, %ebx/*t716*/
   decl    %ebx/*t716*/
   movl    %ebx/*t716*/, %esi/*t544*/
   movl    $0, %ebx/*t717*/
   # movl    %ebx/*t717*/, %ebx/*t545*/
   movl    $1, %eax/*t718*/
   movl    %eax/*t718*/, %ecx/*t546*/
L_195:
   movl    $0, %eax/*t719*/
   cmpl    %eax/*t719*/, %ecx/*t546*/
   jne     L_194
L_193:
   movl    12(%ebp), %ebx/*t720*/
   movl    %ebx/*t720*/, 8(%esp)
   movl    %edi/*t548*/, 4(%esp)
   movl    8(%ebp), %ebx/*t721*/
   movl    %ebx/*t721*/, (%esp)
   call    BS_Compare
   movl    %eax, %esi/*t632*/
   movl    $0, %ebx/*t722*/
   cmpl    %ebx/*t722*/, %esi/*t632*/
   jne     L_205
L_206:
   movl    $0, %ebx/*t723*/
   # movl    %ebx/*t723*/, %ebx/*t543*/
L_207:
   movl    %ebx/*t543*/, %eax
   movl    -12(%ebp), %ebx/*t724*/
   # movl    %ebx/*t724*/, %ebx
   movl    -8(%ebp), %esi/*t725*/
   # movl    %esi/*t725*/, %esi
   movl    -4(%ebp), %edi/*t726*/
   # movl    %edi/*t726*/, %edi
   jmp     DONE_228
L_194:
   movl    %ebx/*t545*/, %edi/*t727*/
   addl    %esi/*t544*/, %edi/*t727*/
   movl    %edi/*t727*/, %ecx/*t547*/
   movl    %ecx/*t547*/, 4(%esp)
   movl    8(%ebp), %edi/*t728*/
   movl    %edi/*t728*/, (%esp)
   call    BS_Div
   movl    %eax, %ecx/*t547*/
   movl    8(%ebp), %edi/*t731*/
   movl    (%edi/*t731*/), %edi/*t730*/
   movl    (%edi/*t730*/, %ecx/*t547*/, 4), %edi/*t729*/
   # movl    %edi/*t729*/, %edi/*t548*/
   movl    12(%ebp), %eax/*t732*/
   cmpl    %edi/*t548*/, %eax/*t732*/
   jl      L_196
L_197:
   movl    %ecx/*t547*/, %ebx/*t733*/
   incl    %ebx/*t733*/
   # movl    %ebx/*t733*/, %ebx/*t545*/
L_198:
   movl    12(%ebp), %eax/*t734*/
   movl    %eax/*t734*/, 8(%esp)
   movl    %edi/*t548*/, 4(%esp)
   movl    8(%ebp), %eax/*t735*/
   movl    %eax/*t735*/, (%esp)
   call    BS_Compare
   movl    %eax, %ecx/*t631*/
   movl    $0, %eax/*t736*/
   cmpl    %eax/*t736*/, %ecx/*t631*/
   jne     L_199
L_200:
   movl    $1, %eax/*t737*/
   movl    %eax/*t737*/, %ecx/*t546*/
L_201:
   cmpl    %ebx/*t545*/, %esi/*t544*/
   jl      L_202
L_203:
   movl    $0, %eax/*t738*/
   # movl    %eax/*t738*/, %eax/*t549*/
L_204:
   jmp     L_195
L_196:
   movl    %ecx/*t547*/, %esi/*t739*/
   decl    %esi/*t739*/
   # movl    %esi/*t739*/, %esi/*t544*/
   jmp     L_198
L_199:
   movl    $0, %eax/*t740*/
   movl    %eax/*t740*/, %ecx/*t546*/
   jmp     L_201
L_202:
   movl    $0, %eax/*t741*/
   movl    %eax/*t741*/, %ecx/*t546*/
   jmp     L_204
L_205:
   movl    $1, %ebx/*t742*/
   # movl    %ebx/*t742*/, %ebx/*t543*/
   jmp     L_207
DONE_228:
   #return sink
   leave
   ret
   .size BS_Search, .-BS_Search

.globl BS_Div
     .type BS_Div, @function
BS_Div:
   pushl  %ebp
   movl   %esp, %ebp
L_229:
   # movl    %ebx, %ebx/*t556*/
   # movl    %esi, %esi/*t557*/
   # movl    %edi, %edi/*t558*/
   movl    $0, %eax/*t664*/
   movl    %eax/*t664*/, %edx/*t553*/
   movl    $0, %eax/*t665*/
   # movl    %eax/*t665*/, %eax/*t554*/
   movl    12(%ebp), %ecx/*t667*/
   # movl    %ecx/*t667*/, %ecx/*t666*/
   decl    %ecx/*t666*/
   # movl    %ecx/*t666*/, %ecx/*t555*/
L_210:
   cmpl    %ecx/*t555*/, %eax/*t554*/
   jl      L_209
L_208:
   movl    %edx/*t553*/, %eax
   # movl    %ebx/*t556*/, %ebx
   # movl    %esi/*t557*/, %esi
   # movl    %edi/*t558*/, %edi
   jmp     DONE_230
L_209:
   # movl    %edx/*t553*/, %edx/*t668*/
   incl    %edx/*t668*/
   # movl    %edx/*t668*/, %edx/*t553*/
   # movl    %eax/*t554*/, %eax/*t669*/
   addl    $2, %eax/*t669*/
   # movl    %eax/*t669*/, %eax/*t554*/
   jmp     L_210
DONE_230:
   #return sink
   leave
   ret
   .size BS_Div, .-BS_Div

.globl BS_Compare
     .type BS_Compare, @function
BS_Compare:
   pushl  %ebp
   movl   %esp, %ebp
L_231:
   # movl    %ebx, %ebx/*t561*/
   # movl    %esi, %esi/*t562*/
   # movl    %edi, %edi/*t563*/
   movl    $0, %eax/*t670*/
   # movl    %eax/*t670*/, %eax/*t559*/
   movl    16(%ebp), %eax/*t672*/
   # movl    %eax/*t672*/, %eax/*t671*/
   incl    %eax/*t671*/
   movl    %eax/*t671*/, %ecx/*t560*/
   movl    12(%ebp), %edx/*t673*/
   movl    16(%ebp), %eax/*t674*/
   cmpl    %eax/*t674*/, %edx/*t673*/
   jl      L_211
L_212:
   movl    12(%ebp), %eax/*t675*/
   cmpl    %ecx/*t560*/, %eax/*t675*/
   jl      L_215
L_214:
   movl    $0, %eax/*t676*/
   # movl    %eax/*t676*/, %eax/*t559*/
L_216:
L_213:
   # movl    %eax/*t559*/, %eax
   # movl    %ebx/*t561*/, %ebx
   # movl    %esi/*t562*/, %esi
   # movl    %edi/*t563*/, %edi
   jmp     DONE_232
L_211:
   movl    $0, %eax/*t677*/
   # movl    %eax/*t677*/, %eax/*t559*/
   jmp     L_213
L_215:
   movl    $1, %eax/*t678*/
   # movl    %eax/*t678*/, %eax/*t559*/
   jmp     L_216
DONE_232:
   #return sink
   leave
   ret
   .size BS_Compare, .-BS_Compare

.globl BS_Print
     .type BS_Print, @function
BS_Print:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $8, %esp
L_233:
   movl    %ebx, -4(%ebp)
   # movl    %esi, %esi/*t566*/
   # movl    %edi, %edi/*t567*/
   movl    $1, %ebx/*t743*/
   # movl    %ebx/*t743*/, %ebx/*t564*/
L_219:
   movl    8(%ebp), %eax/*t745*/
   movl    4(%eax/*t745*/), %eax/*t744*/
   cmpl    %eax/*t744*/, %ebx/*t564*/
   jl      L_218
L_217:
   movl    $99999, %ebx/*t746*/
   movl    %ebx/*t746*/, (%esp)
   call    mj_println
   movl    $0, %ebx/*t747*/
   movl    %ebx/*t747*/, %eax
   movl    -4(%ebp), %ebx/*t748*/
   # movl    %ebx/*t748*/, %ebx
   # movl    %esi/*t566*/, %esi
   # movl    %edi/*t567*/, %edi
   jmp     DONE_234
L_218:
   movl    8(%ebp), %eax/*t751*/
   movl    (%eax/*t751*/), %eax/*t750*/
   movl    (%eax/*t750*/, %ebx/*t564*/, 4), %eax/*t749*/
   movl    %eax/*t749*/, (%esp)
   call    mj_println
   # movl    %ebx/*t564*/, %ebx/*t752*/
   incl    %ebx/*t752*/
   # movl    %ebx/*t752*/, %ebx/*t564*/
   jmp     L_219
DONE_234:
   #return sink
   leave
   ret
   .size BS_Print, .-BS_Print

.globl BS_Init
     .type BS_Init, @function
BS_Init:
   pushl  %ebp
   movl   %esp, %ebp
   subl   $12, %esp
L_235:
   movl    %ebx, -8(%ebp)
   movl    %esi, -4(%ebp)
   # movl    %edi, %edi/*t574*/
   movl    8(%ebp), %esi/*t753*/
   movl    12(%ebp), %ebx/*t754*/
   movl    %ebx/*t754*/, 4(%esi/*t753*/)
   movl    8(%ebp), %ebx/*t755*/
   movl    %ebx/*t755*/, %esi/*t689*/
   movl    12(%ebp), %ebx/*t756*/
   movl    %ebx/*t756*/, (%esp)
   call    mj_new_array
   movl    %eax, %ebx/*t688*/
   movl    %ebx/*t688*/, (%esi/*t689*/)
   movl    $1, %ebx/*t757*/
   movl    %ebx/*t757*/, %ecx/*t568*/
   movl    8(%ebp), %ebx/*t760*/
   movl    4(%ebx/*t760*/), %ebx/*t759*/
   # movl    %ebx/*t759*/, %ebx/*t758*/
   incl    %ebx/*t758*/
   movl    %ebx/*t758*/, %eax/*t569*/
L_222:
   movl    8(%ebp), %ebx/*t762*/
   movl    4(%ebx/*t762*/), %ebx/*t761*/
   cmpl    %ebx/*t761*/, %ecx/*t568*/
   jl      L_221
L_220:
   movl    $0, %ebx/*t763*/
   movl    %ebx/*t763*/, %eax
   movl    -8(%ebp), %ebx/*t764*/
   # movl    %ebx/*t764*/, %ebx
   movl    -4(%ebp), %esi/*t765*/
   # movl    %esi/*t765*/, %esi
   # movl    %edi/*t574*/, %edi
   jmp     DONE_236
L_221:
   imull   $2, %ecx/*t568*/, %ebx/*t766*/
   # movl    %ebx/*t766*/, %ebx/*t571*/
   movl    %eax/*t569*/, %edx/*t767*/
   movl    $3, %esi/*t768*/
   subl    %esi/*t768*/, %edx/*t767*/
   # movl    %edx/*t767*/, %edx/*t570*/
   movl    8(%ebp), %esi/*t770*/
   movl    (%esi/*t770*/), %esi/*t769*/
   # movl    %ebx/*t571*/, %ebx/*t771*/
   addl    %edx/*t570*/, %ebx/*t771*/
   movl    %ebx/*t771*/, (%esi/*t769*/, %ecx/*t568*/, 4)
   movl    %ecx/*t568*/, %ebx/*t772*/
   incl    %ebx/*t772*/
   movl    %ebx/*t772*/, %ecx/*t568*/
   movl    %eax/*t569*/, %ebx/*t773*/
   decl    %ebx/*t773*/
   movl    %ebx/*t773*/, %eax/*t569*/
   jmp     L_222
DONE_236:
   #return sink
   leave
   ret
   .size BS_Init, .-BS_Init

   .ident	"minijavac: cs411 course project 2009W2"
   .section	.note.GNU-stack,"",@progbits
