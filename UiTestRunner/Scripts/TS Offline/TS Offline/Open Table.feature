Feature: 24 Open Table


Scenario: 1 Open Table
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM"
#Action: 6 Enter description "Test"
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Enter Price "2.00"
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Apply HERE Ordermode
			Given screen state: 526
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","TEST","2.00"
			Then clicked [$]
#Action: 10 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","TEST","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.12","Total","2.12",/Tenders/,"Balance Due","$2.12"
			Then clicked [Exact]
#Action: 11 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","TEST","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.12","Total","2.12",/Tenders/,"CASH","2.12","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]
