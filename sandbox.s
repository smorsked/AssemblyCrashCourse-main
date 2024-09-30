.export Main
.proc Main
;load graphics data
  

gameloop:
  @vblankWait2: ;wait for new frame to start
    bit $2002
    bpl @vblankWait2
  jmp gameloop
.endproc
