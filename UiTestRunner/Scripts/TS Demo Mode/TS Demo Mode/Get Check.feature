Feature: 18 Get Check


Scenario: 1 Get Table
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
			Then verify absence of "Enter Guest Count""
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 7 Go to Floorplan
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 8 Click WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 9 Click Get Check
			Given screen state: 036
			Then clicked /TopRightButtons/,[Get Check]
#Action: 10 Get Check "Table 1"
			Given screen state: 105
			Then clicked /Keyboard/,[1]
			Then clicked /Keyboard/,[Ok]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00",/Comps/,"Sub Total","7.00",/Taxes/,"Tax","0.31","Total","7.31",/Tenders/,"Balance Due","$7.31"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00",/Comps/,"Sub Total","7.00",/Taxes/,"Tax","0.31","Total","7.31",/Tenders/,"CASH","7.31","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Get Tab
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Select Tab
			Given screen state: 038
			Then clicked [btnSetTabEntry]
#Action: 4 Open Tab
			Given screen state: 038
			Then clicked [btnHideOrShowKeyboard]
			Then verify presence of /EnterTabNameKeyboard/,[Ok]
			When waited for 0.01 min
			Then clicked /EnterTabNameKeyboard/,[j]
			Then clicked /EnterTabNameKeyboard/,[1]
			Then clicked /EnterTabNameKeyboard/,[Ok]
#Action: 5 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 6 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Go to Floorplan
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 9 Click WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 10 Click Get Check
			Given screen state: 106
			Then clicked /TopRightButtons/,[Get Check]
#Action: 11 Click Tab Button
			Given screen state: 107
			Then clicked /TopGetButtons/,[Get Tab]
#Action: 12 Get Check "Tab 1"
			Given screen state: 310
			Then clicked /Keyboard/,[j]
			Then clicked /Keyboard/,[1]
			Then clicked /Keyboard/,[Ok]
#Action: 13 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 14 Exact Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
