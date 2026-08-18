`timescale 1ns / 1ps

module tb_shift_register_4

reg	clk		;
reg	rst_n		;
reg	i_serial	;
reg	i_shift		;

wire [3:0] o_q		;

shift_register_4 uut (

.i_serial(i_serial),
.i_shift(i_shift),
.clk(clk),
.rst_n(rst_m),
.o_q(o_q)
);

always #5 clk = ~clk;

initial begin

clk		= 1'b0	;
rst_n		= 1'b0	;
i_serial	= 1'b0	;
i_shift		= 1'b0	;

#12 rst_n 	= 1'b1	;

@(negedge clk)		;
i_shift		= 1'b1	;
i_serial	= 1'b1	;



login as: hah003
hah003@172.31.52.241's password:
    ┌──────────────────────────────────────────────────────────────────────┐
    │                 • MobaXterm Personal Edition v25.1 •                 │
    │               (SSH client, X server and network tools)               │
    │                                                                      │
    │ ⮞ SSH session to hah003@172.31.52.241                                │
    │   • Direct SSH      :  ✓                                             │
    │   • SSH compression :  ✓                                             │
    │   • SSH-browser     :  ✓                                             │
    │   • X11-forwarding  :  ✓  (remote display is forwarded through SSH)  │
    │                                                                      │
    │ ⮞ For more info, ctrl+click on help or visit our website.            │
    └──────────────────────────────────────────────────────────────────────┘

Last login: Mon Aug 17 09:56:25 2026 from 172.31.52.102
[hah003@kopo-seongnam ~]$ ls
2x4DECODER.bbc    Basic_SoC_implementation  INV.ler    NAND.alc    NAND.scv   NOR.erc    NOR.tre2  OPA.erx    OPA.wrn           inv2.lyr        invinvinv.elf    invinvinv.svi                   sim_inv3.csm    sim_i
2x4DECODER.bcr    CDS.log                   INV.lnn    NAND.bbc    NAND.sdb   NOR.erd    NOR.trm   OPA.hdr    OPA.wrx           inv2.map        invinvinv.env    invinvinv.tmp                   sim_inv3.dat    sim_i
2x4DECODER.dat    CDS.log.1                 INV.log    NAND.bcr    NAND.spl   NOR.err    NOR.vlr   OPA.ilc    OPA.xcn           inv2.msg        invinvinv.eqr    invinvinv.tre                   sim_inv3.dnv    sim_i
2x4DECODER.dnv    CDS.log.1.cdslck          INV.lrs    NAND.blc    NAND.sum   NOR.erx    NOR.wrn   OPA.ldb    OPA.xrf           inv2.nrc        invinvinv.erc    invinvinv.tre2                  sim_inv3.dvc    sim_i
2x4DECODER.dvc    INV.alc                   INV.lvsdb  NAND.cel2   NAND.svi   NOR.hdr    NOR.xcn   OPA.ler    cds.lib           inv2.rsf        invinvinv.erd    invinvinv.trm                   sim_inv3.elf    sim_i
2x4DECODER.env    INV.bbc                   INV.lyr    NAND.dat    NAND.tmp   NOR.ilc    NOR.xrf   OPA.lnn    cdsLibEditor.log  inv2.scv        invinvinv.err    invinvinv.vlr                   sim_inv3.env    sim_i
2x4DECODER.hdr    INV.bcr                   INV.map    NAND.dnv    NAND.tre2  NOR.ldb    OPA#2ePR  OPA.log    core.210901       inv2.sdb        invinvinv.erx    invinvinv.wrn                   sim_inv3.eqr    sim_i
2x4DECODER.ilc    INV.blc                   INV.msg    NAND.dvc    NAND.trm   NOR.ler    OPA.alc   OPA.lrs    core.217399       inv2.sum        invinvinv.hdr    invinvinv.xcn                   sim_inv3.erc    sim_i
2x4DECODER.ldb    INV.cel                   INV.nht    NAND.elf    NAND.vlr   NOR.lnn    OPA.bbc   OPA.lvsdb  core.230515       inv2.svi        invinvinv.ilc    invinvinv.xrf                   sim_inv3.erd    sim_i
2x4DECODER.log    INV.cel2                  INV.nrc    NAND.env    NAND.wrn   NOR.log    OPA.bcr   OPA.lyr    core.57209        inv2.tmp        invinvinv.ldb    libManager.log                  sim_inv3.err    sim_i
2x4DECODER.lvsdb  INV.cls                   INV.rsf    NAND.eqr    NAND.xcn   NOR.lrs    OPA.blc   OPA.map    core.76670        inv2.trm        invinvinv.ler    linux                           sim_inv3.erx    sim_i
2x4DECODER.lyr    INV.cps                   INV.scv    NAND.erc    NOR.alc    NOR.lvsdb  OPA.cel   OPA.msg    digital.cshrc     inv2.vlr        invinvinv.lnn    mid1                            sim_inv3.hdr    sim_i
2x4DECODER.map    INV.csm                   INV.sdb    NAND.erd    NOR.bbc    NOR.lyr    OPA.cel2  OPA.nht    final1            inv2.wrn        invinvinv.log    mid2                            sim_inv3.ilc    sim_i
2x4DECODER.msg    INV.dat                   INV.snn    NAND.err    NOR.bcr    NOR.map    OPA.cls   OPA.nrc    hhtech            inv2.xcn        invinvinv.lrs    panic.log.kopo-seongnam.149585  sim_inv3.ldb    sim_i
2x4DECODER.nrc    INV.dnv                   INV.spl    NAND.erx    NOR.blc    NOR.msg    OPA.cps   OPA.rsf    htech             invinvinv.alc   invinvinv.lvsdb  panic.log.kopo-seongnam.217399  sim_inv3.ler    sim_i
2x4DECODER.rsf    INV.dvc                   INV.sum    NAND.hdr    NOR.cel    NOR.nht    OPA.csm   OPA.scv    inv2.bbc          invinvinv.bbc   invinvinv.lyr    q                               sim_inv3.lnn    sim_i
2x4DECODER.scv    INV.elf                   INV.svi    NAND.ilc    NOR.cel2   NOR.nrc    OPA.cxl   OPA.sdb    inv2.bcr          invinvinv.bcr   invinvinv.map    sample                          sim_inv3.log    sim_i
2x4DECODER.sdb    INV.env                   INV.tmp    NAND.ler    NOR.cls    NOR.rsf    OPA.dat   OPA.snn    inv2.dat          invinvinv.blc   invinvinv.msg    sample2                         sim_inv3.lrs    sim_i
2x4DECODER.sum    INV.eqr                   INV.tre    NAND.log    NOR.cps    NOR.scv    OPA.dnv   OPA.spl    inv2.dnv          invinvinv.cel   invinvinv.nht    sim_inv3.alc                    sim_inv3.lvsdb  sim_i
2x4DECODER.svi    INV.erc                   INV.tre2   NAND.lrs    NOR.csm    NOR.sdb    OPA.dvc   OPA.sum    inv2.dvc          invinvinv.cel2  invinvinv.nrc    sim_inv3.bbc                    sim_inv3.lyr    sim_i
2x4DECODER.tmp    INV.erd                   INV.trm    NAND.lvsdb  NOR.dat    NOR.snn    OPA.elf   OPA.svi    inv2.env          invinvinv.cls   invinvinv.rsf    sim_inv3.bcr                    sim_inv3.map    sim_i
2x4DECODER.trm    INV.err                   INV.vlr    NAND.lyr    NOR.dnv    NOR.spl    OPA.env   OPA.tmp    inv2.hdr          invinvinv.cps   invinvinv.scv    sim_inv3.blc                    sim_inv3.msg    sim_i
2x4DECODER.vlr    INV.erx                   INV.wrn    NAND.map    NOR.dvc    NOR.sum    OPA.eqr   OPA.tre    inv2.ilc          invinvinv.csm   invinvinv.sdb    sim_inv3.cel                    sim_inv3.nht    sim_i
2x4DECODER.wrn    INV.hdr                   INV.xcn    NAND.msg    NOR.elf    NOR.svi    OPA.erc   OPA.tre2   inv2.ldb          invinvinv.dat   invinvinv.snn    sim_inv3.cel2                   sim_inv3.nrc    sim_i
2x4DECODER.xcn    INV.ilc                   INV.xrf    NAND.nrc    NOR.env    NOR.tmp    OPA.erd   OPA.trm    inv2.log          invinvinv.dnv   invinvinv.spl    sim_inv3.cls                    sim_inv3.rsf    sim_i
APR               INV.ldb                   MID2       NAND.rsf    NOR.eqr    NOR.tre    OPA.err   OPA.vlr    inv2.lvsdb        invinvinv.dvc   invinvinv.sum    sim_inv3.cps                    sim_inv3.scv    sim_i
[hah003@kopo-seongnam ~]$ cd Basic_SoC_implementation/
[hah003@kopo-seongnam ~/Basic_SoC_implementation]$ ls
0_DOCS  1_RTL  2_SIM  3_SYN  4_EC  5_APR  LICENSE  README.md
[hah003@kopo-seongnam ~/Basic_SoC_implementation]$ cd 1_RTL/
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ mkdir 1_Combinational Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ mkdir 2_Sequential Logic
mkdir: cannot create directory 'Logic': File exists
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ mkdir 2_Sequential Logic
mkdir: cannot create directory '2_Sequential': File exists
mkdir: cannot create directory 'Logic': File exists
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational  2_Sequential  Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ rm 1_Combinational/ 2_Sequential/
rm: cannot remove '1_Combinational/': Is a directory
rm: cannot remove '2_Sequential/': Is a directory
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ rm 1_Combinational/
rm: cannot remove '1_Combinational/': Is a directory
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ \342\200\234\354\235\264 \352\265\254\354\241\260\353\212\224 bus width\353\245\274 \353\212\230\353\240\244 32bit\353\241\234 \355\231\225\354\236\245 \352\260\200\353\212\2
\342\200\234\354\235\264: Command not found.
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ rm -r 1_Combinational/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ rm -r 2_Sequential/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ rm -r L
rm: cannot remove 'L': No such file or directory
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ rm -r Logic/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ mkdir 1_Combinational_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ mkdir 2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd ..
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 1_Combinational_Logic/
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd ..
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd ..
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 2_TINY_PROJECT/
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 1_Combinational_Logic/
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
[hah003@kopo-seongnam 1_Combinational_Logic]$ vi full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd ..
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd ..
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 2_TINY_PROJECT/
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ vi ls194.v
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 1_Combinational_Logic/
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ vi full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd ..
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd ..
[hah003@kopo-seongnam 1_TASK]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 2_TINY_PROJECT/
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ls194.v
ls194.v: Not a directory.
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 2_TINY_PROJECT/
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ vi ls194.v
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 1_Combinational_Logic/
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ vi full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd ..
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd ..
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 2_TINY_PROJECT/
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ vi ls194.v
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ cd ..
[hah003@kopo-seongnam ~/Basic_SoC_implementation]$ cd 1_RTL/
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 1_Combinational_Logic/
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ vi full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd //
[hah003@kopo-seongnam /]$ ls
APR  SoC.tar.gz  bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  tools  usr  var
[hah003@kopo-seongnam /]$ cd home/
[hah003@kopo-seongnam /home]$ ls
2024_a1    2025_dig10  2025_dig7  digital05  firsthero  ha2000  hah000  hah016       hasrb010  hasrb026        s.jonghyun   s_exam1   s_exam6  semi5     semi_h3     semicon010  sns015   sns_d8    texam19
2024_a10   2025_dig11  2025_dig8  digital06  h_exam1    ha2001  hah001  hah017       hasrb011  hasrb027        s_2025_h001  s_exam10  s_exam7  semi6     semi_h4     simhio808   sns016   sns_d9    texam2
2024_a11   2025_dig12  2025_dig9  digital07  h_exam10   ha2002  hah002  hah018       hasrb012  hasrb028        s_2025_h002  s_exam11  s_exam8  semi7     semi_h5     sns001      sns_d0   test      texam20
2024_a12   2025_dig13  admin      digital08  h_exam11   ha2003  hah003  hah019       hasrb013  hasrb029        s_2025_h003  s_exam12  s_exam9  semi8     semi_h6     sns002      sns_d1   test1     texam21
2024_a13   2025_dig14  cjdtnfl98  digital09  h_exam12   ha2004  hah004  hah020       hasrb014  hasrb030        s_2025_h004  s_exam13  semi1    semi9     semi_h7     sns003      sns_d10  test2     texam3
2024_a14   2025_dig15  dht001     digital10  h_exam13   ha2005  hah005  hanyungjung  hasrb015  hitech          s_2025_h005  s_exam14  semi10   semi_h1   semi_h8     sns004      sns_d11  testuser  texam4
2024_a15   2025_dig16  dht002     digital11  h_exam14   ha2006  hah006  hasrb000     hasrb016  hlee81          s_2025_h006  s_exam15  semi11   semi_h10  semi_h9     sns005      sns_d12  texam1    texam5
2024_a2    2025_dig17  dht003     digital12  h_exam15   ha2007  hah007  hasrb001     hasrb017  howolas         s_2025_h007  s_exam16  semi12   semi_h11  semicon001  sns006      sns_d13  texam10   texam6
2024_a3    2025_dig18  dht004     digital13  h_exam2    ha2008  hah008  hasrb002     hasrb018  jk8514          s_2025_h008  s_exam17  semi13   semi_h12  semicon002  sns007      sns_d14  texam11   texam7
2024_a4    2025_dig19  dht005     digital14  h_exam3    ha2009  hah009  hasrb003     hasrb019  jwha            s_2025_h009  s_exam18  semi14   semi_h13  semicon003  sns008      sns_d15  texam12   texam8
2024_a5    2025_dig2   dht0056    digital15  h_exam4    ha2010  hah010  hasrb004     hasrb020  kms             s_2025_h010  s_exam19  semi15   semi_h14  semicon004  sns009      sns_d2   texam13   texam9
2024_a6    2025_dig20  dht006     digital16  h_exam5    ha2011  hah011  hasrb005     hasrb021  leecg130        s_2025_h011  s_exam2   semi16   semi_h15  semicon005  sns010      sns_d3   texam14   william
2024_a7    2025_dig3   digital01  digital17  h_exam6    ha2012  hah012  hasrb006     hasrb022  pattray12       s_2025_h012  s_exam20  semi17   semi_h16  semicon006  sns011      sns_d4   texam15   william1
2024_a8    2025_dig4   digital02  digital18  h_exam7    ha2013  hah013  hasrb007     hasrb023  prof_digital01  s_2025_h013  s_exam3   semi2    semi_h17  semicon007  sns012      sns_d5   texam16
2024_a9    2025_dig5   digital03  digital19  h_exam8    ha2014  hah014  hasrb008     hasrb024  prof_digital02  s_2025_h014  s_exam4   semi3    semi_h18  semicon008  sns013      sns_d6   texam17
2025_dig1  2025_dig6   digital04  digital20  h_exam9    ha2015  hah015  hasrb009     hasrb025  rdh6869         s_2025_h015  s_exam5   semi4    semi_h2   semicon009  sns014      sns_d7   texam18
[hah003@kopo-seongnam /home]$ cd hah003
[hah003@kopo-seongnam ~]$ ls
2x4DECODER.bbc            INV.bbc    INV.rsf    NAND.hdr    NOR.dat    NOR.tre   OPA.ler           core.57209     invinvinv.alc    invinvinv.nrc                   sim_inv3.cls    sim_inv3.sum   sim_inv4.ldb
2x4DECODER.bcr            INV.bcr    INV.scv    NAND.ilc    NOR.dnv    NOR.tre2  OPA.lnn           core.76670     invinvinv.bbc    invinvinv.rsf                   sim_inv3.cps    sim_inv3.svi   sim_inv4.ler
2x4DECODER.dat            INV.blc    INV.sdb    NAND.ler    NOR.dvc    NOR.trm   OPA.log           digital.cshrc  invinvinv.bcr    invinvinv.scv                   sim_inv3.csm    sim_inv3.tmp   sim_inv4.lnn
2x4DECODER.dnv            INV.cel    INV.snn    NAND.log    NOR.elf    NOR.vlr   OPA.lrs           final1         invinvinv.blc    invinvinv.sdb                   sim_inv3.dat    sim_inv3.tre   sim_inv4.log
2x4DECODER.dvc            INV.cel2   INV.spl    NAND.lrs    NOR.env    NOR.wrn   OPA.lvsdb         hhtech         invinvinv.cel    invinvinv.snn                   sim_inv3.dnv    sim_inv3.tre2  sim_inv4.lrs
2x4DECODER.env            INV.cls    INV.sum    NAND.lvsdb  NOR.eqr    NOR.xcn   OPA.lyr           htech          invinvinv.cel2   invinvinv.spl                   sim_inv3.dvc    sim_inv3.trm   sim_inv4.lvsdb
2x4DECODER.hdr            INV.cps    INV.svi    NAND.lyr    NOR.erc    NOR.xrf   OPA.map           inv2.bbc       invinvinv.cls    invinvinv.sum                   sim_inv3.elf    sim_inv3.vlr   sim_inv4.lyr
2x4DECODER.ilc            INV.csm    INV.tmp    NAND.map    NOR.erd    OPA#2ePR  OPA.msg           inv2.bcr       invinvinv.cps    invinvinv.svi                   sim_inv3.env    sim_inv3.wrn   sim_inv4.map
2x4DECODER.ldb            INV.dat    INV.tre    NAND.msg    NOR.err    OPA.alc   OPA.nht           inv2.dat       invinvinv.csm    invinvinv.tmp                   sim_inv3.eqr    sim_inv3.xcn   sim_inv4.msg
2x4DECODER.log            INV.dnv    INV.tre2   NAND.nrc    NOR.erx    OPA.bbc   OPA.nrc           inv2.dnv       invinvinv.dat    invinvinv.tre                   sim_inv3.erc    sim_inv3.xrf   sim_inv4.nht
2x4DECODER.lvsdb          INV.dvc    INV.trm    NAND.rsf    NOR.hdr    OPA.bcr   OPA.rsf           inv2.dvc       invinvinv.dnv    invinvinv.tre2                  sim_inv3.erd    sim_inv4.alc   sim_inv4.nrc
2x4DECODER.lyr            INV.elf    INV.vlr    NAND.scv    NOR.ilc    OPA.blc   OPA.scv           inv2.env       invinvinv.dvc    invinvinv.trm                   sim_inv3.err    sim_inv4.bbc   sim_inv4.rsf
2x4DECODER.map            INV.env    INV.wrn    NAND.sdb    NOR.ldb    OPA.cel   OPA.sdb           inv2.hdr       invinvinv.elf    invinvinv.vlr                   sim_inv3.erx    sim_inv4.bcr   sim_inv4.scv
2x4DECODER.msg            INV.eqr    INV.xcn    NAND.spl    NOR.ler    OPA.cel2  OPA.snn           inv2.ilc       invinvinv.env    invinvinv.wrn                   sim_inv3.hdr    sim_inv4.blc   sim_inv4.sdb
2x4DECODER.nrc            INV.erc    INV.xrf    NAND.sum    NOR.lnn    OPA.cls   OPA.spl           inv2.ldb       invinvinv.eqr    invinvinv.xcn                   sim_inv3.ilc    sim_inv4.cel   sim_inv4.snn
2x4DECODER.rsf            INV.erd    MID2       NAND.svi    NOR.log    OPA.cps   OPA.sum           inv2.log       invinvinv.erc    invinvinv.xrf                   sim_inv3.ldb    sim_inv4.cel2  sim_inv4.spl
2x4DECODER.scv            INV.err    NAND.alc   NAND.tmp    NOR.lrs    OPA.csm   OPA.svi           inv2.lvsdb     invinvinv.erd    libManager.log                  sim_inv3.ler    sim_inv4.cls   sim_inv4.sum
2x4DECODER.sdb            INV.erx    NAND.bbc   NAND.tre2   NOR.lvsdb  OPA.cxl   OPA.tmp           inv2.lyr       invinvinv.err    linux                           sim_inv3.lnn    sim_inv4.cps   sim_inv4.svi
2x4DECODER.sum            INV.hdr    NAND.bcr   NAND.trm    NOR.lyr    OPA.dat   OPA.tre           inv2.map       invinvinv.erx    mid1                            sim_inv3.log    sim_inv4.csm   sim_inv4.tmp
2x4DECODER.svi            INV.ilc    NAND.blc   NAND.vlr    NOR.map    OPA.dnv   OPA.tre2          inv2.msg       invinvinv.hdr    mid2                            sim_inv3.lrs    sim_inv4.dat   sim_inv4.tre
2x4DECODER.tmp            INV.ldb    NAND.cel2  NAND.wrn    NOR.msg    OPA.dvc   OPA.trm           inv2.nrc       invinvinv.ilc    panic.log.kopo-seongnam.149585  sim_inv3.lvsdb  sim_inv4.dnv   sim_inv4.tre2
2x4DECODER.trm            INV.ler    NAND.dat   NAND.xcn    NOR.nht    OPA.elf   OPA.vlr           inv2.rsf       invinvinv.ldb    panic.log.kopo-seongnam.217399  sim_inv3.lyr    sim_inv4.dvc   sim_inv4.trm
2x4DECODER.vlr            INV.lnn    NAND.dnv   NOR.alc     NOR.nrc    OPA.env   OPA.wrn           inv2.scv       invinvinv.ler    q                               sim_inv3.map    sim_inv4.elf   sim_inv4.vlr
2x4DECODER.wrn            INV.log    NAND.dvc   NOR.bbc     NOR.rsf    OPA.eqr   OPA.wrx           inv2.sdb       invinvinv.lnn    sample                          sim_inv3.msg    sim_inv4.env   sim_inv4.wrn
2x4DECODER.xcn            INV.lrs    NAND.elf   NOR.bcr     NOR.scv    OPA.erc   OPA.xcn           inv2.sum       invinvinv.log    sample2                         sim_inv3.nht    sim_inv4.eqr   sim_inv4.xcn
APR                       INV.lvsdb  NAND.env   NOR.blc     NOR.sdb    OPA.erd   OPA.xrf           inv2.svi       invinvinv.lrs    sim_inv3.alc                    sim_inv3.nrc    sim_inv4.erc   sim_inv4.xrf
Basic_SoC_implementation  INV.lyr    NAND.eqr   NOR.cel     NOR.snn    OPA.err   cds.lib           inv2.tmp       invinvinv.lvsdb  sim_inv3.bbc                    sim_inv3.rsf    sim_inv4.erd   simulation
CDS.log                   INV.map    NAND.erc   NOR.cel2    NOR.spl    OPA.erx   cdsLibEditor.log  inv2.trm       invinvinv.lyr    sim_inv3.bcr                    sim_inv3.scv    sim_inv4.err   test
CDS.log.1                 INV.msg    NAND.erd   NOR.cls     NOR.sum    OPA.hdr   core.210901       inv2.vlr       invinvinv.map    sim_inv3.blc                    sim_inv3.sdb    sim_inv4.erx   test1.md
CDS.log.1.cdslck          INV.nht    NAND.err   NOR.cps     NOR.svi    OPA.ilc   core.217399       inv2.wrn       invinvinv.msg    sim_inv3.cel                    sim_inv3.snn    sim_inv4.hdr   test5.md
INV.alc                   INV.nrc    NAND.erx   NOR.csm     NOR.tmp    OPA.ldb   core.230515       inv2.xcn       invinvinv.nht    sim_inv3.cel2                   sim_inv3.spl    sim_inv4.ilc
[hah003@kopo-seongnam ~]$ cd Basic_SoC_implementation/
[hah003@kopo-seongnam ~/Basic_SoC_implementation]$ ls
0_DOCS  1_RTL  2_SIM  3_SYN  4_EC  5_APR  LICENSE  README.md
[hah003@kopo-seongnam ~/Basic_SoC_implementation]$ cd 1_RTL/
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ cd 2_TINY_PROJECT/
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ vi ls194.v
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ cd
1_LOGIC_CIRCUIT/ 2_SYSTEM_DESIGN/
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 1_Combinational_Logic/
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ vi full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir full_adder
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
full_adder  full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ rm f
full_adder.v  full_adder/
[hah003@kopo-seongnam 1_Combinational_Logic]$ rm full_adder
rm: cannot remove 'full_adder': Is a directory
[hah003@kopo-seongnam 1_Combinational_Logic]$ rm -r f
full_adder.v  full_adder/
[hah003@kopo-seongnam 1_Combinational_Logic]$ rm -r full_adder
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir FULL_ADDER
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  full_adder.v
[hah003@kopo-seongnam 1_Combinational_Logic]$ mv full_adder.v FULL_ADDER/
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd FULL_ADDER/
[hah003@kopo-seongnam FULL_ADDER]$ ls
full_adder.v
[hah003@kopo-seongnam FULL_ADDER]$ vi tb_full_adder.v
[hah003@kopo-seongnam FULL_ADDER]$ ls
full_adder.v  tb_full_adder.v
[hah003@kopo-seongnam FULL_ADDER]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir RIPPLE_CARRY_ADDER_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  RIPPLE_CARRY_ADDER_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd RIPPLE_CARRY_ADDER_4/
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ ls
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ vi ripple_carry_adder_4.v
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ ls
ripple_carry_adder_4.v
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ vi tb_ripple_carry_adder_4.v
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ ls
ripple_carry_adder_4.v  tb_ripple_carry_adder_4.v
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ cd..
cd..: Command not found.
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  RIPPLE_CARRY_ADDER_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  RIPPLE_CARRY_ADDER_4  SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd SUBTRACTOR_4/
[hah003@kopo-seongnam SUBTRACTOR_4]$ ls
[hah003@kopo-seongnam SUBTRACTOR_4]$ vi subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ ls
subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ vi tb_subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd ..
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd ..
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ ls
0_SAMPLE_SCRIPT  1_TASK  2_TINY_PROJECT  4_COMB_LOGIC  5_SEQ_LOGIC  6_FSM  README.md
[hah003@kopo-seongnam 1_RTL]$ cd 2_TINY_PROJECT/
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd tb_ls194.v
tb_ls194.v: Not a directory.
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ vi tb_ls194.v
[hah003@kopo-seongnam 2_TINY_PROJECT]$ ls
Makefile  README.md  cds.lib  clean.tcl  hdl.var  ls194.v  run.tcl  tb_ls194.v  work.lib  xmelab.log  xmsim.key  xmsim.log  xmvlog.log
[hah003@kopo-seongnam 2_TINY_PROJECT]$ cd ..
[hah003@kopo-seongnam 1_RTL]$ cd 1_TASK/
[hah003@kopo-seongnam 1_TASK]$ ls
1_LOGIC_CIRCUIT  2_SYSTEM_DESIGN
[hah003@kopo-seongnam 1_TASK]$ cd 1_LOGIC_CIRCUIT/
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 1_Combinational_Logic/
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  RIPPLE_CARRY_ADDER_4  SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd SUBTRACTOR_4/
[hah003@kopo-seongnam SUBTRACTOR_4]$ ls
subtractor_4.v  tb_subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ vi subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ vi tb_subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  RIPPLE_CARRY_ADDER_4  SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd FULL_ADDER/
[hah003@kopo-seongnam FULL_ADDER]$ ls
full_adder.v  tb_full_adder.v
[hah003@kopo-seongnam FULL_ADDER]$ vi full_adder.v
[hah003@kopo-seongnam FULL_ADDER]$ vi tb_full_adder.v
[hah003@kopo-seongnam FULL_ADDER]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  RIPPLE_CARRY_ADDER_4  SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd RIPPLE_CARRY_ADDER_4/
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ ls
ripple_carry_adder_4.v  tb_ripple_carry_adder_4.v
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ vi ripple_carry_adder_4.v
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ vi tb_ripple_carry_adder_4.v
[hah003@kopo-seongnam RIPPLE_CARRY_ADDER_4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
FULL_ADDER  RIPPLE_CARRY_ADDER_4  SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd SUBTRACTOR_4/
[hah003@kopo-seongnam SUBTRACTOR_4]$ ls
subtractor_4.v  tb_subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir COMPARATOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
COMPARATOR_4  FULL_ADDER  RIPPLE_CARRY_ADDER_4  SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd SUBTRACTOR_4/
[hah003@kopo-seongnam SUBTRACTOR_4]$ ls
subtractor_4.v  tb_subtractor_4.v
[hah003@kopo-seongnam SUBTRACTOR_4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ mv FULL_ADDER 1_FULL_ADDER
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  COMPARATOR_4  RIPPLE_CARRY_ADDER_4  SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ mv RIPPLE_CARRY_ADDER_4 2_RIPPLE_CARRY_ADDER_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ mv SUBTRACTOR_4 3_SUBTRACTOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ mv COMPARATOR_4 4_COMPARATOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd 4_COMPARATOR_4/
[hah003@kopo-seongnam 4_COMPARATOR_4]$ ls
[hah003@kopo-seongnam 4_COMPARATOR_4]$ vi comparator.v
[hah003@kopo-seongnam 4_COMPARATOR_4]$ vi tb_comparator.v
[hah003@kopo-seongnam 4_COMPARATOR_4]$ ls
comparator.v  tb_comparator.v
[hah003@kopo-seongnam 4_COMPARATOR_4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir 5_MUX_2x1
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd 5_MUX_2x1/
[hah003@kopo-seongnam 5_MUX_2x1]$ vi mux_2x1.v
[hah003@kopo-seongnam 5_MUX_2x1]$ vi tb_mux_2x1.v
[hah003@kopo-seongnam 5_MUX_2x1]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir 6_MUX_4x1
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1  6_MUX_4x1
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd 6_MUX_4x1/
[hah003@kopo-seongnam 6_MUX_4x1]$ vi mux_4x1.v
[hah003@kopo-seongnam 6_MUX_4x1]$ vi tb_mux_4x1.v
[hah003@kopo-seongnam 6_MUX_4x1]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1  6_MUX_4x1
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir 7_DECODER_2x4
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1  6_MUX_4x1  7_DECODER_2x4
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd  7_DECODER_2x4/
[hah003@kopo-seongnam 7_DECODER_2x4]$ vi decoder_2x4.v
[hah003@kopo-seongnam 7_DECODER_2x4]$ vi tb_decoder_2x4.v
[hah003@kopo-seongnam 7_DECODER_2x4]$ cd .
[hah003@kopo-seongnam 7_DECODER_2x4]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1  6_MUX_4x1  7_DECODER_2x4
[hah003@kopo-seongnam 1_Combinational_Logic]$ mkdir ENCODER_4x2
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1  6_MUX_4x1  7_DECODER_2x4  ENCODER_4x2
[hah003@kopo-seongnam 1_Combinational_Logic]$ mv ENCODER_4x2 8_ENCODER_4x2
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd 8_ENCODER_4x2/
[hah003@kopo-seongnam 8_ENCODER_4x2]$ vi encoder_4x2.v
[hah003@kopo-seongnam 8_ENCODER_4x2]$ vi tb_encoder_4x2.v
[hah003@kopo-seongnam 8_ENCODER_4x2]$ cd ..
[hah003@kopo-seongnam 1_Combinational_Logic]$ ls
1_FULL_ADDER  2_RIPPLE_CARRY_ADDER_4  3_SUBTRACTOR_4  4_COMPARATOR_4  5_MUX_2x1  6_MUX_4x1  7_DECODER_2x4  8_ENCODER_4x2
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$
1_FULL_ADDER/           2_RIPPLE_CARRY_ADDER_4/ 3_SUBTRACTOR_4/         4_COMPARATOR_4/         5_MUX_2x1/              6_MUX_4x1/              7_DECODER_2x4/          8_ENCODER_4x2/
[hah003@kopo-seongnam 1_Combinational_Logic]$ cd ..
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ ls
1_Combinational_Logic  2_Sequential_Logic
[hah003@kopo-seongnam 1_LOGIC_CIRCUIT]$ cd 2_Sequential_Logic/
[hah003@kopo-seongnam 2_Sequential_Logic]$ mkdir 1_D_LATCH
[hah003@kopo-seongnam 2_Sequential_Logic]$ ls
1_D_LATCH
[hah003@kopo-seongnam 2_Sequential_Logic]$ cd 1_D_LATCH/
[hah003@kopo-seongnam 1_D_LATCH]$ vi d_latch.v
[hah003@kopo-seongnam 1_D_LATCH]$ vi tb_d_latch.v
[hah003@kopo-seongnam 1_D_LATCH]$ cd ..
[hah003@kopo-seongnam 2_Sequential_Logic]$ ls
1_D_LATCH
[hah003@kopo-seongnam 2_Sequential_Logic]$ mkdir 2_D_FLIP_FLOP
[hah003@kopo-seongnam 2_Sequential_Logic]$ ls
1_D_LATCH  2_D_FLIP_FLOP
[hah003@kopo-seongnam 2_Sequential_Logic]$ cd 2_D_FLIP_FLOP/
[hah003@kopo-seongnam 2_D_FLIP_FLOP]$ vi d_flip_flop.v
[hah003@kopo-seongnam 2_D_FLIP_FLOP]$ vi tb_d_flip_flop.v
[hah003@kopo-seongnam 2_D_FLIP_FLOP]$ cd ..
[hah003@kopo-seongnam 2_Sequential_Logic]$ ls
1_D_LATCH  2_D_FLIP_FLOP
[hah003@kopo-seongnam 2_Sequential_Logic]$ mkdir 3_REGISTER_4
[hah003@kopo-seongnam 2_Sequential_Logic]$ cd 3_REGISTER_4/
[hah003@kopo-seongnam 3_REGISTER_4]$ ls
[hah003@kopo-seongnam 3_REGISTER_4]$ vi register_4.v
[hah003@kopo-seongnam 3_REGISTER_4]$ vi tb_register_4.v
[hah003@kopo-seongnam 3_REGISTER_4]$ cd ..
[hah003@kopo-seongnam 2_Sequential_Logic]$ ls
1_D_LATCH  2_D_FLIP_FLOP  3_REGISTER_4
[hah003@kopo-seongnam 2_Sequential_Logic]$ mkdir 4_SHIFT_REGISTER_4
[hah003@kopo-seongnam 2_Sequential_Logic]$ cd 4_SHIFT_REGISTER_4/
[hah003@kopo-seongnam 4_SHIFT_REGISTER_4]$ vi shift_register_4.v
[hah003@kopo-seongnam 4_SHIFT_REGISTER_4]$ vi tb_shift_register_4.v
`timescale 1ns / 1ps

module tb_shift_register_4

reg     clk             ;
reg     rst_n           ;
reg     i_serial        ;
reg     i_shift         ;

wire [3:0] o_q          ;

shift_register_4 uut (

.i_serial(i_serial),
.i_shift(i_shift),
.clk(clk),
.rst_n(rst_m),
.o_q(o_q)
);

always #5 clk = ~clk;

initial begin

clk             = 1'b0  ;
rst_n           = 1'b0  ;
i_serial        = 1'b0  ;
i_shift         = 1'b0  ;

#12 rst_n       = 1'b1  ;

@(negedge clk)          ;
i_shift         = 1'b1  ;
i_serial        = 1'b1  ;

@(negedge clk)		;
i_serial	= 1'b0	;

@(negedge clk)		;
i_serial	= 1'b1	;

@(negedge clk)		;
i_serial	= 1'b1	;

@(negedge clk)		;
i_serial	= 1'b0	;

#20;

$finish;

end

endmodule





~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
-- INSERT --                                                                                                                                                                                        38,1          All

