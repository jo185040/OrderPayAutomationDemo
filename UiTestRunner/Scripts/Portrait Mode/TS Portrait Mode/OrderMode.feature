Feature: 14 OrderMode


Scenario: 1 Dine-In Order Mode
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked /AddTableBtn/
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 536
			Then clicked [Menu]
#Action: 6 Add COKE
			Given screen state: 537
			Then clicked "COKE"
#Action: 7 Add Pork Nachos
			Given screen state: 538
			Then clicked "PORK\NACHOS"
#Action: 8 Add Miller Lite
			Given screen state: 552
			Then clicked "MILLER\LITE"
#Action: 9 Go Back to Guest Check
			Given screen state: 553
			Then clicked /OK/
#Action: 10 Click Send on OrderMode
			Given screen state: 554
			Then clicked /OK/,[Send]
#Action: 11 Click "Here" on OrderMode
			Given screen state: 555
			Then clicked /OK/,"HERE"
#Action: 12 Select Pay on Payment Screen
			Given screen state: 554
			Then clicked /OK/,[Pay]
#Action: 13 Exact Payment
			Given screen state: 567
			Then clicked "Exact"
#Action: 14 Select No Receipt
			Given screen state: 568
			Then clicked [No Receipt]
#Action: 15 Logout on WWT Screen
			Given screen state: 518
			When clicked /ThreeDotsBtn/
			When clicked /AddTableBtn/,"Clock Out"

Scenario: 2 ToGO Indicator Mode
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked /AddTableBtn/
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 536
			Then clicked [Menu]
#Action: 6 Add Pork Nachos
			Given screen state: 537
			Then clicked "PORK\NACHOS"
#Action: 7 Go Back to Guest Check
			Given screen state: 561
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 562
			Then clicked /OK/,[Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 563
			Then clicked /OK/,"TO GO"
#Action: 10 Select Pork Nachos Ordermode
			Then verify presence of /ItemSelectionDialog/,"Select items to order",/DialogSeparator/,^SELECT ALL^,"SELECT ALL",/Items/,"Check 1",^PORK NACHOS^,"PORK NACHOS",[Cancel],[OK*]
			Then clicked /Items/,^PORK NACHOS^
			Then clicked /Items/,[OK]
#Action: 11 Select Pay on Payment Screen
			Given screen state: 556
			Then clicked /OK/,[Pay]
#Action: 12 Exact Payment
			Given screen state: 564
			Then clicked "Exact"
#Action: 13 Select No Receipt
			Given screen state: 557
			Then clicked [No Receipt]
#Action: 14 Logout on WWT Screen
			Given screen state: 518
			When clicked /ThreeDotsBtn/
			When clicked /AddTableBtn/,"Clock Out"

Scenario: 3 Order Pork Chop Mods
#Action: 1 Login as manager 200
			#TODO Implement containters for screen
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked /AddTableBtn/
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 536
			Then clicked [Menu]
#Action: 6 Select Entrees Menu
			Given screen state: 537
			Then clicked "ENTREES"
#Action: 7 Select Pork Chop Mods
			Given screen state: 577
			Then clicked "PORK\CHOP MODS"
#Action: 8 Select Meat Temp on Pork Chop Mods
			Then verify presence of /RightModifierButtons/,[BLACK & BLUE]
			Then clicked /RightModifierButtons/,[MEDIUM]
#Action: 9 Select Baked Potato on Starch Submenu
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Baked Potato]
#Action: 10 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[CUP],[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 11 On Oatmeal, select Add Modifiers
			Then verify presence of /RightModifierButtons/,[ADD\BRWN SUGAR]
			Then clicked /RightModifierButtons/,[ADD\BRWN SUGAR]
			Then clicked /RightModifierButtons/,[ADD\RAISIN]
			Then clicked /RightModifierButtons/,[ADD\GRANOLA]
#Action: 12 On Bagel Croissant select
			Then verify presence of /RightModifierButtons/,[ON\BAGEL]
			Then clicked /RightModifierButtons/,[ON\CROISSANT]
#Action: 13 On Sub Hshbrwn select Sub Hashbrown
			Then verify presence of /RightModifierButtons/,[SUB\HASHBROWNS]
			Then clicked /RightModifierButtons/,[SUB\HASHBROWNS]
#Action: 14 On Quiche select Veggie
			Then verify presence of /RightModifierButtons/,[VEGGIE]
			Then clicked /RightModifierButtons/,[VEGGIE]
#Action: 15 On Toast select White
			Then verify presence of /RightModifierButtons/,[WHITE],[RYE]
			Then clicked /RightModifierButtons/,[WHITE]
#Action: 16 On Dressing select Ranch
			Then verify presence of /RightModifierButtons/,[RANCH],[1000\ISLAND]
			When swiped up on /CenterCategoryButtons/
			Then clicked /RightModifierButtons/,[RANCH]
#Action: 17 On Fish Fry select Sweet Potatoe Fries
			Then verify presence of /RightModifierButtons/,[FRIES],[NO SIDE]
			Then clicked /RightModifierButtons/,[SWT POT\FRIES]
#Action: 18 Select $ on Payment Screen
			Given screen state: 414
			Then clicked [$]
#Action: 19 Exact Payment
			Given screen state: 415
			Then clicked [Exact]
#Action: 20 Click Close
			Given screen state: 416
			Then clicked /MidButtons/,[Close]
#Action: 21 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 4 Order [DON'T MAKE] with selection from list
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked /AddTableBtn/
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 536
			Then clicked [Menu]
#Action: 6 Add two COKEs and three 7 UPs
			Given screen state: 537
			Then clicked "COKE", "COKE", "7 UP","7 UP","7 UP"
#Action: 7 Go Back to Guest Check
			Given screen state: 558
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 569
			Then clicked /OK/,[Send]
#Action: 9 Click "DONT MAKE" on OrderMode
			Given screen state: 570
			Then clicked /OK/,"DON'T MAKE"
#Action: 10 Select second COKE by CheckMakrk and third 7 UP by label
			Given screen state: 571
			Then clicked /Items/,"COKE.2","7 UP.3"
#Action: 11 Select OK on "Select items to order" Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to order"
			Then clicked /Items/,[OK]
#Action: 12 Select Pay on Payment Screen
			Given screen state: 572
			Then clicked /OK/,[Pay]
#Action: 13 Exact Payment
			Given screen state: 573
			Then clicked "Exact"
#Action: 14 Select No Receipt
			Given screen state: 574
			Then clicked [No Receipt]
#Action: 15 Logout on WWT Screen
			Given screen state: 518
			When clicked /ThreeDotsBtn/
			When clicked /AddTableBtn/,"Clock Out"
