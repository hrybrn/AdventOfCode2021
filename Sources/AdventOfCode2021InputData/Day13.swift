public enum Day13 {
    public static let example = """
6,10
0,14
9,10
0,3
10,4
4,11
6,0
6,12
4,1
0,13
10,12
3,4
3,0
8,4
1,10
2,14
8,10
9,0

fold along y=7
fold along x=5
"""
    public static let challenge = """
1284,229
713,50
1267,194
437,229
651,200
763,407
1173,373
248,579
503,395
155,532
278,488
863,444
403,695
20,25
709,105
1063,560
554,94
955,444
897,813
792,665
969,799
1293,843
261,716
1084,542
33,579
1295,656
82,743
1101,789
164,506
856,220
199,323
252,733
525,669
1292,137
1230,756
552,856
1120,229
59,42
360,737
346,215
1005,285
673,535
1150,131
540,177
822,539
301,375
410,743
1303,357
1290,540
873,574
551,434
875,86
300,336
301,560
373,184
1125,460
863,28
990,768
360,107
223,574
525,491
425,554
191,584
80,473
904,138
464,889
530,625
922,437
1064,757
74,581
234,760
65,149
318,421
873,478
575,329
1098,602
964,861
1173,145
1201,478
898,607
103,404
551,796
628,677
281,845
1017,669
1005,166
502,292
155,362
1201,416
346,543
863,705
141,882
1032,488
1026,739
277,222
1017,127
494,763
933,894
774,229
209,341
1241,845
388,9
457,239
808,292
187,32
107,407
219,224
739,329
99,107
1211,107
785,771
1168,130
140,488
170,579
1026,563
305,546
609,789
316,719
551,404
80,105
1004,212
1150,763
1183,220
457,655
192,873
676,25
224,884
917,268
873,416
214,103
632,299
729,334
10,399
1285,861
64,611
1272,737
1087,294
464,5
323,885
26,553
699,194
1135,14
364,570
1077,693
561,59
1119,584
556,619
277,672
301,519
375,189
47,371
1120,889
440,103
865,60
373,710
1146,219
678,859
572,207
838,799
1175,366
375,539
1265,481
447,705
355,450
907,199
264,791
1066,879
875,186
1164,423
1004,660
637,330
455,546
59,294
724,114
631,750
806,280
774,122
191,481
105,281
43,786
315,656
68,332
226,542
1076,582
500,249
807,395
48,269
1210,7
1267,108
410,341
759,180
355,5
463,665
390,343
609,497
350,819
900,10
1207,460
160,763
181,135
599,351
964,679
846,565
850,625
1048,712
622,793
1114,737
475,355
323,773
104,838
175,273
1071,624
107,136
1033,894
513,684
1037,24
1103,556
104,560
349,609
530,437
277,448
622,177
1305,108
688,126
454,170
536,68
1230,138
1101,565
763,575
907,155
773,789
490,388
1049,821
197,627
731,827
1181,655
417,474
1207,490
328,673
47,147
1039,767
208,730
408,308
228,275
1130,810
569,694
127,674
306,234
972,791
1036,880
1257,789
244,15
1113,267
570,336
52,581
1111,457
740,336
249,837
637,535
1110,110
1039,137
75,515
699,481
360,401
187,841
382,677
812,763
547,504
282,12
30,549
469,168
547,487
17,759
502,154
537,105
331,200
78,206
721,149
1277,347
940,358
1208,9
293,669
349,98
1135,51
676,234
454,618
537,658
1007,505
1203,407
1017,261
867,77
524,177
137,749
701,845
1293,51
261,452
826,350
611,749
13,518
244,553
852,320
1275,829
1258,581
17,588
1292,757
940,536
783,658
135,814
500,197
1288,859
678,411
738,53
663,805
1016,605
1235,199
1123,15
249,445
1203,95
576,206
524,871
599,95
79,696
467,841
346,257
410,785
656,445
222,635
586,887
1093,366
701,262
1128,775
1253,844
1203,808
938,105
715,628
360,23
584,159
1111,98
107,127
912,719
537,262
271,757
283,189
525,640
756,455
627,453
599,112
905,53
587,19
587,875
820,281
1091,224
579,379
709,789
982,3
898,175
923,852
856,170
435,708
354,553
211,410
708,581
172,697
1125,434
721,477
1110,674
361,225
1261,194
242,607
967,763
197,267
1251,294
1135,273
995,341
1033,700
945,700
683,453
164,388
550,782
1165,82
763,319
152,154
890,516
681,112
1288,747
1237,112
904,287
370,536
196,31
959,389
994,719
1044,9
353,861
170,565
786,544
1005,173
48,199
412,719
1260,505
1061,610
311,686
918,264
197,575
333,562
900,553
619,289
1017,633
1203,127
699,108
1135,499
239,718
1116,528
677,434
580,313
753,340
1255,858
879,768
595,152
284,331
1302,344
1228,337
1251,600
1101,553
721,865
761,855
731,247
992,473
1052,556
249,732
1192,826
1119,217
1267,332
381,646
681,861
648,798
738,574
589,745
108,626
455,571
855,348
734,206
574,15
611,33
281,565
1033,672
1146,388
372,826
129,239
959,505
525,771
604,326
525,254
1020,324
761,57
1062,399
736,809
139,445
874,178
927,757
1027,332
904,651
711,708
586,780
967,574
383,410
783,124
527,12
182,119
595,350
904,495
868,527
724,439
574,85
629,37
494,355
354,341
1130,182
605,110
26,665
294,345
440,791
164,675
349,796
1064,586
848,21
729,21
271,767
947,49
1242,332
1135,880
524,289
160,131
590,611
609,262
311,208
1026,331
1284,553
117,658
786,871
197,319
38,849
180,182
890,378
348,212
900,743
1052,338
574,879
773,632
98,152
421,201
1041,141
1293,428
33,99
104,334
199,796
479,880
326,445
405,53
406,735
572,10
874,626
1046,791
816,131
721,745
1029,537
194,157
117,553
1303,805
145,82
1009,71
527,457
445,12
436,66
281,632
756,800
875,351
701,497
403,739
130,423
1297,376
927,86
217,798
1151,228
1017,185
686,793
1158,154
639,686
1295,238
527,460
753,373
1203,351
594,130
1061,445
127,220
92,582
949,225
43,108
994,343
749,611
524,605
607,539
1119,677
572,474
345,199
219,670
383,86
700,553
1183,674
864,164
1248,343
609,845
965,199
769,306
1228,436
900,781
579,627
45,257
865,553
689,449
594,764
900,113
683,441
199,437
129,640
1027,189
8,550
671,208
1203,263
579,827
484,763
80,789
267,404
556,152
551,460
445,386
674,585
634,234
17,583
917,73
773,610
850,533
191,33
634,421
537,355
103,852
761,39
490,506
1002,33
902,266
900,15
1113,627
462,201
773,710
1029,49
323,9
435,808
328,3
1236,313
880,436
248,399
927,484
345,695
1253,50
865,147
832,343
556,275
1241,49
57,498
301,861
846,329
639,126
810,249
938,329
242,287
835,355
8,344
1297,600
711,95
1101,747
82,436
1102,341
45,481
194,737
212,154
572,53
222,56
1212,152
251,715
847,229
701,632
129,571
882,542
1170,411
1212,572
431,574
1228,743
721,373
1049,149
244,879
1251,152
774,570
244,501
261,29
841,726
900,785
1061,732
359,297
1077,201
890,200
214,343
508,423
75,871
957,861
1263,371
284,603
82,532
301,823
338,791
117,777
82,789
464,565
595,714
1120,665
107,711
92,826
1293,583
331,437
955,450
636,585
856,724
1020,329
281,243
244,113
691,681
724,780
129,403
811,84
847,584
1111,12
917,149
396,338
868,602
1118,21
1248,318
261,745
50,505
228,182
266,856
571,329
652,766
1165,619
1084,369
10,175
1029,262
469,726
1302,473
1207,852
326,613
984,221
75,199
1001,116
1020,220
773,105
55,334
632,411
445,60
749,59
611,700
284,155
1039,757
917,745
294,23
80,565
1102,665
22,600
1066,781
47,355
706,326
1307,694
1245,745
688,793
1066,501
1210,455
1168,316
383,484
309,535
464,329
627,441
118,677
308,861
74,313
386,294
808,154
701,413
413,813
98,572
950,401
986,19
1285,334
1114,157
1226,558
736,85
599,543
100,757
808,740
893,420
865,834
1228,532
716,130
831,843
1248,551
1027,114
1230,565
624,549
199,571
589,865
1125,882
1089,701
1111,9
221,417
865,117
470,708
82,884
1242,562
393,597
1278,555
1160,791
709,77
47,539
1059,603
1284,341
669,600
572,532
1213,365
1029,632
518,229
1181,239
999,208
698,739
982,316
594,437
338,816
100,309
283,332
879,320
22,859
1193,355
1005,838
33,403
214,366
1235,471
104,294
465,197
618,220
443,77
277,280
1054,280
1192,570
715,350
430,234
1091,487
731,647
1202,492
847,33
436,626
902,308
164,130
207,338
316,140
1191,786
1093,478
1066,337
629,334
1217,507
699,338
1196,177
1230,553
579,247
1207,98
373,565
835,539
1290,25
249,470
1290,354
1203,319
12,691
937,651
127,434
1084,352
393,297
763,504
959,256
1193,658
45,637
865,341
105,855
1230,105
1205,855
1099,410
150,791
546,850
1017,575
227,787
589,149
611,194
268,152
518,665
783,434
7,805
527,796
1101,105
681,260
189,697
937,537
172,197
1255,351
999,579
435,543
520,201
527,226
868,378
674,757
699,668
729,873
1049,44
992,869
1268,739
764,850
288,269
284,115
1297,152
692,565
200,784
816,355
1232,688
1026,536
937,105
537,635
519,217
1002,861
398,719
549,855
622,126
708,469
117,632
858,437
878,819
961,796
979,437
107,855
853,239
433,253
783,460
281,710
659,121
1258,238
1175,814
1103,338
62,343
848,693
1196,269
191,413
495,666
711,782
129,491
875,672
53,789
1033,280
142,764
467,893
100,103
326,673
406,287
1001,395
1232,847
289,700
47,747
749,835
102,437
1114,544
208,341
731,199
44,665
1140,329
156,315
479,843
1300,399
1140,763
17,428
843,431
1061,393
689,799
35,845
1232,240
114,269
179,355
1268,358
1168,764
359,745
366,493
935,875
301,782
97,521
701,861
180,84
1258,656
554,800
242,719
175,499
885,340
431,768
694,849
678,819
793,145
406,607
878,635
1263,539
196,863
612,115
430,10
679,32
200,170
1066,553
1300,175
1113,575
972,175
151,619
681,33
622,717
709,257
1116,737
783,12
78,847
442,602
436,178
348,660
1041,501
734,623
965,843
935,819
662,96
1061,162
574,341
1021,700

fold along x=655
fold along y=447
fold along x=327
fold along y=223
fold along x=163
fold along y=111
fold along x=81
fold along y=55
fold along x=40
fold along y=27
fold along y=13
fold along y=6
"""
}