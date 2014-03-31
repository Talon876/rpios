/**
 * Draws a boot logo then clears the screen.
 * Takes the FrameBufferInfo address as the first argument (r0)
 * Returns nothing.
 */
.globl DisplayBootLogo
DisplayBootLogo:
    push {lr}
    fbInfoAddr .req r4
    mov fbInfoAddr, r0
    bl SetGraphicsAddress
    .unreq fbInfoAddr


    mov r0,#0b0000011111100000 //green
    bl SetForeColor
    ldr r0,=960
    ldr r1,=540
    bl DrawPixel

    //everything below is generated
ldr r0,=6000000
bl Sleep

mov r0,#0b0000001110100000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=119
ldr r3,=536
bl DrawLineAnimated

ldr r0,=119
ldr r1,=536
ldr r2,=119
ldr r3,=536
bl DrawLineAnimated

ldr r0,=119
ldr r1,=536
ldr r2,=133
ldr r3,=595
bl DrawLineAnimated

ldr r0,=133
ldr r1,=595
ldr r2,=196
ldr r3,=483
bl DrawLineAnimated

ldr r0,=196
ldr r1,=483
ldr r2,=293
ldr r3,=515
bl DrawLineAnimated

ldr r0,=293
ldr r1,=515
ldr r2,=362
ldr r3,=596
bl DrawLineAnimated

ldr r0,=362
ldr r1,=596
ldr r2,=454
ldr r3,=529
bl DrawLineAnimated

ldr r0,=454
ldr r1,=529
ldr r2,=587
ldr r3,=591
bl DrawLineAnimated

ldr r0,=587
ldr r1,=591
ldr r2,=658
ldr r3,=575
bl DrawLineAnimated

ldr r0,=658
ldr r1,=575
ldr r2,=640
ldr r3,=564
bl DrawLineAnimated

ldr r0,=640
ldr r1,=564
ldr r2,=789
ldr r3,=507
bl DrawLineAnimated

ldr r0,=789
ldr r1,=507
ldr r2,=832
ldr r3,=533
bl DrawLineAnimated

ldr r0,=832
ldr r1,=533
ldr r2,=951
ldr r3,=573
bl DrawLineAnimated

ldr r0,=951
ldr r1,=573
ldr r2,=963
ldr r3,=490
bl DrawLineAnimated

ldr r0,=963
ldr r1,=490
ldr r2,=1038
ldr r3,=530
bl DrawLineAnimated

ldr r0,=1038
ldr r1,=530
ldr r2,=1139
ldr r3,=527
bl DrawLineAnimated

ldr r0,=1139
ldr r1,=527
ldr r2,=1192
ldr r3,=557
bl DrawLineAnimated

ldr r0,=1192
ldr r1,=557
ldr r2,=1246
ldr r3,=555
bl DrawLineAnimated

ldr r0,=1246
ldr r1,=555
ldr r2,=1383
ldr r3,=511
bl DrawLineAnimated

ldr r0,=1383
ldr r1,=511
ldr r2,=1441
ldr r3,=497
bl DrawLineAnimated

ldr r0,=1441
ldr r1,=497
ldr r2,=1562
ldr r3,=506
bl DrawLineAnimated

ldr r0,=1562
ldr r1,=506
ldr r2,=1635
ldr r3,=573
bl DrawLineAnimated

ldr r0,=1635
ldr r1,=573
ldr r2,=1721
ldr r3,=555
bl DrawLineAnimated

ldr r0,=1721
ldr r1,=555
ldr r2,=1726
ldr r3,=508
bl DrawLineAnimated

ldr r0,=1726
ldr r1,=508
ldr r2,=1878
ldr r3,=580
bl DrawLineAnimated

ldr r0,=1878
ldr r1,=580
ldr r2,=1919
ldr r3,=540
bl DrawLineAnimated


ldr r0,=175000
bl Sleep

mov r0,#0b0000010101000000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1849
ldr r3,=536
bl DrawLineAnimated

ldr r0,=1849
ldr r1,=536
ldr r2,=1849
ldr r3,=536
bl DrawLineAnimated

ldr r0,=1849
ldr r1,=536
ldr r2,=1785
ldr r3,=584
bl DrawLineAnimated

ldr r0,=1785
ldr r1,=584
ldr r2,=1680
ldr r3,=484
bl DrawLineAnimated

ldr r0,=1680
ldr r1,=484
ldr r2,=1653
ldr r3,=530
bl DrawLineAnimated

ldr r0,=1653
ldr r1,=530
ldr r2,=1535
ldr r3,=512
bl DrawLineAnimated

ldr r0,=1535
ldr r1,=512
ldr r2,=1439
ldr r3,=588
bl DrawLineAnimated

ldr r0,=1439
ldr r1,=588
ldr r2,=1332
ldr r3,=562
bl DrawLineAnimated

ldr r0,=1332
ldr r1,=562
ldr r2,=1323
ldr r3,=581
bl DrawLineAnimated

ldr r0,=1323
ldr r1,=581
ldr r2,=1211
ldr r3,=493
bl DrawLineAnimated

ldr r0,=1211
ldr r1,=493
ldr r2,=1203
ldr r3,=528
bl DrawLineAnimated

ldr r0,=1203
ldr r1,=528
ldr r2,=1049
ldr r3,=513
bl DrawLineAnimated

ldr r0,=1049
ldr r1,=513
ldr r2,=1046
ldr r3,=525
bl DrawLineAnimated

ldr r0,=1046
ldr r1,=525
ldr r2,=924
ldr r3,=499
bl DrawLineAnimated

ldr r0,=924
ldr r1,=499
ldr r2,=811
ldr r3,=580
bl DrawLineAnimated

ldr r0,=811
ldr r1,=580
ldr r2,=749
ldr r3,=542
bl DrawLineAnimated

ldr r0,=749
ldr r1,=542
ldr r2,=713
ldr r3,=565
bl DrawLineAnimated

ldr r0,=713
ldr r1,=565
ldr r2,=679
ldr r3,=598
bl DrawLineAnimated

ldr r0,=679
ldr r1,=598
ldr r2,=589
ldr r3,=547
bl DrawLineAnimated

ldr r0,=589
ldr r1,=547
ldr r2,=464
ldr r3,=564
bl DrawLineAnimated

ldr r0,=464
ldr r1,=564
ldr r2,=365
ldr r3,=480
bl DrawLineAnimated

ldr r0,=365
ldr r1,=480
ldr r2,=379
ldr r3,=526
bl DrawLineAnimated

ldr r0,=379
ldr r1,=526
ldr r2,=254
ldr r3,=504
bl DrawLineAnimated

ldr r0,=254
ldr r1,=504
ldr r2,=180
ldr r3,=538
bl DrawLineAnimated

ldr r0,=180
ldr r1,=538
ldr r2,=107
ldr r3,=484
bl DrawLineAnimated

ldr r0,=107
ldr r1,=484
ldr r2,=0
ldr r3,=540
bl DrawLineAnimated


ldr r0,=175000
bl Sleep

mov r0,#0b0000000100000000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=40
ldr r3,=591
bl DrawLineAnimated

ldr r0,=40
ldr r1,=591
ldr r2,=40
ldr r3,=591
bl DrawLineAnimated

ldr r0,=40
ldr r1,=591
ldr r2,=204
ldr r3,=532
bl DrawLineAnimated

ldr r0,=204
ldr r1,=532
ldr r2,=171
ldr r3,=578
bl DrawLineAnimated

ldr r0,=171
ldr r1,=578
ldr r2,=246
ldr r3,=585
bl DrawLineAnimated

ldr r0,=246
ldr r1,=585
ldr r2,=381
ldr r3,=548
bl DrawLineAnimated

ldr r0,=381
ldr r1,=548
ldr r2,=400
ldr r3,=587
bl DrawLineAnimated

ldr r0,=400
ldr r1,=587
ldr r2,=566
ldr r3,=598
bl DrawLineAnimated

ldr r0,=566
ldr r1,=598
ldr r2,=595
ldr r3,=528
bl DrawLineAnimated

ldr r0,=595
ldr r1,=528
ldr r2,=713
ldr r3,=559
bl DrawLineAnimated

ldr r0,=713
ldr r1,=559
ldr r2,=755
ldr r3,=486
bl DrawLineAnimated

ldr r0,=755
ldr r1,=486
ldr r2,=817
ldr r3,=539
bl DrawLineAnimated

ldr r0,=817
ldr r1,=539
ldr r2,=960
ldr r3,=547
bl DrawLineAnimated

ldr r0,=960
ldr r1,=547
ldr r2,=997
ldr r3,=540
bl DrawLineAnimated

ldr r0,=997
ldr r1,=540
ldr r2,=1071
ldr r3,=572
bl DrawLineAnimated

ldr r0,=1071
ldr r1,=572
ldr r2,=1190
ldr r3,=573
bl DrawLineAnimated

ldr r0,=1190
ldr r1,=573
ldr r2,=1270
ldr r3,=584
bl DrawLineAnimated

ldr r0,=1270
ldr r1,=584
ldr r2,=1243
ldr r3,=501
bl DrawLineAnimated

ldr r0,=1243
ldr r1,=501
ldr r2,=1360
ldr r3,=508
bl DrawLineAnimated

ldr r0,=1360
ldr r1,=508
ldr r2,=1461
ldr r3,=592
bl DrawLineAnimated

ldr r0,=1461
ldr r1,=592
ldr r2,=1495
ldr r3,=568
bl DrawLineAnimated

ldr r0,=1495
ldr r1,=568
ldr r2,=1563
ldr r3,=558
bl DrawLineAnimated

ldr r0,=1563
ldr r1,=558
ldr r2,=1629
ldr r3,=526
bl DrawLineAnimated

ldr r0,=1629
ldr r1,=526
ldr r2,=1759
ldr r3,=539
bl DrawLineAnimated

ldr r0,=1759
ldr r1,=539
ldr r2,=1832
ldr r3,=534
bl DrawLineAnimated

ldr r0,=1832
ldr r1,=534
ldr r2,=1919
ldr r3,=540
bl DrawLineAnimated


ldr r0,=175000
bl Sleep

mov r0,#0b0000001100000000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1852
ldr r3,=495
bl DrawLineAnimated

ldr r0,=1852
ldr r1,=495
ldr r2,=1852
ldr r3,=495
bl DrawLineAnimated

ldr r0,=1852
ldr r1,=495
ldr r2,=1725
ldr r3,=520
bl DrawLineAnimated

ldr r0,=1725
ldr r1,=520
ldr r2,=1655
ldr r3,=494
bl DrawLineAnimated

ldr r0,=1655
ldr r1,=494
ldr r2,=1612
ldr r3,=600
bl DrawLineAnimated

ldr r0,=1612
ldr r1,=600
ldr r2,=1535
ldr r3,=572
bl DrawLineAnimated

ldr r0,=1535
ldr r1,=572
ldr r2,=1476
ldr r3,=509
bl DrawLineAnimated

ldr r0,=1476
ldr r1,=509
ldr r2,=1366
ldr r3,=552
bl DrawLineAnimated

ldr r0,=1366
ldr r1,=552
ldr r2,=1344
ldr r3,=555
bl DrawLineAnimated

ldr r0,=1344
ldr r1,=555
ldr r2,=1262
ldr r3,=591
bl DrawLineAnimated

ldr r0,=1262
ldr r1,=591
ldr r2,=1210
ldr r3,=495
bl DrawLineAnimated

ldr r0,=1210
ldr r1,=495
ldr r2,=1121
ldr r3,=552
bl DrawLineAnimated

ldr r0,=1121
ldr r1,=552
ldr r2,=1067
ldr r3,=503
bl DrawLineAnimated

ldr r0,=1067
ldr r1,=503
ldr r2,=909
ldr r3,=598
bl DrawLineAnimated

ldr r0,=909
ldr r1,=598
ldr r2,=882
ldr r3,=489
bl DrawLineAnimated

ldr r0,=882
ldr r1,=489
ldr r2,=806
ldr r3,=560
bl DrawLineAnimated

ldr r0,=806
ldr r1,=560
ldr r2,=749
ldr r3,=578
bl DrawLineAnimated

ldr r0,=749
ldr r1,=578
ldr r2,=585
ldr r3,=513
bl DrawLineAnimated

ldr r0,=585
ldr r1,=513
ldr r2,=559
ldr r3,=584
bl DrawLineAnimated

ldr r0,=559
ldr r1,=584
ldr r2,=479
ldr r3,=502
bl DrawLineAnimated

ldr r0,=479
ldr r1,=502
ldr r2,=433
ldr r3,=524
bl DrawLineAnimated

ldr r0,=433
ldr r1,=524
ldr r2,=263
ldr r3,=515
bl DrawLineAnimated

ldr r0,=263
ldr r1,=515
ldr r2,=239
ldr r3,=522
bl DrawLineAnimated

ldr r0,=239
ldr r1,=522
ldr r2,=147
ldr r3,=581
bl DrawLineAnimated

ldr r0,=147
ldr r1,=581
ldr r2,=113
ldr r3,=557
bl DrawLineAnimated

ldr r0,=113
ldr r1,=557
ldr r2,=0
ldr r3,=540
bl DrawLineAnimated


ldr r0,=175000
bl Sleep

mov r0,#0b0000011101100000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=41
ldr r3,=490
bl DrawLineAnimated

ldr r0,=41
ldr r1,=490
ldr r2,=41
ldr r3,=490
bl DrawLineAnimated

ldr r0,=41
ldr r1,=490
ldr r2,=138
ldr r3,=530
bl DrawLineAnimated

ldr r0,=138
ldr r1,=530
ldr r2,=269
ldr r3,=547
bl DrawLineAnimated

ldr r0,=269
ldr r1,=547
ldr r2,=307
ldr r3,=550
bl DrawLineAnimated

ldr r0,=307
ldr r1,=550
ldr r2,=348
ldr r3,=572
bl DrawLineAnimated

ldr r0,=348
ldr r1,=572
ldr r2,=485
ldr r3,=577
bl DrawLineAnimated

ldr r0,=485
ldr r1,=577
ldr r2,=478
ldr r3,=590
bl DrawLineAnimated

ldr r0,=478
ldr r1,=590
ldr r2,=618
ldr r3,=569
bl DrawLineAnimated

ldr r0,=618
ldr r1,=569
ldr r2,=639
ldr r3,=521
bl DrawLineAnimated

ldr r0,=639
ldr r1,=521
ldr r2,=749
ldr r3,=579
bl DrawLineAnimated

ldr r0,=749
ldr r1,=579
ldr r2,=878
ldr r3,=549
bl DrawLineAnimated

ldr r0,=878
ldr r1,=549
ldr r2,=876
ldr r3,=596
bl DrawLineAnimated

ldr r0,=876
ldr r1,=596
ldr r2,=978
ldr r3,=581
bl DrawLineAnimated

ldr r0,=978
ldr r1,=581
ldr r2,=1027
ldr r3,=535
bl DrawLineAnimated

ldr r0,=1027
ldr r1,=535
ldr r2,=1089
ldr r3,=567
bl DrawLineAnimated

ldr r0,=1089
ldr r1,=567
ldr r2,=1240
ldr r3,=571
bl DrawLineAnimated

ldr r0,=1240
ldr r1,=571
ldr r2,=1263
ldr r3,=490
bl DrawLineAnimated

ldr r0,=1263
ldr r1,=490
ldr r2,=1311
ldr r3,=556
bl DrawLineAnimated

ldr r0,=1311
ldr r1,=556
ldr r2,=1443
ldr r3,=495
bl DrawLineAnimated

ldr r0,=1443
ldr r1,=495
ldr r2,=1475
ldr r3,=589
bl DrawLineAnimated

ldr r0,=1475
ldr r1,=589
ldr r2,=1607
ldr r3,=481
bl DrawLineAnimated

ldr r0,=1607
ldr r1,=481
ldr r2,=1691
ldr r3,=594
bl DrawLineAnimated

ldr r0,=1691
ldr r1,=594
ldr r2,=1765
ldr r3,=576
bl DrawLineAnimated

ldr r0,=1765
ldr r1,=576
ldr r2,=1795
ldr r3,=587
bl DrawLineAnimated

ldr r0,=1795
ldr r1,=587
ldr r2,=1919
ldr r3,=540
bl DrawLineAnimated


ldr r0,=175000
bl Sleep

mov r0,#0b0000011001000000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1822
ldr r3,=595
bl DrawLineAnimated

ldr r0,=1822
ldr r1,=595
ldr r2,=1822
ldr r3,=595
bl DrawLineAnimated

ldr r0,=1822
ldr r1,=595
ldr r2,=1826
ldr r3,=552
bl DrawLineAnimated

ldr r0,=1826
ldr r1,=552
ldr r2,=1739
ldr r3,=527
bl DrawLineAnimated

ldr r0,=1739
ldr r1,=527
ldr r2,=1574
ldr r3,=569
bl DrawLineAnimated

ldr r0,=1574
ldr r1,=569
ldr r2,=1550
ldr r3,=544
bl DrawLineAnimated

ldr r0,=1550
ldr r1,=544
ldr r2,=1411
ldr r3,=573
bl DrawLineAnimated

ldr r0,=1411
ldr r1,=573
ldr r2,=1402
ldr r3,=531
bl DrawLineAnimated

ldr r0,=1402
ldr r1,=531
ldr r2,=1322
ldr r3,=500
bl DrawLineAnimated

ldr r0,=1322
ldr r1,=500
ldr r2,=1275
ldr r3,=579
bl DrawLineAnimated

ldr r0,=1275
ldr r1,=579
ldr r2,=1108
ldr r3,=500
bl DrawLineAnimated

ldr r0,=1108
ldr r1,=500
ldr r2,=1095
ldr r3,=567
bl DrawLineAnimated

ldr r0,=1095
ldr r1,=567
ldr r2,=1024
ldr r3,=570
bl DrawLineAnimated

ldr r0,=1024
ldr r1,=570
ldr r2,=919
ldr r3,=575
bl DrawLineAnimated

ldr r0,=919
ldr r1,=575
ldr r2,=814
ldr r3,=557
bl DrawLineAnimated

ldr r0,=814
ldr r1,=557
ldr r2,=761
ldr r3,=481
bl DrawLineAnimated

ldr r0,=761
ldr r1,=481
ldr r2,=691
ldr r3,=542
bl DrawLineAnimated

ldr r0,=691
ldr r1,=542
ldr r2,=624
ldr r3,=528
bl DrawLineAnimated

ldr r0,=624
ldr r1,=528
ldr r2,=534
ldr r3,=484
bl DrawLineAnimated

ldr r0,=534
ldr r1,=484
ldr r2,=429
ldr r3,=575
bl DrawLineAnimated

ldr r0,=429
ldr r1,=575
ldr r2,=373
ldr r3,=583
bl DrawLineAnimated

ldr r0,=373
ldr r1,=583
ldr r2,=312
ldr r3,=508
bl DrawLineAnimated

ldr r0,=312
ldr r1,=508
ldr r2,=239
ldr r3,=502
bl DrawLineAnimated

ldr r0,=239
ldr r1,=502
ldr r2,=141
ldr r3,=566
bl DrawLineAnimated

ldr r0,=141
ldr r1,=566
ldr r2,=88
ldr r3,=481
bl DrawLineAnimated

ldr r0,=88
ldr r1,=481
ldr r2,=0
ldr r3,=540
bl DrawLineAnimated


ldr r0,=175000
bl Sleep

ldr r0,=0b1111100000000000
bl SetForeColor

ldr r0,=85
ldr r1,=895
ldr r2,=650
bl DrawCharacter
ldr r0,=250000
bl Sleep

mov r0,#0b0000011111100000
bl SetForeColor

ldr r0,=87
ldr r1,=911
ldr r2,=650
bl DrawCharacter
ldr r0,=79
ldr r1,=927
ldr r2,=650
bl DrawCharacter
ldr r0,=84
ldr r1,=943
ldr r2,=650
bl DrawCharacter
ldr r0,=250000
bl Sleep

mov r0,#0b0000000000011111
bl SetForeColor

ldr r0,=109
ldr r1,=959
ldr r2,=650
bl DrawCharacter
ldr r0,=56
ldr r1,=975
ldr r2,=650
bl DrawCharacter
ldr r0,=250000
bl Sleep

ldr r0,=0b1111111111111111
bl SetForeColor

ldr r0,=63
ldr r1,=991
ldr r2,=650
bl DrawCharacter
mov r0,#0b0000000010100000
bl SetForeColor

ldr r0,=0
ldr r1,=712
ldr r2,=160
ldr r3,=712
bl DrawLineAnimated

ldr r0,=0
ldr r1,=713
ldr r2,=160
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000000101000000
bl SetForeColor

ldr r0,=160
ldr r1,=712
ldr r2,=320
ldr r3,=712
bl DrawLineAnimated

ldr r0,=160
ldr r1,=713
ldr r2,=320
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000000111100000
bl SetForeColor

ldr r0,=320
ldr r1,=712
ldr r2,=480
ldr r3,=712
bl DrawLineAnimated

ldr r0,=320
ldr r1,=713
ldr r2,=480
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000001010100000
bl SetForeColor

ldr r0,=480
ldr r1,=712
ldr r2,=640
ldr r3,=712
bl DrawLineAnimated

ldr r0,=480
ldr r1,=713
ldr r2,=640
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000001101000000
bl SetForeColor

ldr r0,=640
ldr r1,=712
ldr r2,=800
ldr r3,=712
bl DrawLineAnimated

ldr r0,=640
ldr r1,=713
ldr r2,=800
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000001111100000
bl SetForeColor

ldr r0,=800
ldr r1,=712
ldr r2,=960
ldr r3,=712
bl DrawLineAnimated

ldr r0,=800
ldr r1,=713
ldr r2,=960
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000010010000000
bl SetForeColor

ldr r0,=960
ldr r1,=712
ldr r2,=1120
ldr r3,=712
bl DrawLineAnimated

ldr r0,=960
ldr r1,=713
ldr r2,=1120
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000010101000000
bl SetForeColor

ldr r0,=1120
ldr r1,=712
ldr r2,=1280
ldr r3,=712
bl DrawLineAnimated

ldr r0,=1120
ldr r1,=713
ldr r2,=1280
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000010111100000
bl SetForeColor

ldr r0,=1280
ldr r1,=712
ldr r2,=1440
ldr r3,=712
bl DrawLineAnimated

ldr r0,=1280
ldr r1,=713
ldr r2,=1440
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000011010000000
bl SetForeColor

ldr r0,=1440
ldr r1,=712
ldr r2,=1600
ldr r3,=712
bl DrawLineAnimated

ldr r0,=1440
ldr r1,=713
ldr r2,=1600
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000011100100000
bl SetForeColor

ldr r0,=1600
ldr r1,=712
ldr r2,=1760
ldr r3,=712
bl DrawLineAnimated

ldr r0,=1600
ldr r1,=713
ldr r2,=1760
ldr r3,=713
bl DrawLineAnimated

mov r0,#0b0000011111100000
bl SetForeColor

ldr r0,=1760
ldr r1,=712
ldr r2,=1919
ldr r3,=712
bl DrawLineAnimated

ldr r0,=1760
ldr r1,=713
ldr r2,=1919
ldr r3,=713
bl DrawLineAnimated

pop {pc}
