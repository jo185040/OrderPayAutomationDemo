Feature: 11 Modifiers


Scenario: 1 Add Item with Modifier Weight 2
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
#Action: 6 Select Entrees Menu
			Given screen state: 714
			Then clicked "ENTREES"
#Action: 7 Order BBQ Ribs
			Given screen state: 601
			Then clicked "BBQ\RIBS"
#Action: 8 On Ribs Submenu order 1/2 Rack
			Given screen state: 128
			Then clicked "1/2 RACK"
#Action: 9 On Ribs Submenu order 1/2 Rack
			Given screen state: 623
			Then clicked "1/2 RACK.2"
#Action: 10 On Starch press Baked Potato OK
			Given screen state: 624
			Then clicked "Baked Potato"
#Action: 11 On Soup Mod, select Cup
			Given screen state: 625
			Then clicked "CUP"
#Action: 12 Go Back to Guest Check
			Given screen state: 626
			Then clicked /OK/
#Action: 13 Click Send on OrderMode
			Given screen state: 627
			Then clicked [Send]
#Action: 14 Click "Here" on OrderMode
			Given screen state: 628
			Then clicked "HERE"
#Action: 15 Select Pay on Payment Screen
			Given screen state: 627
			Then clicked [Pay]
#Action: 16 Exact Payment
			Given screen state: 629
			Then clicked "Exact"
#Action: 17 Select No Receipt
			Given screen state: 632
			Then clicked [No Receipt]
#Action: 18 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 Add Item with Modifier Weight 1
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
#Action: 6 Select Entrees Menu
			Given screen state: 714
			Then clicked "ENTREES"
#Action: 7 Order Pork Chop
			Given screen state: 601
			Then clicked "PORK\CHOP"
#Action: 8 On Meat Temp Press OK
			Given screen state: 633
			Then clicked "MEDIUM"
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 634
			Then clicked "Baked Potato"
#Action: 10 On Soup Mod, select Cup
			Given screen state: 635
			Then clicked "CUP"
#Action: 11 Go Back to Guest Check
			Given screen state: 636
			Then clicked /OK/
#Action: 12 Click Send on OrderMode
			Given screen state: 637
			Then clicked [Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 638
			Then clicked "HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 637
			Then clicked [Pay]
#Action: 15 Exact Payment
			Given screen state: 639
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 640
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 3 Verify Apps submenu items contains exceptional mod group Pizza.
#Action: 1 Login as manager 200
			#TODO Modify button not working
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
#Action: 6 Select Apps Menu
			Given screen state: 714
			Then clicked "APPS"
#Action: 7 Order Quesidilla
			Given screen state: 715
			Then clicked "QUESADILLA"
#Action: 8 Go Back to Guest Check
			Given screen state: 642
			Then clicked /OK/
#Action: 9 Select Quesidilla on Guest Check
			Given screen state: 643
			Then clicked "QUESADILLA"
#Action: 10 Modify Quesidilla
			Given screen state: 643
			Then clicked [btnModify]
#Action: 11 Add Avacado Modifier on Special Menu
			Given screen state: 716
			Then clicked "ADD AVOCADO"
#Action: 12 Select OK Button
			Given screen state: 717
			Then clicked [Confirm]
#Action: 13 Click Send on OrderMode
			Given screen state: 718
			Then clicked [Send]
#Action: 14 Click "Here" on OrderMode
			Given screen state: 719
			Then clicked "HERE"
#Action: 15 Select Pay on Payment Screen
			Given screen state: 718
			Then clicked [Pay]
#Action: 16 Exact Payment
			Given screen state: 720
			Then clicked "Exact"
#Action: 17 Select No Receipt
			Given screen state: 721
			Then clicked [No Receipt]
#Action: 18 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 4 Add Item with Forced Modifier
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
#Action: 6 Swipe on Entree Menu
			Given screen state: 714
			When swiped left on /SubmenuSelectors/
#Action: 7 Swipe on Pizza Menu
			Given screen state: 596
			When swiped left on /SubmenuSelectors/
#Action: 8 Select Combos Menu
			Given screen state: 597
			Then clicked "Combos"
#Action: 9 Order Quick Burger
			Given screen state: 598
			Then clicked "Quick Burger"
#Action: 10 Go Back to Guest Check
			Given screen state: 645
			Then clicked /OK/
#Action: 11 Click Send on OrderMode
			Given screen state: 646
			Then clicked [Send]
#Action: 12 Click "Here" on OrderMode
			Given screen state: 647
			Then clicked "HERE"
#Action: 13 Select Pay on Payment Screen
			Given screen state: 646
			Then clicked [Pay]
#Action: 14 Exact Payment
			Given screen state: 648
			Then clicked "Exact"
#Action: 15 Select No Receipt
			Given screen state: 649
			Then clicked [No Receipt]
#Action: 16 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 5 Add item with Refill Drink
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
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 10 Select Coke
			Given screen state: 708
			Then clicked "COKE"
#Action: 11 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 12 Add Coke Modifier
			Given screen state: 138
			Then clicked /Modifier/,"COKE"
#Action: 13 Press OK on modifier screen
			Given screen state: 139
			Then clicked [Confirm]
#Action: 14 Click Send on OrderMode
			Given screen state: 537
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 700
			Then clicked "HERE"
#Action: 16 Select Pay on Payment Screen
			Given screen state: 537
			Then clicked [Pay]
#Action: 17 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 18 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 19 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 6 Verify refill do not go to other items
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
#Action: 6 Add 7-UP
			Given screen state: 714
			Then clicked "7 UP"
#Action: 7 Add COKE
			Given screen state: 722
			Then clicked "COKE"
#Action: 8 Go Back to Guest Check
			Given screen state: 723
			Then clicked /OK/
#Action: 9 Click Send on OrderMode
			Given screen state: 724
			Then clicked [Send]
#Action: 10 Click "Here" on OrderMode
			Given screen state: 725
			Then clicked "HERE"
#Action: 11 Select Coke
			Given screen state: 724
			Then clicked "COKE"
#Action: 12 Modify Coke
			Given screen state: 724
			Then clicked [btnModify]
#Action: 13 Add Coke Modifier
			Given screen state: 726
			Then clicked /Modifier/,"COKE"
#Action: 14 Press OK on modifier screen
			Given screen state: 727
			Then clicked [Confirm]
#Action: 15 Click Send on OrderMode
			Given screen state: 728
			Then clicked [Send]
#Action: 16 Click "Here" on OrderMode
			Given screen state: 729
			Then clicked "HERE"
#Action: 17 Select Pay on Payment Screen
			Given screen state: 728
			Then clicked [Pay]
#Action: 18 Exact Payment
			Given screen state: 730
			Then clicked "Exact"
#Action: 19 Select No Receipt
			Given screen state: 731
			Then clicked [No Receipt]
#Action: 20 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 7 Verify refill can be deleted
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
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 10 Select Coke
			Given screen state: 708
			Then clicked "COKE"
#Action: 11 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 12 Add Coke Modifier
			Given screen state: 138
			Then clicked /Modifier/,"COKE"
#Action: 13 Press OK on modifier screen
			Given screen state: 139
			Then clicked [Confirm]
#Action: 14 Select Coke with refill
			Given screen state: 537
			Then clicked "COKE\  COKE"
#Action: 15 Modify Coke
			Given screen state: 537
			Then clicked [btnModify]
#Action: 16 Select Coke with refill
			Given screen state: 279
			Then clicked /Modifier/,"- COKE"
#Action: 17 Delete Modifier Coke
			Given screen state: 279
			Then clicked /ModifierPortraitScreen/,[btnDelete]
#Action: 18 Press OK on modifier screen
			Given screen state: 732
			Then clicked [Confirm]
#Action: 19 Select Pay on Payment Screen
			Given screen state: 708
			Then clicked [Pay]
#Action: 20 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 21 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 22 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 8 Verify refilled item can be voided
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
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 10 Select Coke
			Given screen state: 708
			Then clicked "COKE"
#Action: 11 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 12 Add Coke Modifier
			Given screen state: 138
			Then clicked /Modifier/,"COKE"
#Action: 13 Press OK on modifier screen
			Given screen state: 139
			Then clicked [Confirm]
#Action: 14 Click Send on OrderMode
			Given screen state: 537
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 700
			Then clicked "HERE"
#Action: 16 Select Coke on Check
			Given screen state: 537
			Then clicked "COKE\  COKE"
#Action: 17 Void COKE
			Given screen state: 537
			Then clicked [btnDelete]
#Action: 18 Select COKE on Void Screen
			Given screen state: 733
			Then clicked /Items/,^COKE\ COKE^
#Action: 19 Select OK on Void Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,[OK]
#Action: 20 Select Void Reason on Void Screen
			Then verify presence of /Dialog/,"Select Void Reason",^TESTING^,^OVERRING^,^MISRING^,^*86*^,^CHANGE MIND^,^WALKOUT^,^KITCHEN ERROR^,^SERVER ERROR^,[Cancel],[OK]
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 21 Select Pay on Payment Screen
			Given screen state: 734
			Then clicked [Pay]
#Action: 22 Select No Receipt
			Given screen state: 619
			Then clicked [No Receipt]
#Action: 23 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 9 Verify you cannot refill a voided item
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
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 10 Select Coke
			Given screen state: 708
			Then clicked "COKE"
#Action: 11 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 12 Add Coke Modifier
			Given screen state: 138
			Then clicked /Modifier/,"COKE"
#Action: 13 Press OK on modifier screen
			Given screen state: 139
			Then clicked [Confirm]
#Action: 14 Click Send on OrderMode
			Given screen state: 537
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 700
			Then clicked "HERE"
#Action: 16 Select Coke on Check
			Given screen state: 537
			Then clicked "COKE\  COKE"
#Action: 17 Void COKE
			Given screen state: 537
			Then clicked [btnDelete]
#Action: 18 Select COKE on Void Screen
			Given screen state: 733
			Then clicked /Items/,^COKE\ COKE^
#Action: 19 Select OK on Void Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,[OK]
#Action: 20 Select Void Reason on Void Screen
			Then verify presence of /Dialog/,"Select Void Reason",^TESTING^,^OVERRING^,^MISRING^,^*86*^,^CHANGE MIND^,^WALKOUT^,^KITCHEN ERROR^,^SERVER ERROR^,[Cancel],[OK]
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 21 Select COKE refill on Guest Check
			Given screen state: 734
			Then clicked "COKE\  COKE"
#Action: 22 Modify Coke
			Given screen state: 734
			Then clicked [btnModify]
#Action: 23 Select OK
			Then verify presence of /Dialog/,"Modify Void Item Error","The selected item has already been ordered."
			Then clicked [OK]
#Action: 24 Select Pay on Payment Screen
			Given screen state: 734
			Then clicked [Pay]
#Action: 25 Select No Receipt
			Given screen state: 619
			Then clicked [No Receipt]
#Action: 26 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 10 Verify Weighted Modifiers work with no issue
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
#Action: 6 Select Entrees Menu
			Given screen state: 714
			Then clicked "ENTREES"
#Action: 7 Order BBQ Ribs
			Given screen state: 601
			Then clicked "BBQ\RIBS"
#Action: 8 On Ribs Submenu order Full Rack
			Given screen state: 128
			Then clicked "FULL RACK"
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 602
			Then clicked "Baked Potato"
#Action: 10 On Soup Mod, select Cup
			Given screen state: 130
			Then clicked "CUP"
#Action: 11 Go Back to Guest Check
			Given screen state: 603
			Then clicked /OK/
#Action: 12 Click Send on OrderMode
			Given screen state: 604
			Then clicked [Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 605
			Then clicked "HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 604
			Then clicked [Pay]
#Action: 15 Exact Payment
			Given screen state: 606
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 650
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 11 Verify Tenderlin Wraps item contains exceptional mod group Pizza right after required Starch mod group
#Action: 1 Login as manager 200
			#TODO cannot modify
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
#Action: 6 Select Apps Menu
			Given screen state: 714
			Then clicked "APPS"
#Action: 7 Order Tenderlin wraps
			Given screen state: 715
			Then clicked "TENDERLN\WRAPS"
#Action: 8 Select Baked Potato
			Given screen state: 651
			Then clicked "Baked Potato"
#Action: 9 Go Back to Guest Check
			Given screen state: 641
			Then clicked /OK/
#Action: 10 Select Tenderlin Wrap
			Given screen state: 366
			Then clicked "TENDERLN WRAPS\  Baked Potato"
#Action: 11 Modify Item
			Given screen state: 366
			Then clicked [btnModify]
#Action: 12 Select Special Button
			Given screen state: 149
			Then clicked [Special]
#Action: 13 On Starch Modgroup, Select Avocado
			Given screen state: 150
			Then clicked [ADD\AVOCADO]
#Action: 14 Verify AVOCADO added, exit mods by "OK"
			Given screen state: 153
			Then clicked [OK]
#Action: 15 Verify prices, order items HERE
			Given screen state: 367
			Then clicked [HERE]
#Action: 16 Select $ on Payment Screen
			Given screen state: 367
			Then clicked [$]
#Action: 17 Exact Payment
			Then verify presence of /Comps/,"Sub Total","5.80",/Taxes/,"Tax","0.35","Total","6.15",/Tenders/,"Balance Due","$6.15"
			Then clicked [Exact]
#Action: 18 Click Close
			Then verify presence of /Comps/,"Sub Total","5.80",/Taxes/,"Tax","0.35","Total","6.15",/Tenders/,"Balance Due","$6.15","CASH","Change"
			Then clicked /MidButtons/,[Close]
#Action: 19 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 12 Verify adding mod with NO mod code is indicated by NO prefix on check
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
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Select Coke on Check
			Given screen state: 708
			Then clicked "COKE"
#Action: 9 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 10 Select NO
			Given screen state: 735
			Then clicked /ModifierPortraitScreen/,[btnMore]
#Action: 11 Add NO Modifier
			Given screen state: 736
			Then clicked "No"
#Action: 12 Add ICE Modifier
			Given screen state: 737
			Then clicked "Ice"
#Action: 13 Press OK on modifier screen
			Given screen state: 738
			Then clicked [Confirm]
#Action: 14 Click Send on OrderMode
			Given screen state: 739
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 740
			Then clicked "HERE"
#Action: 16 Select Pay on Payment Screen
			Given screen state: 739
			Then clicked [Pay]
#Action: 17 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 18 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 19 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 13 Verify adding mod with Extra mod code is indicated by XT prefix on check
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
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Select Coke on Check
			Given screen state: 708
			Then clicked "COKE"
#Action: 9 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 10 Select NO
			Given screen state: 735
			Then clicked /ModifierPortraitScreen/,[btnMore]
#Action: 11 Add Extra Modifier
			Given screen state: 736
			Then clicked "Extra"
#Action: 12 Add ICE Modifier
			Given screen state: 741
			Then clicked "Ice"
#Action: 13 Press OK on modifier screen
			Given screen state: 742
			Then clicked [Confirm]
#Action: 14 Click Send on OrderMode
			Given screen state: 743
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 744
			Then clicked "HERE"
#Action: 16 Select Pay on Payment Screen
			Given screen state: 743
			Then clicked [Pay]
#Action: 17 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 18 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 19 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 14 Verify price is combined on Porkchop item with Red Beans modifier
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
#Action: 6 Select Entrees Menu
			Given screen state: 714
			Then clicked "ENTREES"
#Action: 7 Order Pork Chop
			Given screen state: 601
			Then clicked "PORK\CHOP"
#Action: 8 On Meat Temp Press OK
			Given screen state: 134
			Then clicked "MEDIUM"
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 745
			Then clicked "Red Beans"
#Action: 10 On Soup Mod, select Cup
			Given screen state: 746
			Then clicked "CUP"
#Action: 11 Go Back to Guest Check
			Given screen state: 747
			Then clicked /OK/
#Action: 12 Click Send on OrderMode
			Given screen state: 748
			Then clicked [Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 749
			Then clicked "HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 748
			Then clicked [Pay]
#Action: 15 Exact Payment
			Given screen state: 750
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 751
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 15 Verify price is combined on Porkchop item with Black Beans modifier
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
#Action: 6 Select Entrees Menu
			Given screen state: 714
			Then clicked "ENTREES"
#Action: 7 Order Pork Chop
			Given screen state: 601
			Then clicked "PORK\CHOP"
#Action: 8 On Meat Temp Press OK
			Given screen state: 134
			Then clicked "MEDIUM"
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 745
			Then clicked /Modifier/,"Black Beans"
#Action: 10 On Soup Mod, select Cup
			Given screen state: 746
			Then clicked "CUP"
#Action: 11 Go Back to Guest Check
			Given screen state: 135
			Then clicked /OK/
#Action: 12 Click Send on OrderMode
			Given screen state: 160
			Then clicked [Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 752
			Then clicked "HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 160
			Then clicked [Pay]
#Action: 15 Exact Payment
			Given screen state: 750
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 751
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 16 Add Item with a Typed Modifier
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 6 Modify Coke
			# 7 Add Typed Modifier
			Given screen state: 500
			Then clicked [Modify]
			Then clicked /BottomLeftButtons/,[btnKeyboard]
#Action: 7 Add Typed Modifier Message
			Then verify presence of /RightModifierButtons/,[Ice],[Sugar],/CenterCategoryButtons/,[Drink Mods]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 8 Press OK on modifier screen
			Given screen state: 165
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\test","2.00"
			Then clicked [HERE]
#Action: 10 Select Coke
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\test","2.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE\test","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE\test","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00","Change","$0.00","CASH"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 17 Verify ordering items with mods on panel is working without issue
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Mod Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Mod Menu\Items]
#Action: 5 Order Special Burger
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Special\Burger"
#Action: 6 Select Rare Temp
			Given screen state: 166
			Then clicked /RightPanelButtons/,[RARE]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 167
			Then clicked /RightPanelButtons/,[BACON]
#Action: 8 Apply HERE Ordermode
			Given screen state: 380
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 380
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 381
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 382
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 18 Verify modifier panel is working on Special burger item (submenu Combos).
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Mod Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Mod Menu\Items]
#Action: 5 Order Special Burger
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Special\Burger"
#Action: 6 Select Rare Temp
			Given screen state: 166
			Then clicked /RightPanelButtons/,[RARE]
#Action: 7 Select Clear Temp
			Given screen state: 167
			Then clicked /RightPanelButtons/,[Clear\modifiers]
#Action: 8 On Starch press Baked Potato OK
			Given screen state: 166
			Then clicked /RightPanelButtons/,[BACON]
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 168
			Then clicked /RightPanelButtons/,[BACON]
#Action: 10 Apply HERE Ordermode
			Given screen state: 383
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 383
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 384
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 385
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 19 No Modifier Substitution Weight 2
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
#Action: 6 Select Entrees Menu
			Given screen state: 714
			Then clicked "ENTREES"
#Action: 7 Order BBQ Ribs
			Given screen state: 601
			Then clicked "BBQ\RIBS"
#Action: 8 Select More Menu
			Given screen state: 128
			Then clicked /ModifierPortraitScreen/,[btnMore]
#Action: 9 Add NO Modifier
			Given screen state: 753
			Then clicked "No"
#Action: 10 On Ribs Submenu order Full Rack
			Given screen state: 754
			Then clicked "FULL RACK"
#Action: 11 On Ribs Submenu order 1/2 Rack
			Given screen state: 755
			Then clicked "1/2 RACK"
#Action: 12 On Ribs Submenu order 1/2 Rack
			Given screen state: 756
			Then clicked "1/2 RACK.2"
#Action: 13 On Starch press Baked Potato OK
			Given screen state: 757
			Then clicked "Baked Potato"
#Action: 14 On Soup Mod, select Cup
			Given screen state: 758
			Then clicked "CUP"
#Action: 15 Go Back to Guest Check
			Given screen state: 759
			Then clicked /OK/
#Action: 16 Click Send on OrderMode
			Given screen state: 760
			Then clicked [Send]
#Action: 17 Click "Here" on OrderMode
			Given screen state: 761
			Then clicked "HERE"
#Action: 18 Select Pay on Payment Screen
			Given screen state: 760
			Then clicked [Pay]
#Action: 19 Exact Payment
			Given screen state: 629
			Then clicked "Exact"
#Action: 20 Select No Receipt
			Given screen state: 632
			Then clicked [No Receipt]
#Action: 21 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
