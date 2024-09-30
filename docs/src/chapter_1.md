# Chapter 1
  | Bits    | Description                                             |
  |---------|---------------------------------------------------------|
  | <tt> 0-4 and some more text <FONT COLOR="#FF0099">(M)</FONT></tt> | <p>Mode bits. These indicate the current processor mode:</p><p>`10000` - User mode<br>`10001` - FIQ mode<br>`10010` - IRQ mode<br>`10011` - Supervisor mode<br>`10111` - Abort mode<br>`11011` - Undefined mode<br>`11111` - System mode<br></p>
  | <tt>   5 <FONT COLOR="#9900CC">(T)</FONT></tt> | [Thumb state](#cpu-state) indicator. If set, the CPU is in Thumb state.  Otherwise it operates in normal ARM state. Software should never attempt to modify this bit itself.
  | <tt>   6 <FONT COLOR="#0099FF">(F)</FONT></tt> | FIQ interrupt disable. Set this to disable FIQ interrupts.
  | <tt>   7 <FONT COLOR="#008800">(I)</FONT></tt> | [IRQ interrupt](interrupts.md) disable. Set this to disable IRQ interrupts. On the GBA this is set by default whenever IRQ mode is entered. Why or how this is the case, I do not know.
  | <tt>8-27 <FONT COLOR="#FF3300">(R)</FONT></tt> | Reserved
  | <tt>  28 <FONT COLOR="#FF0099">(V)</FONT></tt> | Overflow condition code
  | <tt>  29 <FONT COLOR="#9900CC">(C)</FONT></tt> | Carry/Borrow/Extend condition code
  | <tt>  30 <FONT COLOR="#0099FF">(Z)</FONT></tt> | Zero/Equal condition code
  | <tt>  31 <FONT COLOR="#008800">(N)</FONT></tt> | Negative/Less than condition code