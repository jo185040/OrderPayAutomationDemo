Feature: 30 Team Get Check


Scenario: 1 Team Get Check on Floorplan
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
#Action: 12 Go Back to Guest Check
			Given screen state: 612
			Then clicked /OK/
#Action: 13 Go Back to Open Table
			Given screen state: 767
			Then clicked /OK/
#Action: 14 Logout on WWT Screen
			Given screen state: 771
			When clicked [btnThreeDots]
			When clicked "Clock Out"
#Action: 15 Login as manager 201
			Given screen state: 510
			When clicked [2],[0],[1]
			And clicked [OK]
			Then verify absence of [Login]
#Action: 16 Free Tables Screen Select 1
			Given screen state: 768
			Then clicked "1"
#Action: 17 Select Pay on Payment Screen
			Given screen state: 769
			Then clicked [Pay]
#Action: 18 Exact Payment
			Given screen state: 613
			Then clicked "Exact"
#Action: 19 Select No Receipt
			Given screen state: 614
			Then clicked [No Receipt]
#Action: 20 Logout on WWT Screen
			Given screen state: 770
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 No Access To Server
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
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Done]
#Action: 9 Login as server 100
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 10 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 11 Dismiss Error Message
			Then verify presence of /Dialog/,"Failed to Open Table.","You do not have access to open the selected table.",[OK]
			Then clicked [OK]
#Action: 12 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
#Action: 13 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 14 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 15 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 16 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 17 Click Close
			Given screen state: 211
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
