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

mov r0,#0b0000000010100000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=125
ldr r3,=516
bl DrawLine

ldr r0,=125
ldr r1,=516
ldr r2,=125
ldr r3,=516
bl DrawLine

ldr r0,=125
ldr r1,=516
ldr r2,=178
ldr r3,=510
bl DrawLine

ldr r0,=178
ldr r1,=510
ldr r2,=206
ldr r3,=525
bl DrawLine

ldr r0,=206
ldr r1,=525
ldr r2,=333
ldr r3,=587
bl DrawLine

ldr r0,=333
ldr r1,=587
ldr r2,=422
ldr r3,=482
bl DrawLine

ldr r0,=422
ldr r1,=482
ldr r2,=460
ldr r3,=592
bl DrawLine

ldr r0,=460
ldr r1,=592
ldr r2,=473
ldr r3,=554
bl DrawLine

ldr r0,=473
ldr r1,=554
ldr r2,=609
ldr r3,=547
bl DrawLine

ldr r0,=609
ldr r1,=547
ldr r2,=725
ldr r3,=530
bl DrawLine

ldr r0,=725
ldr r1,=530
ldr r2,=795
ldr r3,=538
bl DrawLine

ldr r0,=795
ldr r1,=538
ldr r2,=842
ldr r3,=508
bl DrawLine

ldr r0,=842
ldr r1,=508
ldr r2,=878
ldr r3,=595
bl DrawLine

ldr r0,=878
ldr r1,=595
ldr r2,=1035
ldr r3,=506
bl DrawLine

ldr r0,=1035
ldr r1,=506
ldr r2,=1100
ldr r3,=540
bl DrawLine

ldr r0,=1100
ldr r1,=540
ldr r2,=1121
ldr r3,=594
bl DrawLine

ldr r0,=1121
ldr r1,=594
ldr r2,=1275
ldr r3,=513
bl DrawLine

ldr r0,=1275
ldr r1,=513
ldr r2,=1285
ldr r3,=495
bl DrawLine

ldr r0,=1285
ldr r1,=495
ldr r2,=1367
ldr r3,=530
bl DrawLine

ldr r0,=1367
ldr r1,=530
ldr r2,=1420
ldr r3,=574
bl DrawLine

ldr r0,=1420
ldr r1,=574
ldr r2,=1484
ldr r3,=500
bl DrawLine

ldr r0,=1484
ldr r1,=500
ldr r2,=1605
ldr r3,=496
bl DrawLine

ldr r0,=1605
ldr r1,=496
ldr r2,=1728
ldr r3,=527
bl DrawLine

ldr r0,=1728
ldr r1,=527
ldr r2,=1792
ldr r3,=498
bl DrawLine

ldr r0,=1792
ldr r1,=498
ldr r2,=1783
ldr r3,=531
bl DrawLine

ldr r0,=1783
ldr r1,=531
ldr r2,=1919
ldr r3,=540
bl DrawLine


ldr r0,=175000
bl Sleep

mov r0,#0b0000011110000000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1834
ldr r3,=575
bl DrawLine

ldr r0,=1834
ldr r1,=575
ldr r2,=1834
ldr r3,=575
bl DrawLine

ldr r0,=1834
ldr r1,=575
ldr r2,=1809
ldr r3,=546
bl DrawLine

ldr r0,=1809
ldr r1,=546
ldr r2,=1683
ldr r3,=495
bl DrawLine

ldr r0,=1683
ldr r1,=495
ldr r2,=1668
ldr r3,=553
bl DrawLine

ldr r0,=1668
ldr r1,=553
ldr r2,=1493
ldr r3,=513
bl DrawLine

ldr r0,=1493
ldr r1,=513
ldr r2,=1450
ldr r3,=591
bl DrawLine

ldr r0,=1450
ldr r1,=591
ldr r2,=1388
ldr r3,=531
bl DrawLine

ldr r0,=1388
ldr r1,=531
ldr r2,=1292
ldr r3,=514
bl DrawLine

ldr r0,=1292
ldr r1,=514
ldr r2,=1286
ldr r3,=495
bl DrawLine

ldr r0,=1286
ldr r1,=495
ldr r2,=1150
ldr r3,=504
bl DrawLine

ldr r0,=1150
ldr r1,=504
ldr r2,=1140
ldr r3,=519
bl DrawLine

ldr r0,=1140
ldr r1,=519
ldr r2,=1007
ldr r3,=516
bl DrawLine

ldr r0,=1007
ldr r1,=516
ldr r2,=881
ldr r3,=565
bl DrawLine

ldr r0,=881
ldr r1,=565
ldr r2,=897
ldr r3,=540
bl DrawLine

ldr r0,=897
ldr r1,=540
ldr r2,=786
ldr r3,=481
bl DrawLine

ldr r0,=786
ldr r1,=481
ldr r2,=746
ldr r3,=527
bl DrawLine

ldr r0,=746
ldr r1,=527
ldr r2,=617
ldr r3,=599
bl DrawLine

ldr r0,=617
ldr r1,=599
ldr r2,=550
ldr r3,=512
bl DrawLine

ldr r0,=550
ldr r1,=512
ldr r2,=494
ldr r3,=494
bl DrawLine

ldr r0,=494
ldr r1,=494
ldr r2,=426
ldr r3,=585
bl DrawLine

ldr r0,=426
ldr r1,=585
ldr r2,=362
ldr r3,=592
bl DrawLine

ldr r0,=362
ldr r1,=592
ldr r2,=261
ldr r3,=521
bl DrawLine

ldr r0,=261
ldr r1,=521
ldr r2,=223
ldr r3,=531
bl DrawLine

ldr r0,=223
ldr r1,=531
ldr r2,=80
ldr r3,=599
bl DrawLine

ldr r0,=80
ldr r1,=599
ldr r2,=0
ldr r3,=540
bl DrawLine


ldr r0,=175000
bl Sleep

mov r0,#0b0000011001000000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=128
ldr r3,=541
bl DrawLine

ldr r0,=128
ldr r1,=541
ldr r2,=128
ldr r3,=541
bl DrawLine

ldr r0,=128
ldr r1,=541
ldr r2,=177
ldr r3,=516
bl DrawLine

ldr r0,=177
ldr r1,=516
ldr r2,=256
ldr r3,=571
bl DrawLine

ldr r0,=256
ldr r1,=571
ldr r2,=262
ldr r3,=507
bl DrawLine

ldr r0,=262
ldr r1,=507
ldr r2,=355
ldr r3,=486
bl DrawLine

ldr r0,=355
ldr r1,=486
ldr r2,=415
ldr r3,=508
bl DrawLine

ldr r0,=415
ldr r1,=508
ldr r2,=563
ldr r3,=546
bl DrawLine

ldr r0,=563
ldr r1,=546
ldr r2,=584
ldr r3,=497
bl DrawLine

ldr r0,=584
ldr r1,=497
ldr r2,=642
ldr r3,=546
bl DrawLine

ldr r0,=642
ldr r1,=546
ldr r2,=776
ldr r3,=568
bl DrawLine

ldr r0,=776
ldr r1,=568
ldr r2,=849
ldr r3,=534
bl DrawLine

ldr r0,=849
ldr r1,=534
ldr r2,=953
ldr r3,=510
bl DrawLine

ldr r0,=953
ldr r1,=510
ldr r2,=1024
ldr r3,=485
bl DrawLine

ldr r0,=1024
ldr r1,=485
ldr r2,=1041
ldr r3,=491
bl DrawLine

ldr r0,=1041
ldr r1,=491
ldr r2,=1188
ldr r3,=496
bl DrawLine

ldr r0,=1188
ldr r1,=496
ldr r2,=1175
ldr r3,=532
bl DrawLine

ldr r0,=1175
ldr r1,=532
ldr r2,=1332
ldr r3,=483
bl DrawLine

ldr r0,=1332
ldr r1,=483
ldr r2,=1319
ldr r3,=520
bl DrawLine

ldr r0,=1319
ldr r1,=520
ldr r2,=1391
ldr r3,=533
bl DrawLine

ldr r0,=1391
ldr r1,=533
ldr r2,=1540
ldr r3,=585
bl DrawLine

ldr r0,=1540
ldr r1,=585
ldr r2,=1630
ldr r3,=596
bl DrawLine

ldr r0,=1630
ldr r1,=596
ldr r2,=1626
ldr r3,=597
bl DrawLine

ldr r0,=1626
ldr r1,=597
ldr r2,=1803
ldr r3,=524
bl DrawLine

ldr r0,=1803
ldr r1,=524
ldr r2,=1884
ldr r3,=531
bl DrawLine

ldr r0,=1884
ldr r1,=531
ldr r2,=1919
ldr r3,=540
bl DrawLine


ldr r0,=175000
bl Sleep

mov r0,#0b0000011001100000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1850
ldr r3,=568
bl DrawLine

ldr r0,=1850
ldr r1,=568
ldr r2,=1850
ldr r3,=568
bl DrawLine

ldr r0,=1850
ldr r1,=568
ldr r2,=1728
ldr r3,=510
bl DrawLine

ldr r0,=1728
ldr r1,=510
ldr r2,=1705
ldr r3,=558
bl DrawLine

ldr r0,=1705
ldr r1,=558
ldr r2,=1629
ldr r3,=574
bl DrawLine

ldr r0,=1629
ldr r1,=574
ldr r2,=1558
ldr r3,=539
bl DrawLine

ldr r0,=1558
ldr r1,=539
ldr r2,=1420
ldr r3,=517
bl DrawLine

ldr r0,=1420
ldr r1,=517
ldr r2,=1432
ldr r3,=558
bl DrawLine

ldr r0,=1432
ldr r1,=558
ldr r2,=1349
ldr r3,=494
bl DrawLine

ldr r0,=1349
ldr r1,=494
ldr r2,=1258
ldr r3,=575
bl DrawLine

ldr r0,=1258
ldr r1,=575
ldr r2,=1156
ldr r3,=555
bl DrawLine

ldr r0,=1156
ldr r1,=555
ldr r2,=1078
ldr r3,=574
bl DrawLine

ldr r0,=1078
ldr r1,=574
ldr r2,=1014
ldr r3,=535
bl DrawLine

ldr r0,=1014
ldr r1,=535
ldr r2,=953
ldr r3,=498
bl DrawLine

ldr r0,=953
ldr r1,=498
ldr r2,=804
ldr r3,=595
bl DrawLine

ldr r0,=804
ldr r1,=595
ldr r2,=788
ldr r3,=553
bl DrawLine

ldr r0,=788
ldr r1,=553
ldr r2,=758
ldr r3,=494
bl DrawLine

ldr r0,=758
ldr r1,=494
ldr r2,=643
ldr r3,=576
bl DrawLine

ldr r0,=643
ldr r1,=576
ldr r2,=607
ldr r3,=537
bl DrawLine

ldr r0,=607
ldr r1,=537
ldr r2,=471
ldr r3,=516
bl DrawLine

ldr r0,=471
ldr r1,=516
ldr r2,=353
ldr r3,=522
bl DrawLine

ldr r0,=353
ldr r1,=522
ldr r2,=282
ldr r3,=519
bl DrawLine

ldr r0,=282
ldr r1,=519
ldr r2,=295
ldr r3,=573
bl DrawLine

ldr r0,=295
ldr r1,=573
ldr r2,=225
ldr r3,=566
bl DrawLine

ldr r0,=225
ldr r1,=566
ldr r2,=106
ldr r3,=491
bl DrawLine

ldr r0,=106
ldr r1,=491
ldr r2,=0
ldr r3,=540
bl DrawLine


ldr r0,=175000
bl Sleep

mov r0,#0b0000001000100000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=41
ldr r3,=533
bl DrawLine

ldr r0,=41
ldr r1,=533
ldr r2,=41
ldr r3,=533
bl DrawLine

ldr r0,=41
ldr r1,=533
ldr r2,=97
ldr r3,=493
bl DrawLine

ldr r0,=97
ldr r1,=493
ldr r2,=246
ldr r3,=588
bl DrawLine

ldr r0,=246
ldr r1,=588
ldr r2,=248
ldr r3,=513
bl DrawLine

ldr r0,=248
ldr r1,=513
ldr r2,=411
ldr r3,=586
bl DrawLine

ldr r0,=411
ldr r1,=586
ldr r2,=456
ldr r3,=570
bl DrawLine

ldr r0,=456
ldr r1,=570
ldr r2,=482
ldr r3,=519
bl DrawLine

ldr r0,=482
ldr r1,=519
ldr r2,=638
ldr r3,=496
bl DrawLine

ldr r0,=638
ldr r1,=496
ldr r2,=694
ldr r3,=559
bl DrawLine

ldr r0,=694
ldr r1,=559
ldr r2,=761
ldr r3,=491
bl DrawLine

ldr r0,=761
ldr r1,=491
ldr r2,=864
ldr r3,=491
bl DrawLine

ldr r0,=864
ldr r1,=491
ldr r2,=938
ldr r3,=509
bl DrawLine

ldr r0,=938
ldr r1,=509
ldr r2,=948
ldr r3,=577
bl DrawLine

ldr r0,=948
ldr r1,=577
ldr r2,=1018
ldr r3,=546
bl DrawLine

ldr r0,=1018
ldr r1,=546
ldr r2,=1097
ldr r3,=492
bl DrawLine

ldr r0,=1097
ldr r1,=492
ldr r2,=1206
ldr r3,=488
bl DrawLine

ldr r0,=1206
ldr r1,=488
ldr r2,=1239
ldr r3,=580
bl DrawLine

ldr r0,=1239
ldr r1,=580
ldr r2,=1339
ldr r3,=578
bl DrawLine

ldr r0,=1339
ldr r1,=578
ldr r2,=1478
ldr r3,=529
bl DrawLine

ldr r0,=1478
ldr r1,=529
ldr r2,=1519
ldr r3,=532
bl DrawLine

ldr r0,=1519
ldr r1,=532
ldr r2,=1583
ldr r3,=559
bl DrawLine

ldr r0,=1583
ldr r1,=559
ldr r2,=1638
ldr r3,=488
bl DrawLine

ldr r0,=1638
ldr r1,=488
ldr r2,=1725
ldr r3,=580
bl DrawLine

ldr r0,=1725
ldr r1,=580
ldr r2,=1814
ldr r3,=524
bl DrawLine

ldr r0,=1814
ldr r1,=524
ldr r2,=1919
ldr r3,=540
bl DrawLine


ldr r0,=175000
bl Sleep

mov r0,#0b0000000000100000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1826
ldr r3,=562
bl DrawLine

ldr r0,=1826
ldr r1,=562
ldr r2,=1826
ldr r3,=562
bl DrawLine

ldr r0,=1826
ldr r1,=562
ldr r2,=1798
ldr r3,=575
bl DrawLine

ldr r0,=1798
ldr r1,=575
ldr r2,=1737
ldr r3,=515
bl DrawLine

ldr r0,=1737
ldr r1,=515
ldr r2,=1621
ldr r3,=531
bl DrawLine

ldr r0,=1621
ldr r1,=531
ldr r2,=1506
ldr r3,=551
bl DrawLine

ldr r0,=1506
ldr r1,=551
ldr r2,=1514
ldr r3,=551
bl DrawLine

ldr r0,=1514
ldr r1,=551
ldr r2,=1379
ldr r3,=569
bl DrawLine

ldr r0,=1379
ldr r1,=569
ldr r2,=1255
ldr r3,=532
bl DrawLine

ldr r0,=1255
ldr r1,=532
ldr r2,=1179
ldr r3,=580
bl DrawLine

ldr r0,=1179
ldr r1,=580
ldr r2,=1148
ldr r3,=504
bl DrawLine

ldr r0,=1148
ldr r1,=504
ldr r2,=1049
ldr r3,=508
bl DrawLine

ldr r0,=1049
ldr r1,=508
ldr r2,=967
ldr r3,=544
bl DrawLine

ldr r0,=967
ldr r1,=544
ldr r2,=908
ldr r3,=566
bl DrawLine

ldr r0,=908
ldr r1,=566
ldr r2,=823
ldr r3,=575
bl DrawLine

ldr r0,=823
ldr r1,=575
ldr r2,=808
ldr r3,=584
bl DrawLine

ldr r0,=808
ldr r1,=584
ldr r2,=687
ldr r3,=499
bl DrawLine

ldr r0,=687
ldr r1,=499
ldr r2,=603
ldr r3,=555
bl DrawLine

ldr r0,=603
ldr r1,=555
ldr r2,=564
ldr r3,=565
bl DrawLine

ldr r0,=564
ldr r1,=565
ldr r2,=476
ldr r3,=490
bl DrawLine

ldr r0,=476
ldr r1,=490
ldr r2,=406
ldr r3,=532
bl DrawLine

ldr r0,=406
ldr r1,=532
ldr r2,=296
ldr r3,=496
bl DrawLine

ldr r0,=296
ldr r1,=496
ldr r2,=225
ldr r3,=553
bl DrawLine

ldr r0,=225
ldr r1,=553
ldr r2,=211
ldr r3,=598
bl DrawLine

ldr r0,=211
ldr r1,=598
ldr r2,=139
ldr r3,=583
bl DrawLine

ldr r0,=139
ldr r1,=583
ldr r2,=0
ldr r3,=540
bl DrawLine


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
bl DrawLine

ldr r0,=0
ldr r1,=713
ldr r2,=160
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000000101000000
bl SetForeColor

ldr r0,=160
ldr r1,=712
ldr r2,=320
ldr r3,=712
bl DrawLine

ldr r0,=160
ldr r1,=713
ldr r2,=320
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000000111100000
bl SetForeColor

ldr r0,=320
ldr r1,=712
ldr r2,=480
ldr r3,=712
bl DrawLine

ldr r0,=320
ldr r1,=713
ldr r2,=480
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000001010100000
bl SetForeColor

ldr r0,=480
ldr r1,=712
ldr r2,=640
ldr r3,=712
bl DrawLine

ldr r0,=480
ldr r1,=713
ldr r2,=640
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000001101000000
bl SetForeColor

ldr r0,=640
ldr r1,=712
ldr r2,=800
ldr r3,=712
bl DrawLine

ldr r0,=640
ldr r1,=713
ldr r2,=800
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000001111100000
bl SetForeColor

ldr r0,=800
ldr r1,=712
ldr r2,=960
ldr r3,=712
bl DrawLine

ldr r0,=800
ldr r1,=713
ldr r2,=960
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000010010000000
bl SetForeColor

ldr r0,=960
ldr r1,=712
ldr r2,=1120
ldr r3,=712
bl DrawLine

ldr r0,=960
ldr r1,=713
ldr r2,=1120
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000010101000000
bl SetForeColor

ldr r0,=1120
ldr r1,=712
ldr r2,=1280
ldr r3,=712
bl DrawLine

ldr r0,=1120
ldr r1,=713
ldr r2,=1280
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000010111100000
bl SetForeColor

ldr r0,=1280
ldr r1,=712
ldr r2,=1440
ldr r3,=712
bl DrawLine

ldr r0,=1280
ldr r1,=713
ldr r2,=1440
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000011010000000
bl SetForeColor

ldr r0,=1440
ldr r1,=712
ldr r2,=1600
ldr r3,=712
bl DrawLine

ldr r0,=1440
ldr r1,=713
ldr r2,=1600
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000011100100000
bl SetForeColor

ldr r0,=1600
ldr r1,=712
ldr r2,=1760
ldr r3,=712
bl DrawLine

ldr r0,=1600
ldr r1,=713
ldr r2,=1760
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

mov r0,#0b0000011111100000
bl SetForeColor

ldr r0,=1760
ldr r1,=712
ldr r2,=1919
ldr r3,=712
bl DrawLine

ldr r0,=1760
ldr r1,=713
ldr r2,=1919
ldr r3,=713
bl DrawLine

ldr r0,=300000
bl Sleep

pop {pc}
