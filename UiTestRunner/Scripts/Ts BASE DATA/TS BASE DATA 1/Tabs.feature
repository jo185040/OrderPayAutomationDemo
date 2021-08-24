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
#Action: 3 Select Tab
			Given screen state: 038
			Then clicked [btnSetTabEntry]
#Action: 4 Open Tab
			Given screen state: 038
			Then clicked /TopRightButtons/,[btnHideOrShowKeyboard]
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
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
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
#Action: 3 Select Tab
			Given screen state: 038
			Then clicked [btnSetTabEntry]
#Action: 4 Open Tab
			Given screen state: 038
			Then clicked /TopRightButtons/,[btnHideOrShowKeyboard]
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
#Action: 7 Rename Check
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TableAndChecks/,"j1"
#Action: 8 Rename Check to T2
			Then verify presence of /KeyboardEntryDialog/,"Rename Tab"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[Ok]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
