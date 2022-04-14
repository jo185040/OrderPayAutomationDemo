Feature: 30 Team Get Check


Scenario: 1 Server Tables on WWT Mangeer Screen
#Action: 1 Login as Server 100
			Then verify presence of /LoginForm/,"Demo Mode"
			When clicked [1],[0],[0]
			And clicked [Login]
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
#Action: 8 Go back to Floorplan
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 9 Floor Plan select Table 2
			Given screen state: 558
			Then clicked [2]
#Action: 10 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[2]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 11 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 12 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 13 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 14 Click DONE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Done]
#Action: 15 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
			When clicked [2],[0],[0]
			And clicked [Login]
#Action: 16 Go to WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 17 Floor Plan select Table 1
			Given screen state: 327
			Then clicked "1"
#Action: 18 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 19 Exact Payment
			Given screen state: 338
			Then clicked [Exact]
#Action: 20 Click Close
			Given screen state: 343
			Then clicked /MidButtons/,[Close]
#Action: 21 Go to WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 22 Floor Plan select Table 2
			Given screen state: 354
			Then clicked "2"
#Action: 23 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 24 Exact Payment
			Given screen state: 362
			Then clicked [Exact]
#Action: 25 Click Close
			Given screen state: 363
			Then clicked /MidButtons/,[Close]
#Action: 26 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
