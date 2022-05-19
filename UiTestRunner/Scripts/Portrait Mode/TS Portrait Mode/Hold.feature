Feature: 22 Hold

@ ignore

Scenario: 1 Hold Item
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
#Action: 9 Add Hold
			Given screen state: 708
			Then clicked [btnHold]
#Action: 10 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 11 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 12 Press OK
			Given screen state: 693
			Then clicked /Items/,^COKE^
			Then clicked /Items/,[OK]
#Action: 13 Select Pay on Payment Screen
			Given screen state: 708
			Then clicked [Pay]
#Action: 14 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 15 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 16 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
