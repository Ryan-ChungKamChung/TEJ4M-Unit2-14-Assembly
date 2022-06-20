/* -- numericalLabels.s */
.global main
.syntax unified
.text
main:
    push {r4, lr}
    ldr r0, =message1
    bl puts
    b 1f /* Goto label 1 forwards */
    b 2f /* Goto label 2 forwards */
1:
    ldr r0, =message2
    bl puts
1:
    mov r0, 43 /* # Optional in UAL */
    pop {r4, pc} /* End */
2:
    ldr r0, =errmessage
    bl puts
    b 1b /* Goto label 1 backwards */
.data
message1: .asciz "Numerical Label Test\n"
message2: .asciz "Success\n"
errmessage: .asciz "Failure!\n"
.global puts