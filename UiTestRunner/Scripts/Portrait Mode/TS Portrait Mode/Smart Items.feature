Feature: 25 Smart Items


Scenario: 1 Verify smart items work with no issue (Smart Beer submenu)
#Action: 1 Login as manager 200
			#TODO OPAY-3718
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
#Action: 6 Swipe to Sandwiches Menu
			Given screen state: 714
			When swiped left on /SubmenuSelectors/
#Action: 7 Swipe to Combo Menu
			Given screen state: 701
			When swiped left on /SubmenuSelectors/
#Action: 8 Select Smart Menu
			Given screen state: 702
			Then clicked "Smart Beer"
#Action: 9 Order Pint Miller
			Then verify presence of /CenterMenuButtons/,[Smart Beer]
			Then clicked [PINT]
			Then clicked "Miller Lite"
#Action: 10 Order Bottle Miller
			Then verify presence of /CenterMenuButtons/,[Smart Beer]
			Then clicked [BOTTLE]
			Then clicked "Miller Lite"
#Action: 11 Go Back to Guest Check
			Given screen state: 122
			Then clicked /OK/
#Action: 12 Click Send on OrderMode
			Given screen state: 123
			Then clicked /BottomButtons/,[Send]
#Action: 13 Click "Here" on OrderMode
			Given screen state: 124
			Then clicked /MoreOptionsPopup/,"HERE"
#Action: 14 Select Pay on Payment Screen
			Given screen state: 123
			Then clicked /BottomButtons/,[Pay]
#Action: 15 Exact Payment
			Given screen state: 125
			Then clicked "Exact"
#Action: 16 Select No Receipt
			Given screen state: 126
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
