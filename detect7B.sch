VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL hwregA(63:0)
        SIGNAL pipe0(71:0)
        SIGNAL XLXN_9(111:0)
        SIGNAL hwregA(62:56)
        SIGNAL hwregA(55:0)
        SIGNAL mrst
        SIGNAL XLXN_19
        SIGNAL match_en
        SIGNAL XLXN_25
        SIGNAL match
        SIGNAL XLXN_28
        SIGNAL clk
        SIGNAL pipe1(71:0)
        SIGNAL pipe0(47:0)
        SIGNAL pipe1(63:0)
        SIGNAL ce
        PORT Input hwregA(63:0)
        PORT Input mrst
        PORT Input match_en
        PORT Output match
        PORT Input clk
        PORT Input pipe1(71:0)
        PORT Input ce
        BEGIN BLOCKDEF wordmatch
            TIMESTAMP 2026 2 1 14 18 9
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF busmerge
            TIMESTAMP 2026 2 1 14 55 3
            RECTANGLE N 320 20 384 44 
            LINE N 320 32 384 32 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -128 320 64 
        END BLOCKDEF
        BEGIN BLOCKDEF fdce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 64 -112 80 -128 
            LINE N 80 -128 64 -144 
            LINE N 192 -64 192 -32 
            LINE N 192 -32 64 -32 
            RECTANGLE N 64 -320 320 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF and3b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 40 -64 
            CIRCLE N 40 -76 64 -52 
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 256 -128 192 -128 
            LINE N 64 -64 64 -192 
            ARC N 96 -176 192 -80 144 -80 144 -176 
            LINE N 144 -80 64 -80 
            LINE N 64 -176 144 -176 
        END BLOCKDEF
        BEGIN BLOCKDEF fd
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -320 320 -64 
            LINE N 0 -128 64 -128 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
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
        BEGIN BLOCK XLXI_6 busmerge
            PIN da(47:0) pipe0(47:0)
            PIN db(63:0) pipe1(63:0)
            PIN q(111:0) XLXN_9(111:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 and3b1
            PIN I0 match
            PIN I1 match_en
            PIN I2 XLXN_19
            PIN O XLXN_28
        END BLOCK
        BEGIN BLOCK XLXI_7 fdce
            PIN C XLXN_25
            PIN CE XLXN_28
            PIN CLR XLXN_25
            PIN D XLXN_28
            PIN Q match
        END BLOCK
        BEGIN BLOCK XLXI_3 wordmatch
            PIN datacomp(55:0) hwregA(55:0)
            PIN wildcard(6:0) hwregA(62:56)
            PIN detain(111:0) XLXN_9(111:0)
            PIN match XLXN_19
        END BLOCK
        BEGIN BLOCK XLXI_18 fd
            PIN C clk
            PIN D mrst
            PIN Q XLXN_25
        END BLOCK
        BEGIN BLOCK XLXI_21 reg9B
            PIN d(7:0) pipe1(71:0)
            PIN clk clk
            PIN ce ce
            PIN q(71:0) pipe0(71:0)
            PIN clr XLXN_25
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        INSTANCE XLXI_8 2000 1520 R0
        INSTANCE XLXI_7 2368 1648 R0
        BEGIN INSTANCE XLXI_3 1456 1488 R0
        END INSTANCE
        BEGIN BRANCH hwregA(63:0)
            WIRE 416 528 880 528
            BEGIN DISPLAY 880 528 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_18 1440 2032 R0
        IOMARKER 416 528 hwregA(63:0) R180 28
        BEGIN BRANCH XLXN_9(111:0)
            WIRE 1152 1456 1456 1456
        END BRANCH
        BEGIN BRANCH hwregA(62:56)
            WIRE 1344 1392 1456 1392
            BEGIN DISPLAY 1344 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH hwregA(55:0)
            WIRE 1344 1328 1456 1328
            BEGIN DISPLAY 1344 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe0(71:0)
            WIRE 1184 736 1408 736
            BEGIN DISPLAY 1408 736 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE XLXI_6 768 1424 R0
        END INSTANCE
        BEGIN BRANCH mrst
            WIRE 1312 1776 1440 1776
        END BRANCH
        BEGIN BRANCH XLXN_19
            WIRE 1840 1328 2000 1328
        END BRANCH
        BEGIN BRANCH match_en
            WIRE 1776 1600 1888 1600
            WIRE 1888 1392 2000 1392
            WIRE 1888 1392 1888 1600
        END BRANCH
        BEGIN BRANCH XLXN_25
            WIRE 608 992 608 1520
            WIRE 608 1520 608 2080
            WIRE 608 2080 2368 2080
            WIRE 608 1520 2368 1520
            WIRE 608 992 800 992
            WIRE 1824 1776 2368 1776
            WIRE 2368 1776 2368 2080
            WIRE 2368 1616 2368 1776
        END BRANCH
        BEGIN BRANCH match
            WIRE 1968 1216 2848 1216
            WIRE 2848 1216 2848 1392
            WIRE 2848 1392 2976 1392
            WIRE 1968 1216 1968 1456
            WIRE 1968 1456 2000 1456
            WIRE 2752 1392 2848 1392
        END BRANCH
        BEGIN BRANCH XLXN_28
            WIRE 2256 1392 2304 1392
            WIRE 2304 1392 2368 1392
            WIRE 2304 1392 2304 1456
            WIRE 2304 1456 2368 1456
        END BRANCH
        BEGIN BRANCH clk
            WIRE 464 864 720 864
            WIRE 720 864 800 864
            WIRE 720 864 720 1904
            WIRE 720 1904 1440 1904
        END BRANCH
        BEGIN BRANCH pipe1(71:0)
            WIRE 464 736 800 736
        END BRANCH
        BEGIN BRANCH pipe0(47:0)
            WIRE 480 1328 768 1328
            BEGIN DISPLAY 480 1328 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH pipe1(63:0)
            WIRE 480 1392 768 1392
            BEGIN DISPLAY 480 1392 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 1776 1600 match_en R180 28
        IOMARKER 1312 1776 mrst R180 28
        IOMARKER 464 736 pipe1(71:0) R180 28
        IOMARKER 2976 1392 match R0 28
        IOMARKER 464 864 clk R180 28
        BEGIN INSTANCE XLXI_21 800 960 R0
        END INSTANCE
        BEGIN BRANCH ce
            WIRE 464 928 800 928
        END BRANCH
        IOMARKER 464 928 ce R180 28
    END SHEET
END SCHEMATIC
