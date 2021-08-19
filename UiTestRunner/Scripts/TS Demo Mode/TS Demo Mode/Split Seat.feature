Feature: 28 Split Seat


Scenario: 1 Login as manager 200 to Floor Plan
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
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
#Action: 5 Add 7Up
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 6 Add Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Split Seat]
#Action: 7 Select "7Up"
			Given screen state: 101
			Then clicked "7 UP"
#Action: 8 Add Check
			Given screen state: 101
			Then clicked [Add]
#Action: 9 Add Check
			Given screen state: 010
			Then clicked [Close]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","Seat 2","7 UP","2.00",/Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.00","Total","4.00",/Tenders/,"Balance Due","$4.00"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","Seat 2","7 UP","2.00",/Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.00","Total","4.00",/Tenders/,"CASH","4.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Select Multiple Items on Split Check
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
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
#Action: 5 Add 7Up
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 6 Add Iced Coffee
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "ICED\COFFEE"
#Action: 7 Add Check
			Given screen state: 102
			Then clicked /TopLeftButtons/,[Split Seat]
#Action: 8 Select "7Up"
			Given screen state: 035
			Then clicked "7 UP"
			Then clicked "COKE"
#Action: 9 Add Check
			Given screen state: 035
			Then clicked [Add]
#Action: 10 Click Close Button
			Given screen state: 008
			Then clicked [Close]
#Action: 11 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 098
			Then clicked [$]
#Action: 13 Exact Payment
			#NOTE for Dmitri's setup [Get Mobile Pay Code] is enabled even thought ATG has it off (comes from some where elce)
			Given screen state: 099
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 100
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
