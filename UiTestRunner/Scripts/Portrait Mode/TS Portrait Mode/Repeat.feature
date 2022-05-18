Feature: 23 Repeat


Scenario: 1 Verify Repeat works on unordered items
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
			Given screen state: 538
			Then clicked "PORK\NACHOS"
#Action: 8 Go Back to Guest Check
			Given screen state: 588
			Then clicked /OK/
#Action: 9 Repeat Item
			Given screen state: 589
			Then clicked [btnRepeat]
#Action: 10 Click Send on OrderMode
			Given screen state: 694
			Then clicked [Send]
#Action: 11 Click "Here" on OrderMode
			Given screen state: 695
			Then clicked "HERE"
#Action: 12 Select Pay on Payment Screen
			Given screen state: 696
			Then clicked [Pay]
#Action: 13 Exact Payment
			Given screen state: 697
			Then clicked "Exact"
#Action: 14 Select No Receipt
			Given screen state: 698
			Then clicked [No Receipt]
#Action: 15 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 Verify Repeat works on ordered items
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
			Given screen state: 538
			Then clicked "PORK\NACHOS"
#Action: 8 Go Back to Guest Check
			Given screen state: 588
			Then clicked /OK/
#Action: 9 Click Send on OrderMode
			Given screen state: 589
			Then clicked [Send]
#Action: 10 Click "Here" on OrderMode
			Given screen state: 699
			Then clicked "HERE"
#Action: 11 Repeat Item
			Given screen state: 589
			Then clicked [btnRepeat]
#Action: 12 Click Send on OrderMode
			Given screen state: 591
			Then clicked [Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 592
			Then clicked "HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 593
			Then clicked [Pay]
#Action: 15 Exact Payment
			Given screen state: 593
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 698
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 3 Verify Repeat works on items with modifiers
#Action: 1 Login as manager 200
			#TODO ALOHAP-36071
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 On Ribs Submenu order 1/2 Rack
			Then verify presence of /RightModifierButtons/,[1/2 RACK]
			Then clicked [1/2 RACK]
#Action: 7 On Ribs Submenu order 1/2 Rack
			Then verify presence of /RightModifierButtons/,[1/2 RACK]
			Then clicked [1/2 RACK]
#Action: 8 On Starch press Baked Potato OK
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Baked Potato]
#Action: 9 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 10 Repeat Item
			Given screen state: 355
			Then clicked [Repeat]
#Action: 11 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 108
			Then clicked [$]
#Action: 13 Exact Payment
			Given screen state: 473
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 474
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 4 Verify Repeat works on Smart Select items
#Action: 1 Login as manager 200
			#TODO ALOHAP-36071
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[Smart Beer]
#Action: 5 Order Pint Miller
			Then verify presence of /CenterMenuButtons/,[BEER]
			Then clicked [PINT]
			Then clicked "Miller Lite"
#Action: 6 Repeat Item
			Then verify presence of /CenterMenuButtons/,[BEER]
			Then clicked [Repeat]
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[BEER]
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","2 PT MILLER LITE","10.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","2 PT MILLER LITE","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.00","Total","10.00",/Tenders/,"Balance Due","$10.00"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","2 PT MILLER LITE","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.00","Total","10.00",/Tenders/,"CASH","10.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 5 Verify voided items cannot be repeated
#Action: 1 Login as manager 200
			#TODO ALOHAP-36071
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
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Void COKE
			Given screen state: 500
			Then clicked /BottomButtons/,[Void]
#Action: 7 Select COKE on Void Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Items/,^COKE^
#Action: 8 Select OK on Void Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Items/,[OK]
#Action: 9 Select Void Reason on Void Screen
			Given screen state: 475
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 10 Repeat Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Repeat]
#Action: 11 Select OK Button
			Given screen state: 349
			Then clicked /Dialog/,[OK]
#Action: 12 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE"
			Then clicked [$]
#Action: 13 Select Close on Payment Screen
			Given screen state: 476
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
