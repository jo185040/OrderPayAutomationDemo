Feature: 19 Quantity


Scenario: 1 Quantity
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
#Action: 8 Go Back to Guest Check
			Given screen state: 553
			Then clicked /OK/
#Action: 9 Select Pork Nachos on Order Entry Screen
			Given screen state: 050
			Then clicked /EntriesBySeat/,"PORK NACHOS"
#Action: 10 Select Quality Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Quantity]
#Action: 11 Select Qty 3
			Then verify presence of /InputDialog/,"Enter quantity"
			Then clicked /DialogSeparator/,[3]
			Then clicked /DialogSeparator/,[OK]
#Action: 12 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","3 PORK NACHOS","15.00"
			Then clicked [$]
#Action: 14 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","3 PORK NACHOS","15.00",/Comps/,"Sub Total","17.00",/Taxes/,"Tax","0.92","Total","17.92",/Tenders/,"Balance Due","$17.92"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","3 PORK NACHOS","15.00",/Comps/,"Sub Total","17.00",/Taxes/,"Tax","0.92","Total","17.92",/Tenders/,"CASH","17.92","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 2 Add Quantity on Multiple Checks
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
#Action: 5 Add Pork Nachos on Seat 2
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Seats/,[+]
			Then clicked "PORK\NACHOS"
#Action: 6 Select Pork Nachos on Order Entry Screen
			Given screen state: 271
			Then clicked /EntriesBySeat/,"COKE"
			Then clicked /EntriesBySeat/,"PORK NACHOS"
#Action: 7 Select Quality Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Quantity]
#Action: 8 Select Qty 3
			Then verify presence of /InputDialog/,"Enter quantity"
			Then clicked /DialogSeparator/,[3]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","3 PORK NACHOS","15.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 273
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 276
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
