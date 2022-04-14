Feature: 15 Payments


Scenario: 1 Delete Cash Payment
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 7 Apply HERE Ordermode
			Given screen state: 246
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Given screen state: 246
			Then clicked [$]
#Action: 9 Exact Payment
			Given screen state: 247
			Then clicked [Exact]
#Action: 10 Select Cash Payment
			Given screen state: 343
			Then clicked /Tenders/,"Cash"
#Action: 11 Delete Cash Payment
			Given screen state: 343
			Then clicked /BottomRightButtons/,[Delete]
#Action: 12 Exact Payment
			Given screen state: 343
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 343
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify enabled Close button displays when there is a zero balance (Manager)
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Drinks Sub-menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[DRINKS]
#Action: 5 Add Water
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "WATER"
#Action: 6 Apply HERE Ordermode
			Given screen state: 436
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Given screen state: 436
			Then clicked [$]
#Action: 8 Click Close
			Given screen state: 437
			Then clicked /MidButtons/,[Close]
#Action: 9 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you can pay with cash with predefined amount (Server)
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 7 Exact Payment
			Given screen state: 438
			Then clicked [$10]
#Action: 8 Click Close
			Given screen state: 439
			Then clicked /MidButtons/,[Close]
#Action: 9 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
