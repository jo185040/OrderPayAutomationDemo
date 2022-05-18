Feature: 5 Combos


Scenario: 1 Verify you can add Order 3 Combo
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
#Action: 6 Swipe to Sandwiches Menu
			Given screen state: 714
			When swiped left on /SubmenuSelectors/
#Action: 7 Swipe to Combo Menu
			Given screen state: 596
			When swiped left on /SubmenuSelectors/
#Action: 8 Select Combo Menu
			Given screen state: 597
			Then clicked "Combos"
#Action: 9 Select Combo 3 Item
			Given screen state: 598
			Then clicked "COMBO 3"
#Action: 10 On Combo Page, Click Tilpia
			Given screen state: 599
			Then clicked "TILAPIA"
#Action: 11 On Combo Page, Click Fries
			Given screen state: 600
			Then clicked "FRIES"
#Action: 12 On Combo Page, Click Pepsi
			Given screen state: 120
			Then clicked "PEPSI"
#Action: 13 On Combo Page, Click Grilled Chicken
			Given screen state: 121
			Then clicked "GRILLED CHCKEN"
#Action: 14 On Combo Page, Click Fries
			Given screen state: 600
			Then clicked "FRIES"
#Action: 15 On Combo Page, Click Pepsi
			Given screen state: 120
			Then clicked "PEPSI"
#Action: 16 On Combo Page, Click Roasted Chicken
			Given screen state: 121
			Then clicked "ROASTED CHCKEN"
#Action: 17 On Combo Page, Click Fries
			Given screen state: 600
			Then clicked "FRIES"
#Action: 18 On Combo Page, Click Pepsi
			Given screen state: 120
			Then clicked "PEPSI"
#Action: 19 Go Back to Guest Check
			Given screen state: 122
			Then clicked /OK/
#Action: 20 Click Send on OrderMode
			Given screen state: 123
			Then clicked /BottomButtons/,[Send]
#Action: 21 Click "Here" on OrderMode
			Given screen state: 124
			Then clicked /MoreOptionsPopup/,"HERE"
#Action: 22 Select Pay on Payment Screen
			Given screen state: 123
			Then clicked /BottomButtons/,[Pay]
#Action: 23 Exact Payment
			Given screen state: 125
			Then clicked "Exact"
#Action: 24 Select No Receipt
			Given screen state: 126
			Then clicked [No Receipt]
#Action: 25 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"
