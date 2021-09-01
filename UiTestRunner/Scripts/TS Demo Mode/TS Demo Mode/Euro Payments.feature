Feature: 9 Euro Payments


Scenario: 1 Login as manager 200 to Floor Plan
#Action: 1 Login as manager 200
			#Then clicked
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
#Action: 4 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 5 Apply HERE Ordermode
			Given screen state: 249
			Then clicked [HERE]
#Action: 6 Select $ on Payment Screen
			Given screen state: 249
			Then clicked [$]
#Action: 7 Euro Payment
			Given screen state: 250
			Then clicked /MidLeftButtons/,[Euro]
#Action: 8 Select OK
			Given screen state: 251
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Exact Payment
			Given screen state: 250
			Then clicked [Exact]
#Action: 10 Click Close
			Given screen state: 252
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
