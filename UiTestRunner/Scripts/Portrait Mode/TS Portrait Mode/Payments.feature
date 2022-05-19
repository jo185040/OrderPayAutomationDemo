Feature: 15 Payments


Scenario: 1 Delete Cash Payment
#Action: 1 Login as manager 200
			#TODO No delete button on payments
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
#Action: 14 Delete Cash Payment
			Then verify presence of /Tenders/,"CASH","10.31","Change","$0.00"
			Then clicked /BottomRightButtons/,[Delete]
#Action: 15 Exact Payment
			Given screen state: 567
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 568
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 Verify enabled Close button displays when there is a zero balance (Manager)
#Action: 1 Login as manager 200
			#TODO No delete button on payments
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
#Action: 6 Select Drinks Sub-menu
			Given screen state: 714
			Then clicked "DRINKS"
#Action: 7 Add Water
			Given screen state: 578
			Then clicked "WATER"
#Action: 8 Go Back to Guest Check
			Given screen state: 579
			Then clicked /OK/
#Action: 9 Click Send on OrderMode
			Given screen state: 580
			Then clicked [Send]
#Action: 10 Click "Here" on OrderMode
			Given screen state: 581
			Then clicked "HERE"
#Action: 11 Select Pay on Payment Screen
			Given screen state: 580
			Then clicked [Pay]
#Action: 12 Select No Receipt
			Given screen state: 619
			Then clicked [No Receipt]
#Action: 13 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 3 Verify you can pay with cash with predefined amount (Server)
#Action: 1 Login as manager 100
			Given screen state: 510
			When clicked [1],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 652
			Then clicked [btnAddTable]
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 653
			Then clicked [Menu]
#Action: 6 Add COKE
			Given screen state: 654
			Then clicked "COKE"
#Action: 7 Go Back to Guest Check
			Given screen state: 655
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 656
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 657
			Then clicked "HERE"
#Action: 10 Select Pay on Payment Screen
			Given screen state: 656
			Then clicked [Pay]
#Action: 11 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 12 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 13 Logout on WWT Screen
			Given screen state: 652
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 4 Verify you can process Euro payment (Manager)
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
			Then clicked "HERE"
#Action: 10 Select Pay on Payment Screen
			Given screen state: 621
			Then clicked [Pay]
#Action: 11 Exact Payment
			Given screen state: 564
			Then clicked "Euro"
#Action: 12 Select OK, on Enter on EUR screen
			Given screen state: 565
			Then clicked /BackBtn/,[OK]
#Action: 13 Select No Receipt
			Given screen state: 566
			Then clicked [No Receipt]
#Action: 14 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 5 Verify you can delete Euro payment (Manager)
#Action: 1 Login as manager 200
			#TODO there is no way to delete payments
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
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Euro]
#Action: 10 Press OK
			Then verify presence of /CurrencyInputDialog/,"Enter amount in EUR","$","6.87",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 11 Select Cash Payment
			Then verify presence of /Tenders/,"Euro /6.87","10.31","Change","$0.00"
			Then clicked /Tenders/,"Euro /6.87"
#Action: 12 Delete Cash Payment
			Then verify presence of /Tenders/,"Euro /6.87","10.31","Change","$0.00"
			Then clicked /BottomRightButtons/,[Delete]
#Action: 13 Select Euro Payment
			Then verify presence of /Tenders/,"Balance Due","$10.31"
			Then clicked [Euro]
#Action: 14 Select OK on Dialog
			Then verify presence of /CurrencyInputDialog/,"Enter amount in EUR","$","6.87",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 15 Click Close
			Then verify presence of /Tenders/,"Euro /6.87","10.31","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 6 Verify you cant delete payment without JIT screen approval (Ordertaker)
#Action: 1 Login as OrderTaker 203
			#TODO ALOHAP-33562 blocking this issue
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[3]
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
			When waited 0.03
#Action: 5 Add Pork Nachos
			Then verify presence of /EntriesBySeat/,"COKE","2.00"
			Then clicked "PORK\NACHOS"
			When waited 0.03
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
			When waited 0.03
#Action: 7 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /ItemEntries/,"COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 10 Select Cash Payment
			Then verify presence of /ItemEntries/,"COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"10.31","Change","$0.00","CASH"
			Then clicked /Tenders/,"CASH"
#Action: 11 Delete Cash Payment
			Then verify presence of /ItemEntries/,"COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"10.31","Change","$0.00","CASH"
			Then clicked /BottomRightButtons/,[Delete]
#Action: 12 Enter Manager
			Given screen state: 494
			When clicked /DialogSeparator/,[2]
			When clicked /DialogSeparator/,[0]
			When clicked /DialogSeparator/,[0]
			And clicked /DialogSeparator/,[OK]
#Action: 13 Exact Payment
			Then verify presence of /ItemEntries/,"COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"$10.31"
			Then clicked [Exact]
#Action: 14 Click Close
			Then verify presence of /ItemEntries/,"COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31"
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 7 Delete Cash Payment Error Message
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
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 10 Delete Cash Payment
			Given screen state: 211
			Then clicked /BottomRightButtons/,[Delete]
#Action: 11 Dismiss Error Message
			Given screen state: 508
			Then clicked /Dialog/,[OK]
#Action: 12 Click Close
			Given screen state: 211
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
