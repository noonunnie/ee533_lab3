VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL firstword
        SIGNAL clk
        SIGNAL XLXN_7
        SIGNAL drop_pkt
        SIGNAL XLXN_29
        SIGNAL XLXN_31
        SIGNAL XLXN_10
        SIGNAL XLXN_14
        SIGNAL fiforead
        SIGNAL XLXN_32
        SIGNAL XLXN_33
        SIGNAL XLXN_46(7:0)
        SIGNAL waddr(7:0)
        SIGNAL in_fifo0(71:0)
        SIGNAL raddr(7:0)
        SIGNAL out_fifo(71:0)
        SIGNAL XLXN_55
        SIGNAL XLXN_56
        SIGNAL valid_data
        SIGNAL fifowrite
        SIGNAL in_fifo(71:0)
        SIGNAL rst
        SIGNAL XLXN_61
        SIGNAL XLXN_62
        SIGNAL XLXN_64
        SIGNAL XLXN_65
        SIGNAL XLXN_67
        SIGNAL XLXN_68
        SIGNAL XLXN_69
        SIGNAL XLXN_70
        SIGNAL XLXN_74
        SIGNAL XLXN_30
        SIGNAL XLXN_28
        SIGNAL lastword
        SIGNAL XLXN_76(7:0)
        SIGNAL XLXN_77
        SIGNAL XLXN_78
        SIGNAL XLXN_79
        SIGNAL XLXN_81(7:0)
        SIGNAL XLXN_83
        SIGNAL XLXN_84(7:0)
        SIGNAL XLXN_86
        SIGNAL XLXN_89
        SIGNAL XLXN_90(7:0)
        SIGNAL XLXN_97(7:0)
        SIGNAL XLXN_98(7:0)
        SIGNAL XLXN_99
        PORT Input firstword
        PORT Input clk
        PORT Input drop_pkt
        PORT Input fiforead
        PORT Output out_fifo(71:0)
        PORT Output valid_data
        PORT Input fifowrite
        PORT Input in_fifo(71:0)
        PORT Input rst
        PORT Input lastword
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF fd8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF reg9B
            TIMESTAMP 2026 2 1 15 14 18
            LINE N 64 32 0 32 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -236 384 -212 
            LINE N 320 -224 384 -224 
            RECTANGLE N 64 -256 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8cle
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -448 320 -64 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 0 -384 64 -384 
            RECTANGLE N 0 -396 64 -372 
            LINE N 384 -384 320 -384 
            LINE N 384 -192 320 -192 
            RECTANGLE N 320 -396 384 -372 
            LINE N 384 -128 320 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF cb8ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 384 -128 320 -128 
            RECTANGLE N 320 -268 384 -244 
            LINE N 384 -256 320 -256 
            LINE N 0 -192 64 -192 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 384 -192 320 -192 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            RECTANGLE N 64 -320 320 -64 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF or2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 64 -64 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            ARC N 28 -224 204 -48 112 -48 192 -96 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            LINE N 112 -144 48 -144 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -48 48 -48 
        END BLOCKDEF
        BEGIN BLOCKDEF and2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -48 64 -144 
            LINE N 64 -144 144 -144 
            LINE N 144 -48 64 -48 
            ARC N 96 -144 192 -48 144 -48 144 -144 
            LINE N 256 -96 192 -96 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b2
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 40 -128 
            CIRCLE N 40 -140 64 -116 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 fd
            PIN C clk
            PIN D firstword
            PIN Q XLXN_29
        END BLOCK
        BEGIN BLOCK XLXI_2 fd
            PIN C clk
            PIN D lastword
            PIN Q XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_3 fd8ce
            PIN C clk
            PIN CE XLXN_7
            PIN CLR rst
            PIN D(7:0) waddr(7:0)
            PIN Q(7:0) XLXN_97(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 fd
            PIN C clk
            PIN D drop_pkt
            PIN Q XLXN_31
        END BLOCK
        BEGIN BLOCK XLXI_4 fd
            PIN C clk
            PIN D fifowrite
            PIN Q XLXN_55
        END BLOCK
        BEGIN BLOCK XLXI_16 reg9B
            PIN d(7:0) in_fifo(71:0)
            PIN clk clk
            PIN ce XLXN_74
            PIN q(71:0) in_fifo0(71:0)
            PIN clr rst
        END BLOCK
        BEGIN BLOCK XLXI_18 cb8ce
            PIN C clk
            PIN CE XLXN_32
            PIN CLR rst
            PIN CEO
            PIN Q(7:0) raddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_19 fdc
            PIN C clk
            PIN CLR rst
            PIN D XLXN_32
            PIN Q valid_data
        END BLOCK
        BEGIN BLOCK XLXI_6 comp8
            PIN A(7:0) raddr(7:0)
            PIN B(7:0) XLXN_97(7:0)
            PIN EQ XLXN_14
        END BLOCK
        BEGIN BLOCK XLXI_5 comp8
            PIN A(7:0) waddr(7:0)
            PIN B(7:0) raddr(7:0)
            PIN EQ XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_36 and3b2
            PIN I0 XLXN_14
            PIN I1 XLXN_10
            PIN I2 fiforead
            PIN O XLXN_32
        END BLOCK
        BEGIN BLOCK XLXI_17 cb8cle
            PIN C clk
            PIN CE XLXN_55
            PIN CLR rst
            PIN D(7:0) XLXN_97(7:0)
            PIN L XLXN_31
            PIN CEO
            PIN Q(7:0) waddr(7:0)
            PIN TC
        END BLOCK
        BEGIN BLOCK XLXI_38 vcc
            PIN P XLXN_74
        END BLOCK
        BEGIN BLOCK XLXI_35 and2b1
            PIN I0 XLXN_31
            PIN I1 XLXN_30
            PIN O XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_34 or2
            PIN I0 XLXN_28
            PIN I1 XLXN_29
            PIN O XLXN_30
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_1 512 480 R0
        INSTANCE XLXI_2 512 912 R0
        INSTANCE XLXI_7 512 2592 R0
        BEGIN BRANCH firstword
            WIRE 224 224 512 224
        END BRANCH
        BEGIN BRANCH drop_pkt
            WIRE 240 2336 512 2336
        END BRANCH
        BEGIN BRANCH XLXN_29
            WIRE 896 224 928 224
            WIRE 928 224 928 592
            WIRE 928 592 976 592
        END BRANCH
        INSTANCE XLXI_18 2256 1984 R0
        INSTANCE XLXI_19 2256 2448 R0
        BEGIN BRANCH XLXN_10
            WIRE 1760 1792 1808 1792
        END BRANCH
        BEGIN BRANCH XLXN_32
            WIRE 2064 1792 2208 1792
            WIRE 2208 1792 2256 1792
            WIRE 2208 1792 2208 2192
            WIRE 2208 2192 2256 2192
        END BRANCH
        BEGIN BRANCH waddr(7:0)
            WIRE 368 1104 368 1696
            WIRE 368 1696 1072 1696
            WIRE 1072 1696 1296 1696
            WIRE 1296 1696 1376 1696
            WIRE 368 1104 432 1104
            WIRE 432 1104 560 1104
            WIRE 1072 976 1072 1696
            WIRE 1072 976 2832 976
            WIRE 2832 976 2832 1104
            WIRE 2832 1104 2944 1104
            WIRE 2656 1104 2752 1104
            WIRE 2752 1104 2832 1104
            BEGIN DISPLAY 432 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 1296 1696 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2752 1104 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH out_fifo(71:0)
            WIRE 3216 1280 3296 1280
        END BRANCH
        IOMARKER 3296 1280 out_fifo(71:0) R0 28
        BEGIN BRANCH XLXN_55
            WIRE 1760 320 1952 320
            WIRE 1952 320 1952 1296
            WIRE 1952 1296 2272 1296
            WIRE 1952 1296 1952 1552
            WIRE 1952 1552 2752 1552
            WIRE 2752 1312 2752 1552
            WIRE 2752 1312 2944 1312
        END BRANCH
        IOMARKER 224 224 firstword R180 28
        IOMARKER 240 2336 drop_pkt R180 28
        IOMARKER 240 2464 clk R180 28
        BEGIN BRANCH valid_data
            WIRE 2640 2192 2672 2192
        END BRANCH
        IOMARKER 2672 2192 valid_data R0 28
        BEGIN BRANCH fifowrite
            WIRE 1344 320 1376 320
        END BRANCH
        BEGIN BRANCH in_fifo(71:0)
            WIRE 2240 416 2272 416
        END BRANCH
        IOMARKER 1584 1520 fiforead R180 28
        INSTANCE XLXI_4 1376 576 R0
        IOMARKER 1344 320 fifowrite R180 28
        INSTANCE XLXI_17 2272 1488 R0
        BEGIN BRANCH XLXN_31
            WIRE 896 2336 1152 2336
            WIRE 1152 688 1152 1232
            WIRE 1152 1232 1152 2336
            WIRE 1152 1232 2272 1232
            WIRE 1152 688 1376 688
        END BRANCH
        INSTANCE XLXI_6 1376 2528 R0
        BEGIN BRANCH raddr(7:0)
            WIRE 1216 1888 1216 2016
            WIRE 1216 2016 1216 2208
            WIRE 1216 2208 1296 2208
            WIRE 1296 2208 1376 2208
            WIRE 1216 2016 2800 2016
            WIRE 1216 1888 1296 1888
            WIRE 1296 1888 1376 1888
            WIRE 2640 1728 2720 1728
            WIRE 2720 1728 2800 1728
            WIRE 2800 1728 2800 2016
            WIRE 2800 1408 2800 1728
            WIRE 2800 1408 2944 1408
            BEGIN DISPLAY 1296 1888 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 1296 2208 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2720 1728 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 176 1456 rst R180 28
        BEGIN BRANCH XLXN_74
            WIRE 2000 304 2000 608
            WIRE 2000 608 2272 608
        END BRANCH
        IOMARKER 224 656 lastword R180 28
        INSTANCE XLXI_35 1376 752 R0
        INSTANCE XLXI_34 976 720 R0
        BEGIN BRANCH XLXN_30
            WIRE 1232 624 1376 624
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 896 656 976 656
        END BRANCH
        BEGIN BRANCH lastword
            WIRE 224 656 512 656
        END BRANCH
        BEGIN INSTANCE XLXI_16 2272 640 R0
        END INSTANCE
        BEGIN BRANCH in_fifo0(71:0)
            WIRE 2656 416 2768 416
            WIRE 2768 416 2864 416
            WIRE 2864 416 2864 1200
            WIRE 2864 1200 2928 1200
            BEGIN DISPLAY 2768 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 2240 416 in_fifo(71:0) R180 28
        INSTANCE XLXI_38 1936 304 R0
        INSTANCE XLXI_5 1376 2016 R0
        BEGIN BRANCH clk
            WIRE 2144 544 2144 1360
            WIRE 2144 1360 2144 1600
            WIRE 2144 1600 2144 1856
            WIRE 2144 1856 2144 2320
            WIRE 2144 2320 2240 2320
            WIRE 2240 2320 2256 2320
            WIRE 2144 1856 2240 1856
            WIRE 2240 1856 2256 1856
            WIRE 2144 1600 2896 1600
            WIRE 2896 1600 2944 1600
            WIRE 2144 1360 2240 1360
            WIRE 2240 1360 2272 1360
            WIRE 2144 544 2208 544
            WIRE 2208 544 2272 544
            WIRE 2896 1360 2944 1360
            WIRE 2896 1360 2896 1472
            WIRE 2896 1472 2896 1600
            BEGIN DISPLAY 2211 544 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2240 1360 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2240 1856 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2240 2320 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2896 1472 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clk
            WIRE 240 2464 320 2464
            WIRE 320 2464 512 2464
            WIRE 320 352 320 448
            WIRE 320 448 1376 448
            WIRE 320 448 320 784
            WIRE 320 784 320 1232
            WIRE 320 1232 320 2464
            WIRE 320 1232 512 1232
            WIRE 512 1232 560 1232
            WIRE 320 784 480 784
            WIRE 480 784 512 784
            WIRE 320 352 480 352
            WIRE 480 352 512 352
            BEGIN DISPLAY 480 352 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 480 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 512 1232 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH fiforead
            WIRE 1584 1520 1808 1520
            WIRE 1808 1520 1808 1728
        END BRANCH
        INSTANCE XLXI_36 1808 1920 R0
        BEGIN BRANCH XLXN_14
            WIRE 1760 2304 1776 2304
            WIRE 1776 1856 1808 1856
            WIRE 1776 1856 1776 2304
        END BRANCH
        BEGIN BRANCH rst
            WIRE 176 1456 512 1456
            WIRE 512 1456 2064 1456
            WIRE 2064 1456 2256 1456
            WIRE 2256 1456 2272 1456
            WIRE 2064 1456 2064 1952
            WIRE 2064 1952 2064 2416
            WIRE 2064 2416 2240 2416
            WIRE 2240 2416 2256 2416
            WIRE 2064 1952 2240 1952
            WIRE 2240 1952 2256 1952
            WIRE 512 1328 512 1456
            WIRE 512 1328 528 1328
            WIRE 528 1328 560 1328
            WIRE 2064 672 2064 1456
            WIRE 2064 672 2224 672
            WIRE 2224 672 2272 672
            BEGIN DISPLAY 531 1328 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2224 672 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2240 1952 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2240 2416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
            BEGIN DISPLAY 2256 1456 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 528 896 1648 896
            WIRE 528 896 528 1168
            WIRE 528 1168 560 1168
            WIRE 1632 656 1648 656
            WIRE 1648 656 1648 896
        END BRANCH
        INSTANCE XLXI_3 560 1360 R0
        BEGIN BRANCH XLXN_97(7:0)
            WIRE 944 1104 992 1104
            WIRE 992 1104 2272 1104
            WIRE 992 1104 992 2400
            WIRE 992 2400 1376 2400
        END BRANCH
    END SHEET
END SCHEMATIC
