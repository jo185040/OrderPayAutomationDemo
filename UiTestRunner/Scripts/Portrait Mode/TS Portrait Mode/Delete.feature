Feature: 8 Delete


Scenario: 1 Delete Item
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
#Action: 8 Click Send on OrderMode
			Given screen state: 539
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 615
			Then clicked "HERE"
#Action: 10 Delete Items
			Given screen state: 539
			Then clicked [btnDelete]
#Action: 11 Select Coke on Void Screen
			Given screen state: 616
			Then clicked /Items/,"COKE"
			Then clicked /Items/,[OK*]
#Action: 12 Delete Items
			Given screen state: 617
			Then clicked /Dialog/,^MISRING^
			Then clicked /Dialog/,[OK]
#Action: 13 Select Pay on Payment Screen
			Given screen state: 618
			Then clicked [Pay]
#Action: 14 Select No Receipt
			Given screen state: 619
			Then clicked [No Receipt]
#Action: 15 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
