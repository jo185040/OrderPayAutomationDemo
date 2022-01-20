Feature: 15 Payments


Scenario: 1 Delete Cash Payment
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
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
#Action: 10 Select Cash Payment
			Then verify presence of /Tenders/,"CASH","10.31","Change","$0.00"
			Then clicked /Tenders/,"CASH"
#Action: 11 Delete Cash Payment
			Then verify presence of /Tenders/,"CASH","10.31","Change","$0.00"
			Then clicked /BottomRightButtons/,[Delete]
#Action: 12 Exact Payment
			Then verify presence of /Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Tenders/,"CASH","10.31","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify enabled Close button displays when there is a zero balance (Manager)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Drinks Sub-menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[DRINKS]
#Action: 5 Add Water
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "WATER"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","WATER","0.00"
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","WATER","0.00"
			Then clicked [$]
#Action: 8 Click Close
			Then verify presence of /Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 9 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you can pay with cash with predefined amount (Server)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
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
#Action: 6 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 7 Exact Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [$10]
#Action: 8 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","10.00","Change","$8.00"
			Then clicked /MidButtons/,[Close]
#Action: 9 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify you can process Euro payment (Manager)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
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
#Action: 6 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 7 Select Euro Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Euro]
#Action: 8 Select OK on Dialog Menu
			Then verify presence of /CurrencyInputDialog/,"Enter amount in EUR","$","1.33",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Euro /1.33","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify you can delete Euro payment (Manager)
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
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
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify you cant delete payment without JIT screen approval (Ordertaker)
#Action: 1 Login as OrderTaker 203
			#TODO ALOHAP-33562 blocking this issue
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[3]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
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
			Then verify presence of /EntriesBySeat/,"COKE","2.00"
			Then clicked "PORK\NACHOS"
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
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
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Delete Cash Payment Error Message
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
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
			Given screen state: 345
			Then clicked /Dialog/,[OK]
#Action: 12 Click Close
			Given screen state: 211
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
