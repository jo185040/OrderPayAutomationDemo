Feature: 37 Quantity Items


Scenario: 1 Quantity
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Select Buffet Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BUFFET"
#Action: 6 Enter Quantity of llbs
			Given screen state: 510
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[5]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Enter Quantity of llbs
			Given screen state: 511
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[5]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Apply HERE Ordermode
			Given screen state: 512
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 512
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 513
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 514
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
