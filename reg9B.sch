VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL d(71:0)
        SIGNAL q(71:0)
        SIGNAL d(71:64)
        SIGNAL d(15:0)
        SIGNAL d(31:16)
        SIGNAL d(47:32)
        SIGNAL d(63:48)
        SIGNAL clr
        SIGNAL clk
        SIGNAL ce
        SIGNAL q(71:64)
        SIGNAL q(63:48)
        SIGNAL q(47:32)
        SIGNAL q(31:16)
        SIGNAL q(15:0)
        PORT Input d(71:0)
        PORT Output q(71:0)
        PORT Input clr
        PORT Input clk
        PORT Input ce
        BEGIN BLOCKDEF fd16ce
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -128 64 -128 
            LINE N 0 -192 64 -192 
            LINE N 0 -32 64 -32 
            LINE N 0 -256 64 -256 
            LINE N 384 -256 320 -256 
            LINE N 80 -128 64 -144 
            LINE N 64 -112 80 -128 
            RECTANGLE N 320 -268 384 -244 
            RECTANGLE N 0 -268 64 -244 
            LINE N 192 -32 64 -32 
            LINE N 192 -64 192 -32 
            RECTANGLE N 64 -320 320 -64 
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
        BEGIN BLOCK XLXI_2 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(63:48)
            PIN Q(15:0) q(63:48)
        END BLOCK
        BEGIN BLOCK XLXI_3 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(47:32)
            PIN Q(15:0) q(47:32)
        END BLOCK
        BEGIN BLOCK XLXI_4 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(31:16)
            PIN Q(15:0) q(31:16)
        END BLOCK
        BEGIN BLOCK XLXI_5 fd16ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(15:0) d(15:0)
            PIN Q(15:0) q(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 fd8ce
            PIN C clk
            PIN CE ce
            PIN CLR clr
            PIN D(7:0) d(71:64)
            PIN Q(7:0) q(71:64)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH d(71:0)
            WIRE 400 288 768 288
            BEGIN DISPLAY 768 288 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(71:0)
            WIRE 2672 320 3040 320
            BEGIN DISPLAY 2672 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 400 288 d(71:0) R180 28
        IOMARKER 3040 320 q(71:0) R0 28
        INSTANCE XLXI_3 1568 1568 R0
        INSTANCE XLXI_5 1568 2480 R0
        INSTANCE XLXI_2 1568 1152 R0
        INSTANCE XLXI_4 1568 2032 R0
        BEGIN BRANCH d(71:64)
            WIRE 1152 480 1568 480
            BEGIN DISPLAY 1152 480 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(15:0)
            WIRE 1168 2224 1568 2224
            BEGIN DISPLAY 1168 2224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(31:16)
            WIRE 1152 1776 1568 1776
            BEGIN DISPLAY 1152 1776 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(47:32)
            WIRE 1152 1312 1568 1312
            BEGIN DISPLAY 1152 1312 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH d(63:48)
            WIRE 1152 896 1568 896
            BEGIN DISPLAY 1152 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH clr
            WIRE 1184 2448 1392 2448
            WIRE 1392 2448 1568 2448
            WIRE 1392 704 1568 704
            WIRE 1392 704 1392 1120
            WIRE 1392 1120 1568 1120
            WIRE 1392 1120 1392 1536
            WIRE 1392 1536 1568 1536
            WIRE 1392 1536 1392 2000
            WIRE 1392 2000 1392 2448
            WIRE 1392 2000 1568 2000
        END BRANCH
        BEGIN BRANCH clk
            WIRE 1184 2352 1440 2352
            WIRE 1440 2352 1568 2352
            WIRE 1440 608 1568 608
            WIRE 1440 608 1440 1024
            WIRE 1440 1024 1568 1024
            WIRE 1440 1024 1440 1440
            WIRE 1440 1440 1568 1440
            WIRE 1440 1440 1440 1904
            WIRE 1440 1904 1440 2352
            WIRE 1440 1904 1568 1904
        END BRANCH
        BEGIN BRANCH ce
            WIRE 1184 2288 1488 2288
            WIRE 1488 2288 1568 2288
            WIRE 1488 544 1568 544
            WIRE 1488 544 1488 960
            WIRE 1488 960 1568 960
            WIRE 1488 960 1488 1376
            WIRE 1488 1376 1568 1376
            WIRE 1488 1376 1488 1840
            WIRE 1488 1840 1488 2288
            WIRE 1488 1840 1568 1840
        END BRANCH
        BEGIN BRANCH q(71:64)
            WIRE 1952 480 2224 480
            BEGIN DISPLAY 2224 480 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(63:48)
            WIRE 1952 896 2224 896
            BEGIN DISPLAY 2224 896 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(47:32)
            WIRE 1952 1312 2224 1312
            BEGIN DISPLAY 2224 1312 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(31:16)
            WIRE 1952 1776 2224 1776
            BEGIN DISPLAY 2224 1776 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH q(15:0)
            WIRE 1952 2224 2208 2224
            BEGIN DISPLAY 2208 2224 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 1184 2288 ce R180 28
        IOMARKER 1184 2352 clk R180 28
        IOMARKER 1184 2448 clr R180 28
        INSTANCE XLXI_6 1568 736 R0
    END SHEET
END SCHEMATIC
