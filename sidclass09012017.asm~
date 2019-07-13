org 00h
ljmp start
org 100h
start:
mov 30h,#12h;
mov 31h,#13h;
mov r0,#30h;
mov r1,#40h;
mov r2,#01h;
back:
mov a, @r0
inc r0;
add a,@r0;
djnz r2,back
mov @r1,a;
here: sjmp here
end
