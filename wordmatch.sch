VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL match
        SIGNAL XLXN_3
        SIGNAL XLXN_4
        SIGNAL XLXN_5
        SIGNAL XLXN_6
        SIGNAL XLXN_7
        SIGNAL XLXN_8
        SIGNAL XLXN_9
        SIGNAL XLXN_10
        SIGNAL XLXN_11
        SIGNAL XLXN_12
        SIGNAL datacomp(55:0)
        SIGNAL XLXN_14(55:0)
        SIGNAL datain(55:0)
        SIGNAL datain(63:8)
        SIGNAL datain(71:16)
        SIGNAL datain(79:24)
        SIGNAL datain(87:32)
        SIGNAL datain(95:40)
        SIGNAL datain(103:48)
        SIGNAL wildcard(6:0)
        SIGNAL datain(111:56)
        SIGNAL detain(111:0)
        PORT Output match
        PORT Input datacomp(55:0)
        PORT Input wildcard(6:0)
        PORT Input detain(111:0)
        BEGIN BLOCKDEF comparator
            TIMESTAMP 2026 2 1 9 7 30
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF or8
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 48 -64 
            LINE N 0 -128 48 -128 
            LINE N 0 -192 48 -192 
            LINE N 0 -384 48 -384 
            LINE N 0 -448 48 -448 
            LINE N 0 -512 48 -512 
            LINE N 256 -288 192 -288 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            ARC N 28 -336 204 -160 192 -288 112 -336 
            LINE N 112 -240 48 -240 
            ARC N 28 -416 204 -240 112 -240 192 -288 
            ARC N -40 -344 72 -232 48 -240 48 -336 
            LINE N 112 -336 48 -336 
            LINE N 48 -336 48 -512 
            LINE N 48 -64 48 -240 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(55:0)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_3
        END BLOCK
        BEGIN BLOCK XLXI_3 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(71:16)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_4 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(79:24)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_5 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(87:32)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_6 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(95:40)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_10
        END BLOCK
        BEGIN BLOCK XLXI_7 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(103:48)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_11
        END BLOCK
        BEGIN BLOCK XLXI_8 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(111:56)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_17 or8
            PIN I0 XLXN_12
            PIN I1 XLXN_11
            PIN I2 XLXN_10
            PIN I3 XLXN_9
            PIN I4 XLXN_7
            PIN I5 XLXN_5
            PIN I6 XLXN_4
            PIN I7 XLXN_3
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_18 comparator
            PIN a(55:0) datacomp(55:0)
            PIN b(55:0) datain(63:8)
            PIN amask(6:0) wildcard(6:0)
            PIN match XLXN_4
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_1 1504 528 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 1504 1040 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 1504 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 1504 1552 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1504 1808 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1504 2064 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1504 2320 R0
        END INSTANCE
        INSTANCE XLXI_17 2448 1584 R0
        BEGIN BRANCH match
            WIRE 2704 1296 2880 1296
        END BRANCH
        BEGIN BRANCH XLXN_3
            WIRE 1888 368 2448 368
            WIRE 2448 368 2448 1072
        END BRANCH
        BEGIN BRANCH XLXN_4
            WIRE 1888 624 2160 624
            WIRE 2160 624 2160 1136
            WIRE 2160 1136 2448 1136
        END BRANCH
        BEGIN BRANCH XLXN_5
            WIRE 1888 880 2144 880
            WIRE 2144 880 2144 1200
            WIRE 2144 1200 2448 1200
        END BRANCH
        BEGIN BRANCH XLXN_7
            WIRE 1888 1136 1904 1136
            WIRE 1904 1136 1904 1264
            WIRE 1904 1264 2448 1264
        END BRANCH
        BEGIN BRANCH XLXN_9
            WIRE 1888 1392 1904 1392
            WIRE 1904 1328 2448 1328
            WIRE 1904 1328 1904 1392
        END BRANCH
        BEGIN BRANCH XLXN_10
            WIRE 1888 1648 2160 1648
            WIRE 2160 1392 2160 1648
            WIRE 2160 1392 2448 1392
        END BRANCH
        BEGIN BRANCH XLXN_11
            WIRE 1888 1904 2176 1904
            WIRE 2176 1456 2176 1904
            WIRE 2176 1456 2448 1456
        END BRANCH
        BEGIN BRANCH XLXN_12
            WIRE 1888 2160 2448 2160
            WIRE 2448 1520 2448 2160
        END BRANCH
        BEGIN BRANCH datacomp(55:0)
            WIRE 992 368 1216 368
            WIRE 1216 368 1504 368
            WIRE 1216 368 1216 624
            WIRE 1216 624 1504 624
            WIRE 1216 624 1216 880
            WIRE 1216 880 1504 880
            WIRE 1216 880 1216 1136
            WIRE 1216 1136 1504 1136
            WIRE 1216 1136 1216 1392
            WIRE 1216 1392 1504 1392
            WIRE 1216 1392 1216 1648
            WIRE 1216 1648 1504 1648
            WIRE 1216 1648 1216 1904
            WIRE 1216 1904 1216 2160
            WIRE 1216 2160 1504 2160
            WIRE 1216 1904 1504 1904
        END BRANCH
        BEGIN INSTANCE XLXI_18 1504 784 R0
        END INSTANCE
        BEGIN BRANCH datain(55:0)
            WIRE 1424 432 1504 432
            BEGIN DISPLAY 1424 432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(63:8)
            WIRE 1424 688 1504 688
            BEGIN DISPLAY 1424 688 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(71:16)
            WIRE 1424 944 1488 944
            WIRE 1488 944 1504 944
            BEGIN DISPLAY 1424 944 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(79:24)
            WIRE 1424 1200 1504 1200
            BEGIN DISPLAY 1424 1200 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(87:32)
            WIRE 1424 1456 1504 1456
            BEGIN DISPLAY 1424 1456 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(95:40)
            WIRE 1424 1712 1504 1712
            BEGIN DISPLAY 1424 1712 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH datain(103:48)
            WIRE 1424 1968 1504 1968
            BEGIN DISPLAY 1424 1968 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH wildcard(6:0)
            WIRE 944 496 1104 496
            WIRE 1104 496 1504 496
            WIRE 1104 496 1104 752
            WIRE 1104 752 1504 752
            WIRE 1104 752 1104 1008
            WIRE 1104 1008 1504 1008
            WIRE 1104 1008 1104 1248
            WIRE 1104 1248 1104 1264
            WIRE 1104 1264 1504 1264
            WIRE 1104 1264 1104 1520
            WIRE 1104 1520 1504 1520
            WIRE 1104 1520 1104 1776
            WIRE 1104 1776 1504 1776
            WIRE 1104 1776 1104 2032
            WIRE 1104 2032 1104 2288
            WIRE 1104 2288 1504 2288
            WIRE 1104 2032 1504 2032
        END BRANCH
        BEGIN BRANCH datain(111:56)
            WIRE 1424 2224 1504 2224
            BEGIN DISPLAY 1424 2224 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        IOMARKER 992 368 datacomp(55:0) R180 28
        IOMARKER 2880 1296 match R0 28
        BEGIN BRANCH detain(111:0)
            WIRE 960 240 1184 240
            BEGIN DISPLAY 1184 240 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 960 240 detain(111:0) R180 28
        IOMARKER 944 496 wildcard(6:0) R180 28
    END SHEET
END SCHEMATIC
