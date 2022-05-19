Feature: 19 Quantity


Scenario: 1 Quantity
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
#Action: 8 Go Back to Guest Check
			Given screen state: 588
			Then clicked /OK/
#Action: 9 Select Pork Nachos on Order Entry Screen
			Given screen state: 589
			Then clicked /CheckEntries/,"PORK NACHOS"
#Action: 10 Select Quality Item
			Given screen state: 589
			Then clicked [btnQuantity]
#Action: 11 Select Qty 3
			Given screen state: 590
			Then clicked /BackBtn/,[3]
			Then clicked /BackBtn/,[OK]
#Action: 12 Click Send on OrderMode
			Given screen state: 591
			Then clicked [Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 592
			Then clicked "HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 593
			Then clicked [Pay]
#Action: 15 Exact Payment
			Given screen state: 594
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 595
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 Add Quantity on Multiple Checks
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
#Action: 8 Add Seat 2
			Given screen state: 708
			Then clicked [btnAddSeat]
#Action: 9 Select Menu
			Given screen state: 680
			Then clicked [Menu]
#Action: 10 Add COKE
			Given screen state: 681
			Then clicked "PORK\NACHOS"
#Action: 11 Go Back to Guest Check
			Given screen state: 682
			Then clicked /OK/
#Action: 12 Select Pork Nachos on Order Entry Screen
			Given screen state: 683
			Then clicked "COKE"
#Action: 13 Select Quality Item
			Given screen state: 683
			Then clicked [btnQuantity]
#Action: 14 Select Qty 3
			Given screen state: 684
			Then clicked /BackBtn/,[3]
			Then clicked /BackBtn/,[OK]
#Action: 15 Select Pork Nachos on Order Entry Screen
			Given screen state: 685
			Then clicked "PORK NACHOS"
#Action: 16 Select Quality Item
			Given screen state: 685
			Then clicked [btnQuantity]
#Action: 17 Select Qty 3
			Given screen state: 686
			Then clicked /BackBtn/,[3]
			Then clicked /BackBtn/,[OK]
#Action: 18 Click Send on OrderMode
			Given screen state: 687
			Then clicked [Send]
#Action: 19 Click "Here" on OrderMode
			Given screen state: 688
			Then clicked "HERE"
#Action: 20 Select Pay on Payment Screen
			Given screen state: 689
			Then clicked [Pay]
#Action: 21 Exact Payment
			Given screen state: 690
			Then clicked "Exact"
#Action: 22 Select No Receipt
			Given screen state: 691
			Then clicked [No Receipt]
#Action: 23 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
