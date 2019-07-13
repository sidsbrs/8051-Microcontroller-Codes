org 0000h
mov tmod,#10h;
start:
clr p2.0
lcall delay25s
sjmp start
delay25s:
mov tl1,#0faH;
mov th1,#0ffH;
setb tr1
B1:jnb tf1,b1
clr tr1
ret
end 


