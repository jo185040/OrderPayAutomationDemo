Feature: 14 OrderMode


Scenario: 1 Dine-In Order Mode
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked [btnAddTable]
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
			Given screen state: 714
			Then clicked "COKE"
#Action: 7 Add Pork Nachos
			Given screen state: 703
			Then clicked "PORK\NACHOS"
#Action: 8 Add Miller Lite
			Given screen state: 588
			Then clicked "MILLER\LITE"
#Action: 9 Go Back to Guest Check
			Given screen state: 611
			Then clicked /OK/
#Action: 10 Click Send on OrderMode
			Given screen state: 612
			Then clicked [Send]
#Action: 11 Click "Here" on OrderMode
			Given screen state: 148
			Then clicked "HERE"
#Action: 12 Select Pay on Payment Screen
			Given screen state: 612
			Then clicked [Pay]
#Action: 13 Exact Payment
			Given screen state: 613
			Then clicked "Exact"
#Action: 14 Select No Receipt
			Given screen state: 614
			Then clicked [No Receipt]
#Action: 15 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 ToGO Indicator Mode
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked [btnAddTable]
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
			Given screen state: 714
			Then clicked "PORK\NACHOS"
#Action: 7 Go Back to Guest Check
			Given screen state: 620
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 621
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 622
			Then clicked "TO GO"
#Action: 10 Select Pork Nachos Ordermode
			Then verify presence of /ItemSelectionDialog/,"Select items to order",/DialogSeparator/,^SELECT ALL^,"SELECT ALL",/Items/,"Check 1",^PORK NACHOS^,"PORK NACHOS",[Cancel],[OK*]
			Then clicked /Items/,^PORK NACHOS^
			Then clicked /Items/,[OK]
#Action: 11 Select Pay on Payment Screen
			Given screen state: 644
			Then clicked [Pay]
#Action: 12 Exact Payment
			Given screen state: 564
			Then clicked "Exact"
#Action: 13 Select No Receipt
			Given screen state: 660
			Then clicked [No Receipt]
#Action: 14 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 3 Order Pork Chop Mods
#Action: 1 Login as manager 200
			#TODO Implement containters for screen
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked [btnAddTable]
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
			Given screen state: 714
			Then clicked "ENTREES"
#Action: 7 Swipe up on Entrees
			Given screen state: 601
			When swiped up on /MenuPopup_Container/
#Action: 8 Select Pork Chop Mods
			Given screen state: 662
			Then clicked "PORK\CHOP MODS"
#Action: 9 Select Meat Temp on Pork Chop Mods
			Given screen state: 663
			Then clicked "MEDIUM"
#Action: 10 Select Baked Potato on Starch Submenu
			Given screen state: 665
			Then clicked "Baked Potato"
#Action: 11 On Soup Mod, select Cup
			Given screen state: 666
			Then clicked "CUP"
#Action: 12 On Oatmeal, select Add Modifiers
			Given screen state: 667
			Then clicked "ADD BRWN SUGAR"
			Then clicked "ADD RAISIN"
			Then clicked "ADD GRANOLA"
#Action: 13 On Bagel Croissant select
			Given screen state: 668
			Then clicked "ON CROISSANT"
#Action: 14 On Sub Hshbrwn select Sub Hashbrown
			Given screen state: 669
			Then clicked "SUB HASHBROWNS"
#Action: 15 On Quiche select Veggie
			Given screen state: 670
			Then clicked "VEGGIE"
#Action: 16 On Toast select White
			Given screen state: 671
			Then clicked "WHITE"
#Action: 17 On Dressing select Ranch
			Given screen state: 672
			Then clicked "RANCH"
#Action: 18 On Fish Fry select Sweet Potatoe Fries
			Given screen state: 673
			Then clicked "SWT POT FRIES"
#Action: 19 Go Back to Guest Check
			Given screen state: 674
			Then clicked /OK/
#Action: 20 Click Send on OrderMode
			Given screen state: 675
			Then clicked [Send]
#Action: 21 Click "Here" on OrderMode
			Given screen state: 676
			Then clicked "HERE"
#Action: 22 Select Pay on Payment Screen
			Given screen state: 675
			Then clicked [Pay]
#Action: 23 Exact Payment
			Given screen state: 677
			Then clicked "Exact"
#Action: 24 Select No Receipt
			Given screen state: 678
			Then clicked [No Receipt]
#Action: 25 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 4 Order [DON'T MAKE] with selection from list
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked [btnAddTable]
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
			Given screen state: 714
			Then clicked "COKE", "COKE", "7 UP","7 UP","7 UP"
#Action: 7 Go Back to Guest Check
			Given screen state: 679
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 569
			Then clicked [Send]
#Action: 9 Click "DONT MAKE" on OrderMode
			Given screen state: 570
			Then clicked "DON'T MAKE"
#Action: 10 Select second COKE by CheckMakrk and third 7 UP by label
			Given screen state: 571
			Then clicked /Items/,"COKE.2","7 UP.3"
#Action: 11 Select OK on "Select items to order" Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to order"
			Then clicked /Items/,[OK]
#Action: 12 Select Pay on Payment Screen
			Given screen state: 572
			Then clicked [Pay]
#Action: 13 Exact Payment
			Given screen state: 573
			Then clicked "Exact"
#Action: 14 Select No Receipt
			Given screen state: 574
			Then clicked [No Receipt]
#Action: 15 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
