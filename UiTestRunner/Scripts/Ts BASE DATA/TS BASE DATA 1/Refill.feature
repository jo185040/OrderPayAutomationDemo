Feature: 21 Refill


Scenario: 1 Refill Drink
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
#Action: 5 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 6 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 7 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 8 Add Coke Modifier
			Given screen state: 138
			Then clicked [COKE]
#Action: 9 Press OK on modifier screen
			Given screen state: 139
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\ COKE\","2.00"
			Then clicked [HERE]
#Action: 11 Select Coke
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\ COKE\","2.00"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE\ COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE\ COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Repeat Refill Drink
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
#Action: 5 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 6 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/, "COKE"
#Action: 7 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 8 Add Coke Modifier
			Given screen state: 138
			Then clicked [COKE]
#Action: 9 Press OK on modifier screen
			Given screen state: 139
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\ COKE\","2.00"
			Then clicked [HERE]
#Action: 11 Repeat Refill Drink
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\ COKE\","2.00"
			Then clicked /BottomButtons/,[Repeat]
#Action: 12 Select OK Button
			Then verify presence of /DialogSeparator/,"Repeat is not permitted on Refillable Items"
			Then clicked /DialogSeparator/,[OK]
#Action: 13 Select Payment $
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\ COKE","2.00"
			Then clicked [$]
#Action: 14 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE\ COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE\ COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
