Feature: 31 Unordered


Scenario: 1 Login as manager 200 to Floor Plan
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
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 9 Exact Payment
			Given screen state: 247
			Then clicked [Exact]
#Action: 10 Click Close
			Given screen state: 343
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
