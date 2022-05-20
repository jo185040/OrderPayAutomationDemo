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
#Action: 13 Logout on WWT Screen
			Given screen state: 771
			When clicked [btnThreeDots]
			When clicked "Clock Out"
#Action: 14 Login as server 100
			Given screen state: 510
			When clicked [1],[0],[0]
			And clicked [OK]
#Action: 15 Floor Plan select Table 1
			Given screen state: 518
			Then clicked [btnAddTable]
#Action: 16 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 17 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 18 Dismiss Error Message
			Then verify presence of /Dialog/,"Failed to Open Table.","The Table with the supplied id is currently in use",[OK]
			Then clicked [OK]
#Action: 19 Logout on WWT Screen
			Given screen state: 772
			When clicked [btnThreeDots]
			When clicked "Clock Out"
#Action: 20 Login as manager 201
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
			Then verify absence of [Login]
#Action: 21 Free Tables Screen Select 1
			Given screen state: 771
			Then clicked "1"
#Action: 22 Select Pay on Payment Screen
			Given screen state: 769
			Then clicked [Pay]
#Action: 23 Exact Payment
			Given screen state: 613
			Then clicked "Exact"
#Action: 24 Select No Receipt
			Given screen state: 614
			Then clicked [No Receipt]
#Action: 25 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
