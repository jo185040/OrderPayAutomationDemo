Feature: 2 Clear Item


Scenario: 1 Clear Item on Guest Check
#TODO OPAY-3681
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
			Given screen state: 538
			Then clicked /OK/
#Action: 8 Clear Item
			Given screen state: 539
			Then clicked [btnDelete]
#Action: 9 Press OK, on Clear Item Dialog
			Given screen state: 056
			Then clicked /Dialog/,[OK]
			When waited .1
#Action: 10 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]

Scenario: 2 Delete Item on Empty Check
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
#Action: 5 Delete Item
			Given screen state: 536
			Then clicked [btnDelete]
#Action: 6 Dismiss Error COKE
			Given screen state: 540
			Then clicked /Dialog/,[OK]
#Action: 7 Click Back on Guest Check Screen
			Given screen state: 536
			When clicked /OK/
#Action: 8 Click Back on Tables Screen
			Given screen state: 514
			When clicked /OK/
#Action: 9 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 3 Clear Item on Multiple Checks
#Action: 1 Login as manager 200
			#TODO need to implement long press
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
#Action: 13 Clear Items
			Given screen state: 546
			Then clicked /OK/,[btnDelete]
#Action: 14 Press OK, on Clear Item Dialog
			Then verify presence of /Dialog/,"Clear All Unordered Items","Are you sure you want to clear all items which have not been held or ordered?",[Cancel],[OK]
			Then clicked /Dialog/,[OK]
#Action: 15 Click Back on Guest Check Screen
			Given screen state: 536
			When clicked /OK/
#Action: 16 Click Back on Tables Screen
			Given screen state: 536
			When clicked /OK/
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
