VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL a(55:0)
        SIGNAL b(55:0)
        SIGNAL amask(6:0)
        SIGNAL XLXN_21
        SIGNAL amask(0)
        SIGNAL XLXN_7
        SIGNAL amask(5)
        SIGNAL a(47:40)
        SIGNAL b(47:40)
        SIGNAL XLXN_5
        SIGNAL amask(6)
        SIGNAL a(55:48)
        SIGNAL b(55:48)
        SIGNAL XLXN_9
        SIGNAL amask(4)
        SIGNAL a(39:32)
        SIGNAL b(39:32)
        SIGNAL XLXN_12
        SIGNAL amask(3)
        SIGNAL a(31:24)
        SIGNAL b(31:24)
        SIGNAL XLXN_4
        SIGNAL amask(2)
        SIGNAL amask(1)
        SIGNAL XLXN_27
        SIGNAL match
        SIGNAL XLXN_227
        SIGNAL XLXN_228
        SIGNAL XLXN_229
        SIGNAL XLXN_230
        SIGNAL XLXN_231
        SIGNAL XLXN_235
        SIGNAL XLXN_236
        SIGNAL a(23:16)
        SIGNAL b(23:16)
        SIGNAL a(15:8)
        SIGNAL b(15:8)
        SIGNAL a(7:0)
        SIGNAL b(7:0)
        PORT Input a(55:0)
        PORT Input b(55:0)
        PORT Input amask(6:0)
        PORT Output match
        BEGIN BLOCKDEF comp8
            TIMESTAMP 2000 1 1 10 10 10
            RECTANGLE N 64 -384 320 -64 
            LINE N 384 -224 320 -224 
            RECTANGLE N 0 -332 64 -308 
            LINE N 0 -320 64 -320 
            RECTANGLE N 0 -140 64 -116 
            LINE N 0 -128 64 -128 
        END BLOCKDEF
        BEGIN BLOCKDEF or2b1
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 0 -64 32 -64 
            CIRCLE N 32 -76 56 -52 
            LINE N 0 -128 64 -128 
            LINE N 256 -96 192 -96 
            LINE N 112 -48 48 -48 
            ARC N 28 -144 204 32 192 -96 112 -144 
            LINE N 112 -144 48 -144 
            ARC N -40 -152 72 -40 48 -48 48 -144 
            ARC N 28 -224 204 -48 112 -48 192 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF and7
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -448 64 -64 
            ARC N 96 -304 192 -208 144 -208 144 -304 
            LINE N 64 -304 144 -304 
            LINE N 144 -208 64 -208 
            LINE N 256 -256 192 -256 
            LINE N 0 -448 64 -448 
            LINE N 0 -384 64 -384 
            LINE N 0 -320 64 -320 
            LINE N 0 -256 64 -256 
            LINE N 0 -192 64 -192 
            LINE N 0 -128 64 -128 
            LINE N 0 -64 64 -64 
        END BLOCKDEF
        BEGIN BLOCK XLXI_14 comp8
            PIN A(7:0) a(7:0)
            PIN B(7:0) b(7:0)
            PIN EQ XLXN_21
        END BLOCK
        BEGIN BLOCK XLXI_6 or2b1
            PIN I0 amask(5)
            PIN I1 XLXN_7
            PIN O XLXN_228
        END BLOCK
        BEGIN BLOCK XLXI_2 comp8
            PIN A(7:0) a(47:40)
            PIN B(7:0) b(47:40)
            PIN EQ XLXN_7
        END BLOCK
        BEGIN BLOCK XLXI_5 or2b1
            PIN I0 amask(6)
            PIN I1 XLXN_5
            PIN O XLXN_227
        END BLOCK
        BEGIN BLOCK XLXI_1 comp8
            PIN A(7:0) a(55:48)
            PIN B(7:0) b(55:48)
            PIN EQ XLXN_5
        END BLOCK
        BEGIN BLOCK XLXI_7 or2b1
            PIN I0 amask(4)
            PIN I1 XLXN_9
            PIN O XLXN_229
        END BLOCK
        BEGIN BLOCK XLXI_3 comp8
            PIN A(7:0) a(39:32)
            PIN B(7:0) b(39:32)
            PIN EQ XLXN_9
        END BLOCK
        BEGIN BLOCK XLXI_8 or2b1
            PIN I0 amask(3)
            PIN I1 XLXN_12
            PIN O XLXN_230
        END BLOCK
        BEGIN BLOCK XLXI_4 comp8
            PIN A(7:0) a(31:24)
            PIN B(7:0) b(31:24)
            PIN EQ XLXN_12
        END BLOCK
        BEGIN BLOCK XLXI_12 comp8
            PIN A(7:0) a(23:16)
            PIN B(7:0) b(23:16)
            PIN EQ XLXN_4
        END BLOCK
        BEGIN BLOCK XLXI_13 comp8
            PIN A(7:0) a(15:8)
            PIN B(7:0) b(15:8)
            PIN EQ XLXN_27
        END BLOCK
        BEGIN BLOCK XLXI_25 and7
            PIN I0 XLXN_236
            PIN I1 XLXN_235
            PIN I2 XLXN_231
            PIN I3 XLXN_230
            PIN I4 XLXN_229
            PIN I5 XLXN_228
            PIN I6 XLXN_227
            PIN O match
        END BLOCK
        BEGIN BLOCK XLXI_11 or2b1
            PIN I0 amask(0)
            PIN I1 XLXN_21
            PIN O XLXN_236
        END BLOCK
        BEGIN BLOCK XLXI_9 or2b1
            PIN I0 amask(2)
            PIN I1 XLXN_4
            PIN O XLXN_231
        END BLOCK
        BEGIN BLOCK XLXI_10 or2b1
            PIN I0 amask(1)
            PIN I1 XLXN_27
            PIN O XLXN_235
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN BRANCH a(55:0)
            WIRE 240 112 736 112
            BEGIN DISPLAY 736 112 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 240 112 a(55:0) R180 28
        BEGIN BRANCH b(55:0)
            WIRE 240 208 736 208
            BEGIN DISPLAY 736 208 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 240 208 b(55:0) R180 28
        BEGIN BRANCH amask(6:0)
            WIRE 288 352 800 352
            BEGIN DISPLAY 800 352 ATTR Name
                ALIGNMENT SOFT-LEFT
            END DISPLAY
        END BRANCH
        IOMARKER 288 352 amask(6:0) R180 28
        INSTANCE XLXI_14 1424 2752 R0
        BEGIN BRANCH XLXN_21
            WIRE 1808 2528 2080 2528
        END BRANCH
        BEGIN BRANCH amask(0)
            WIRE 1968 2592 2080 2592
            BEGIN DISPLAY 1968 2592 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_6 2096 736 R0
        BEGIN BRANCH XLXN_7
            WIRE 1808 608 2096 608
        END BRANCH
        BEGIN BRANCH amask(5)
            WIRE 2000 672 2096 672
            BEGIN DISPLAY 2000 672 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_2 1424 832 R0
        BEGIN BRANCH a(47:40)
            WIRE 1264 512 1424 512
            BEGIN DISPLAY 1264 512 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(47:40)
            WIRE 1248 704 1424 704
            BEGIN DISPLAY 1248 704 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_5 2096 352 R0
        BEGIN BRANCH XLXN_5
            WIRE 1808 224 2096 224
        END BRANCH
        BEGIN BRANCH amask(6)
            WIRE 2000 288 2096 288
            BEGIN DISPLAY 2000 288 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_1 1424 448 R0
        BEGIN BRANCH a(55:48)
            WIRE 1264 128 1424 128
            BEGIN DISPLAY 1264 128 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(55:48)
            WIRE 1264 320 1424 320
            BEGIN DISPLAY 1264 320 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_7 2080 1120 R0
        BEGIN BRANCH XLXN_9
            WIRE 1808 992 2080 992
        END BRANCH
        BEGIN BRANCH amask(4)
            WIRE 2000 1056 2080 1056
            BEGIN DISPLAY 2000 1056 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_3 1424 1216 R0
        BEGIN BRANCH a(39:32)
            WIRE 1264 896 1424 896
            BEGIN DISPLAY 1264 896 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(39:32)
            WIRE 1264 1088 1424 1088
            BEGIN DISPLAY 1264 1088 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_8 2080 1504 R0
        BEGIN BRANCH XLXN_12
            WIRE 1808 1376 2080 1376
        END BRANCH
        BEGIN BRANCH amask(3)
            WIRE 1984 1440 2080 1440
            BEGIN DISPLAY 1984 1440 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_4 1424 1600 R0
        BEGIN BRANCH a(31:24)
            WIRE 1264 1280 1424 1280
            BEGIN DISPLAY 1264 1280 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(31:24)
            WIRE 1264 1472 1424 1472
            BEGIN DISPLAY 1264 1472 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_12 1424 1984 R0
        BEGIN BRANCH XLXN_4
            WIRE 1808 1760 2096 1760
        END BRANCH
        BEGIN BRANCH amask(2)
            WIRE 1984 1824 2096 1824
            BEGIN DISPLAY 1984 1824 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        INSTANCE XLXI_13 1424 2368 R0
        BEGIN BRANCH amask(1)
            WIRE 1968 2208 2096 2208
            BEGIN DISPLAY 1968 2208 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH XLXN_27
            WIRE 1808 2144 2096 2144
        END BRANCH
        INSTANCE XLXI_25 2736 1472 R0
        BEGIN BRANCH match
            WIRE 2992 1216 3216 1216
        END BRANCH
        IOMARKER 3216 1216 match R0 28
        BEGIN BRANCH XLXN_227
            WIRE 2352 256 2656 256
            WIRE 2656 256 2656 1024
            WIRE 2656 1024 2736 1024
        END BRANCH
        BEGIN BRANCH XLXN_228
            WIRE 2352 640 2576 640
            WIRE 2576 640 2576 1088
            WIRE 2576 1088 2736 1088
        END BRANCH
        BEGIN BRANCH XLXN_229
            WIRE 2336 1024 2528 1024
            WIRE 2528 1024 2528 1152
            WIRE 2528 1152 2736 1152
        END BRANCH
        BEGIN BRANCH XLXN_230
            WIRE 2336 1408 2528 1408
            WIRE 2528 1216 2528 1408
            WIRE 2528 1216 2736 1216
        END BRANCH
        BEGIN BRANCH XLXN_235
            WIRE 2352 2176 2656 2176
            WIRE 2656 1344 2656 2176
            WIRE 2656 1344 2736 1344
        END BRANCH
        BEGIN BRANCH XLXN_236
            WIRE 2336 2560 2736 2560
            WIRE 2736 1408 2736 2560
        END BRANCH
        INSTANCE XLXI_11 2080 2656 R0
        INSTANCE XLXI_9 2096 1888 R0
        INSTANCE XLXI_10 2096 2272 R0
        BEGIN BRANCH XLXN_231
            WIRE 2352 1792 2576 1792
            WIRE 2576 1280 2736 1280
            WIRE 2576 1280 2576 1792
        END BRANCH
        BEGIN BRANCH a(23:16)
            WIRE 1264 1664 1392 1664
            WIRE 1392 1664 1424 1664
            BEGIN DISPLAY 1264 1664 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(23:16)
            WIRE 1264 1856 1392 1856
            WIRE 1392 1856 1424 1856
            BEGIN DISPLAY 1264 1856 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(15:8)
            WIRE 1264 2048 1376 2048
            WIRE 1376 2048 1408 2048
            WIRE 1408 2048 1424 2048
            BEGIN DISPLAY 1264 2048 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(15:8)
            WIRE 1264 2240 1376 2240
            WIRE 1376 2240 1408 2240
            WIRE 1408 2240 1424 2240
            BEGIN DISPLAY 1264 2240 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH a(7:0)
            WIRE 1264 2432 1376 2432
            WIRE 1376 2432 1424 2432
            BEGIN DISPLAY 1264 2432 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
        BEGIN BRANCH b(7:0)
            WIRE 1248 2624 1280 2624
            WIRE 1280 2624 1376 2624
            WIRE 1376 2624 1424 2624
            BEGIN DISPLAY 1248 2624 ATTR Name
                ALIGNMENT SOFT-RIGHT
            END DISPLAY
        END BRANCH
    END SHEET
END SCHEMATIC
