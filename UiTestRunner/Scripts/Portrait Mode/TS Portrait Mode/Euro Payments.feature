Feature: 9 Euro Payments


Scenario: 1 Close Check with Euro Payments
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
#Action: 6 Add Pork Nachos
			Given screen state: 537
			Then clicked "PORK\NACHOS"
#Action: 7 Go Back to Guest Check
			Given screen state: 561
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 562
			Then clicked /OK/,[Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 563
			Then clicked /OK/,"HERE"
#Action: 10 Select Pay on Payment Screen
			Given screen state: 562
			Then clicked /OK/,[Pay]
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
			When clicked /ThreeDotsBtn/
			When clicked /AddTableBtn/,"Clock Out"
