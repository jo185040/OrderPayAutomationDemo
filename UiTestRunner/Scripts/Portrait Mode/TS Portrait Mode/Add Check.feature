Feature: 3 Add Check


Scenario: 1 Add Check
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
			Given screen state: 537
			Then clicked "COKE"
#Action: 7 Go Back to Guest Check
			Given screen state: 538
			Then clicked /OK/
#Action: 8 Add Check
			Given screen state: 539
			Then clicked /OK/,[Check 1]
			Then clicked [New Check]
#Action: 9 Select Menu
			Given screen state: 542
			Then clicked [Menu]
#Action: 10 Add COKE
			Given screen state: 543
			Then clicked "COKE"
#Action: 11 Go Back to Guest Check
			Given screen state: 544
			Then clicked /OK/
#Action: 12 Select Guest Check
			Given screen state: 545
			Then clicked /OK/,[Check 2]
#Action: 13 Click Send on OrderMode
			Given screen state: 546
			Then clicked [Send]
#Action: 14 Click "Here" on OrderMode
			Given screen state: 547
			Then clicked "HERE"
#Action: 15 Select Pay on Payment Screen
			Given screen state: 546
			Then clicked [Pay]
#Action: 16 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 17 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 18 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 19 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 20 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
