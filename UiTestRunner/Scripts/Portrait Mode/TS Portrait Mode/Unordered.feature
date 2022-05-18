Feature: 31 Unordered


Scenario: 1 Add Unordered Items
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
			Given screen state: 704
			Then clicked "MILLER\LITE"
#Action: 9 Go Back to Guest Check
			Given screen state: 705
			Then clicked /OK/
#Action: 10 Click Send on OrderMode
			Given screen state: 706
			Then clicked [Send]
#Action: 11 Click "Here" on OrderMode
			Given screen state: 707
			Then clicked "HERE"
#Action: 12 Select Pay on Payment Screen
			Given screen state: 706
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
