Feature: 21 Refill


Scenario: 1 Refill Drink
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
#Action: 8 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 10 Select Coke
			Given screen state: 708
			Then clicked "COKE"
#Action: 11 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 12 Add Coke Modifier
			Given screen state: 138
			Then clicked /Modifier/,"COKE"
#Action: 13 Press OK on modifier screen
			Given screen state: 139
			Then clicked [Confirm]
#Action: 14 Click Send on OrderMode
			Given screen state: 537
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 700
			Then clicked "HERE"
#Action: 16 Select Pay on Payment Screen
			Given screen state: 537
			Then clicked [Pay]
#Action: 17 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 18 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 19 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 Repeat Refill Drink
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
#Action: 8 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 10 Select Coke
			Given screen state: 708
			Then clicked "COKE"
#Action: 11 Modify Coke
			Given screen state: 708
			Then clicked [btnModify]
#Action: 12 Add Coke Modifier
			Given screen state: 138
			Then clicked /Modifier/,"COKE"
#Action: 13 Press OK on modifier screen
			Given screen state: 139
			Then clicked [Confirm]
#Action: 14 Click Send on OrderMode
			Given screen state: 537
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 700
			Then clicked "HERE"
#Action: 16 Repeat Refill Drink
			Given screen state: 537
			Then clicked [btnRepeat]
#Action: 17 Select OK Button
			Given screen state: 348
			Then clicked /Dialog/,[OK]
#Action: 18 Select Pay on Payment Screen
			Given screen state: 537
			Then clicked [Pay]
#Action: 19 Exact Payment
			Given screen state: 559
			Then clicked "Exact"
#Action: 20 Select No Receipt
			Given screen state: 560
			Then clicked [No Receipt]
#Action: 21 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
