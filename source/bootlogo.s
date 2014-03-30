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

mov r0,#0b0000011101000000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=79
ldr r3,=587
bl DrawLine

ldr r0,=79
ldr r1,=587
ldr r2,=79
ldr r3,=587
bl DrawLine

ldr r0,=79
ldr r1,=587
ldr r2,=186
ldr r3,=554
bl DrawLine

ldr r0,=186
ldr r1,=554
ldr r2,=267
ldr r3,=489
bl DrawLine

ldr r0,=267
ldr r1,=489
ldr r2,=262
ldr r3,=534
bl DrawLine

ldr r0,=262
ldr r1,=534
ldr r2,=351
ldr r3,=574
bl DrawLine

ldr r0,=351
ldr r1,=574
ldr r2,=504
ldr r3,=570
bl DrawLine

ldr r0,=504
ldr r1,=570
ldr r2,=483
ldr r3,=558
bl DrawLine

ldr r0,=483
ldr r1,=558
ldr r2,=589
ldr r3,=562
bl DrawLine

ldr r0,=589
ldr r1,=562
ldr r2,=716
ldr r3,=594
bl DrawLine

ldr r0,=716
ldr r1,=594
ldr r2,=796
ldr r3,=483
bl DrawLine

ldr r0,=796
ldr r1,=483
ldr r2,=778
ldr r3,=506
bl DrawLine

ldr r0,=778
ldr r1,=506
ldr r2,=898
ldr r3,=502
bl DrawLine

ldr r0,=898
ldr r1,=502
ldr r2,=951
ldr r3,=506
bl DrawLine

ldr r0,=951
ldr r1,=506
ldr r2,=1121
ldr r3,=488
bl DrawLine

ldr r0,=1121
ldr r1,=488
ldr r2,=1158
ldr r3,=569
bl DrawLine

ldr r0,=1158
ldr r1,=569
ldr r2,=1243
ldr r3,=559
bl DrawLine

ldr r0,=1243
ldr r1,=559
ldr r2,=1339
ldr r3,=534
bl DrawLine

ldr r0,=1339
ldr r1,=534
ldr r2,=1308
ldr r3,=485
bl DrawLine

ldr r0,=1308
ldr r1,=485
ldr r2,=1455
ldr r3,=484
bl DrawLine

ldr r0,=1455
ldr r1,=484
ldr r2,=1526
ldr r3,=509
bl DrawLine

ldr r0,=1526
ldr r1,=509
ldr r2,=1605
ldr r3,=533
bl DrawLine

ldr r0,=1605
ldr r1,=533
ldr r2,=1714
ldr r3,=533
bl DrawLine

ldr r0,=1714
ldr r1,=533
ldr r2,=1776
ldr r3,=517
bl DrawLine

ldr r0,=1776
ldr r1,=517
ldr r2,=1771
ldr r3,=504
bl DrawLine

ldr r0,=1771
ldr r1,=504
ldr r2,=1919
ldr r3,=540
bl DrawLine


mov r0,#0b0000001001000000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1824
ldr r3,=532
bl DrawLine

ldr r0,=1824
ldr r1,=532
ldr r2,=1824
ldr r3,=532
bl DrawLine

ldr r0,=1824
ldr r1,=532
ldr r2,=1725
ldr r3,=516
bl DrawLine

ldr r0,=1725
ldr r1,=516
ldr r2,=1699
ldr r3,=494
bl DrawLine

ldr r0,=1699
ldr r1,=494
ldr r2,=1647
ldr r3,=548
bl DrawLine

ldr r0,=1647
ldr r1,=548
ldr r2,=1485
ldr r3,=486
bl DrawLine

ldr r0,=1485
ldr r1,=486
ldr r2,=1467
ldr r3,=584
bl DrawLine

ldr r0,=1467
ldr r1,=584
ldr r2,=1384
ldr r3,=485
bl DrawLine

ldr r0,=1384
ldr r1,=485
ldr r2,=1295
ldr r3,=524
bl DrawLine

ldr r0,=1295
ldr r1,=524
ldr r2,=1203
ldr r3,=488
bl DrawLine

ldr r0,=1203
ldr r1,=488
ldr r2,=1191
ldr r3,=595
bl DrawLine

ldr r0,=1191
ldr r1,=595
ldr r2,=1061
ldr r3,=506
bl DrawLine

ldr r0,=1061
ldr r1,=506
ldr r2,=991
ldr r3,=536
bl DrawLine

ldr r0,=991
ldr r1,=536
ldr r2,=967
ldr r3,=521
bl DrawLine

ldr r0,=967
ldr r1,=521
ldr r2,=832
ldr r3,=496
bl DrawLine

ldr r0,=832
ldr r1,=496
ldr r2,=838
ldr r3,=512
bl DrawLine

ldr r0,=838
ldr r1,=512
ldr r2,=679
ldr r3,=537
bl DrawLine

ldr r0,=679
ldr r1,=537
ldr r2,=647
ldr r3,=559
bl DrawLine

ldr r0,=647
ldr r1,=559
ldr r2,=506
ldr r3,=580
bl DrawLine

ldr r0,=506
ldr r1,=580
ldr r2,=453
ldr r3,=555
bl DrawLine

ldr r0,=453
ldr r1,=555
ldr r2,=447
ldr r3,=483
bl DrawLine

ldr r0,=447
ldr r1,=483
ldr r2,=271
ldr r3,=582
bl DrawLine

ldr r0,=271
ldr r1,=582
ldr r2,=248
ldr r3,=592
bl DrawLine

ldr r0,=248
ldr r1,=592
ldr r2,=215
ldr r3,=508
bl DrawLine

ldr r0,=215
ldr r1,=508
ldr r2,=150
ldr r3,=550
bl DrawLine

ldr r0,=150
ldr r1,=550
ldr r2,=0
ldr r3,=540
bl DrawLine


mov r0,#0b0000000000100000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=107
ldr r3,=517
bl DrawLine

ldr r0,=107
ldr r1,=517
ldr r2,=107
ldr r3,=517
bl DrawLine

ldr r0,=107
ldr r1,=517
ldr r2,=209
ldr r3,=570
bl DrawLine

ldr r0,=209
ldr r1,=570
ldr r2,=196
ldr r3,=511
bl DrawLine

ldr r0,=196
ldr r1,=511
ldr r2,=292
ldr r3,=546
bl DrawLine

ldr r0,=292
ldr r1,=546
ldr r2,=371
ldr r3,=549
bl DrawLine

ldr r0,=371
ldr r1,=549
ldr r2,=422
ldr r3,=517
bl DrawLine

ldr r0,=422
ldr r1,=517
ldr r2,=476
ldr r3,=575
bl DrawLine

ldr r0,=476
ldr r1,=575
ldr r2,=649
ldr r3,=572
bl DrawLine

ldr r0,=649
ldr r1,=572
ldr r2,=632
ldr r3,=572
bl DrawLine

ldr r0,=632
ldr r1,=572
ldr r2,=743
ldr r3,=567
bl DrawLine

ldr r0,=743
ldr r1,=567
ldr r2,=864
ldr r3,=526
bl DrawLine

ldr r0,=864
ldr r1,=526
ldr r2,=854
ldr r3,=503
bl DrawLine

ldr r0,=854
ldr r1,=503
ldr r2,=983
ldr r3,=558
bl DrawLine

ldr r0,=983
ldr r1,=558
ldr r2,=1068
ldr r3,=497
bl DrawLine

ldr r0,=1068
ldr r1,=497
ldr r2,=1189
ldr r3,=539
bl DrawLine

ldr r0,=1189
ldr r1,=539
ldr r2,=1194
ldr r3,=486
bl DrawLine

ldr r0,=1194
ldr r1,=486
ldr r2,=1235
ldr r3,=553
bl DrawLine

ldr r0,=1235
ldr r1,=553
ldr r2,=1369
ldr r3,=591
bl DrawLine

ldr r0,=1369
ldr r1,=591
ldr r2,=1470
ldr r3,=510
bl DrawLine

ldr r0,=1470
ldr r1,=510
ldr r2,=1578
ldr r3,=498
bl DrawLine

ldr r0,=1578
ldr r1,=498
ldr r2,=1639
ldr r3,=541
bl DrawLine

ldr r0,=1639
ldr r1,=541
ldr r2,=1642
ldr r3,=518
bl DrawLine

ldr r0,=1642
ldr r1,=518
ldr r2,=1738
ldr r3,=580
bl DrawLine

ldr r0,=1738
ldr r1,=580
ldr r2,=1806
ldr r3,=569
bl DrawLine

ldr r0,=1806
ldr r1,=569
ldr r2,=1919
ldr r3,=540
bl DrawLine


mov r0,#0b0000000000000000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1833
ldr r3,=565
bl DrawLine

ldr r0,=1833
ldr r1,=565
ldr r2,=1833
ldr r3,=565
bl DrawLine

ldr r0,=1833
ldr r1,=565
ldr r2,=1738
ldr r3,=599
bl DrawLine

ldr r0,=1738
ldr r1,=599
ldr r2,=1682
ldr r3,=538
bl DrawLine

ldr r0,=1682
ldr r1,=538
ldr r2,=1675
ldr r3,=585
bl DrawLine

ldr r0,=1675
ldr r1,=585
ldr r2,=1561
ldr r3,=498
bl DrawLine

ldr r0,=1561
ldr r1,=498
ldr r2,=1436
ldr r3,=543
bl DrawLine

ldr r0,=1436
ldr r1,=543
ldr r2,=1405
ldr r3,=588
bl DrawLine

ldr r0,=1405
ldr r1,=588
ldr r2,=1272
ldr r3,=576
bl DrawLine

ldr r0,=1272
ldr r1,=576
ldr r2,=1287
ldr r3,=484
bl DrawLine

ldr r0,=1287
ldr r1,=484
ldr r2,=1162
ldr r3,=555
bl DrawLine

ldr r0,=1162
ldr r1,=555
ldr r2,=1113
ldr r3,=527
bl DrawLine

ldr r0,=1113
ldr r1,=527
ldr r2,=1049
ldr r3,=534
bl DrawLine

ldr r0,=1049
ldr r1,=534
ldr r2,=926
ldr r3,=594
bl DrawLine

ldr r0,=926
ldr r1,=594
ldr r2,=827
ldr r3,=589
bl DrawLine

ldr r0,=827
ldr r1,=589
ldr r2,=777
ldr r3,=580
bl DrawLine

ldr r0,=777
ldr r1,=580
ldr r2,=717
ldr r3,=589
bl DrawLine

ldr r0,=717
ldr r1,=589
ldr r2,=619
ldr r3,=529
bl DrawLine

ldr r0,=619
ldr r1,=529
ldr r2,=576
ldr r3,=599
bl DrawLine

ldr r0,=576
ldr r1,=599
ldr r2,=433
ldr r3,=505
bl DrawLine

ldr r0,=433
ldr r1,=505
ldr r2,=410
ldr r3,=506
bl DrawLine

ldr r0,=410
ldr r1,=506
ldr r2,=319
ldr r3,=510
bl DrawLine

ldr r0,=319
ldr r1,=510
ldr r2,=275
ldr r3,=491
bl DrawLine

ldr r0,=275
ldr r1,=491
ldr r2,=227
ldr r3,=583
bl DrawLine

ldr r0,=227
ldr r1,=583
ldr r2,=78
ldr r3,=498
bl DrawLine

ldr r0,=78
ldr r1,=498
ldr r2,=0
ldr r3,=540
bl DrawLine


mov r0,#0b0000001000000000
bl SetForeColor

ldr r0,=0
ldr r1,=540
ldr r2,=122
ldr r3,=566
bl DrawLine

ldr r0,=122
ldr r1,=566
ldr r2,=122
ldr r3,=566
bl DrawLine

ldr r0,=122
ldr r1,=566
ldr r2,=118
ldr r3,=489
bl DrawLine

ldr r0,=118
ldr r1,=489
ldr r2,=236
ldr r3,=504
bl DrawLine

ldr r0,=236
ldr r1,=504
ldr r2,=269
ldr r3,=592
bl DrawLine

ldr r0,=269
ldr r1,=592
ldr r2,=343
ldr r3,=554
bl DrawLine

ldr r0,=343
ldr r1,=554
ldr r2,=460
ldr r3,=506
bl DrawLine

ldr r0,=460
ldr r1,=506
ldr r2,=566
ldr r3,=509
bl DrawLine

ldr r0,=566
ldr r1,=509
ldr r2,=564
ldr r3,=554
bl DrawLine

ldr r0,=564
ldr r1,=554
ldr r2,=719
ldr r3,=569
bl DrawLine

ldr r0,=719
ldr r1,=569
ldr r2,=713
ldr r3,=525
bl DrawLine

ldr r0,=713
ldr r1,=525
ldr r2,=780
ldr r3,=483
bl DrawLine

ldr r0,=780
ldr r1,=483
ldr r2,=945
ldr r3,=517
bl DrawLine

ldr r0,=945
ldr r1,=517
ldr r2,=939
ldr r3,=552
bl DrawLine

ldr r0,=939
ldr r1,=552
ldr r2,=1017
ldr r3,=581
bl DrawLine

ldr r0,=1017
ldr r1,=581
ldr r2,=1159
ldr r3,=523
bl DrawLine

ldr r0,=1159
ldr r1,=523
ldr r2,=1266
ldr r3,=595
bl DrawLine

ldr r0,=1266
ldr r1,=595
ldr r2,=1252
ldr r3,=537
bl DrawLine

ldr r0,=1252
ldr r1,=537
ldr r2,=1422
ldr r3,=547
bl DrawLine

ldr r0,=1422
ldr r1,=547
ldr r2,=1468
ldr r3,=492
bl DrawLine

ldr r0,=1468
ldr r1,=492
ldr r2,=1560
ldr r3,=573
bl DrawLine

ldr r0,=1560
ldr r1,=573
ldr r2,=1638
ldr r3,=565
bl DrawLine

ldr r0,=1638
ldr r1,=565
ldr r2,=1665
ldr r3,=494
bl DrawLine

ldr r0,=1665
ldr r1,=494
ldr r2,=1776
ldr r3,=531
bl DrawLine

ldr r0,=1776
ldr r1,=531
ldr r2,=1794
ldr r3,=490
bl DrawLine

ldr r0,=1794
ldr r1,=490
ldr r2,=1919
ldr r3,=540
bl DrawLine


mov r0,#0b0000000111100000
bl SetForeColor

ldr r0,=1919
ldr r1,=540
ldr r2,=1846
ldr r3,=511
bl DrawLine

ldr r0,=1846
ldr r1,=511
ldr r2,=1846
ldr r3,=511
bl DrawLine

ldr r0,=1846
ldr r1,=511
ldr r2,=1781
ldr r3,=571
bl DrawLine

ldr r0,=1781
ldr r1,=571
ldr r2,=1745
ldr r3,=594
bl DrawLine

ldr r0,=1745
ldr r1,=594
ldr r2,=1559
ldr r3,=532
bl DrawLine

ldr r0,=1559
ldr r1,=532
ldr r2,=1566
ldr r3,=565
bl DrawLine

ldr r0,=1566
ldr r1,=565
ldr r2,=1405
ldr r3,=539
bl DrawLine

ldr r0,=1405
ldr r1,=539
ldr r2,=1408
ldr r3,=527
bl DrawLine

ldr r0,=1408
ldr r1,=527
ldr r2,=1258
ldr r3,=487
bl DrawLine

ldr r0,=1258
ldr r1,=487
ldr r2,=1237
ldr r3,=481
bl DrawLine

ldr r0,=1237
ldr r1,=481
ldr r2,=1113
ldr r3,=508
bl DrawLine

ldr r0,=1113
ldr r1,=508
ldr r2,=1134
ldr r3,=525
bl DrawLine

ldr r0,=1134
ldr r1,=525
ldr r2,=977
ldr r3,=578
bl DrawLine

ldr r0,=977
ldr r1,=578
ldr r2,=907
ldr r3,=577
bl DrawLine

ldr r0,=907
ldr r1,=577
ldr r2,=879
ldr r3,=517
bl DrawLine

ldr r0,=879
ldr r1,=517
ldr r2,=753
ldr r3,=559
bl DrawLine

ldr r0,=753
ldr r1,=559
ldr r2,=749
ldr r3,=561
bl DrawLine

ldr r0,=749
ldr r1,=561
ldr r2,=659
ldr r3,=580
bl DrawLine

ldr r0,=659
ldr r1,=580
ldr r2,=592
ldr r3,=561
bl DrawLine

ldr r0,=592
ldr r1,=561
ldr r2,=496
ldr r3,=543
bl DrawLine

ldr r0,=496
ldr r1,=543
ldr r2,=430
ldr r3,=508
bl DrawLine

ldr r0,=430
ldr r1,=508
ldr r2,=342
ldr r3,=489
bl DrawLine

ldr r0,=342
ldr r1,=489
ldr r2,=281
ldr r3,=484
bl DrawLine

ldr r0,=281
ldr r1,=484
ldr r2,=189
ldr r3,=539
bl DrawLine

ldr r0,=189
ldr r1,=539
ldr r2,=130
ldr r3,=563
bl DrawLine

ldr r0,=130
ldr r1,=563
ldr r2,=0
ldr r3,=540
bl DrawLine


ldr r0,=0b1111100000000000
bl SetForeColor

ldr r0,=85
ldr r1,=895
ldr r2,=600
bl DrawCharacter
ldr r0,=100000
bl Sleep

mov r0,#0b0000011111100000
bl SetForeColor

ldr r0,=87
ldr r1,=911
ldr r2,=600
bl DrawCharacter
ldr r0,=79
ldr r1,=927
ldr r2,=600
bl DrawCharacter
ldr r0,=84
ldr r1,=943
ldr r2,=600
bl DrawCharacter
ldr r0,=100000
bl Sleep

mov r0,#0b0000000000011111
bl SetForeColor

ldr r0,=109
ldr r1,=959
ldr r2,=600
bl DrawCharacter
ldr r0,=56
ldr r1,=975
ldr r2,=600
bl DrawCharacter
ldr r0,=750000
bl Sleep

ldr r0,=0b1111111111111111
bl SetForeColor

ldr r0,=63
ldr r1,=991
ldr r2,=600
bl DrawCharacter
ldr r0,=500000
bl Sleep

pop {pc}
