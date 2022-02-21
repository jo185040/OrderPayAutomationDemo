Feature: 34 Tabs


Scenario: 1 Open Tab
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Open Tab
			Given screen state: 038
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 8 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 9 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Rename Tab
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Open Tab
			Given screen state: 038
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Rename Check
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TableAndChecks/,"j1"
#Action: 7 Rename Check to T2
			Then verify presence of /KeyboardEntryDialog/,"Rename Tab"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[Ok]
#Action: 8 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 10 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 11 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Bartender Scenario
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [3],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Exit Check to FloorPlan
			Then verify presence of /TopRightButtons/,[HERE]
			When clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 3 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
