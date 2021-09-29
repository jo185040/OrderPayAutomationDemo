Feature: 22 Hold

@ ignore

Scenario: 1 Hold Item
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Select Coke on Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 6 Add Hold
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped left on /BottomButtons/
			Then clicked /BottomButtons/,[Hold]
#Action: 7 Apply HERE Ordermode
			Given screen state: 207
			Then clicked [HERE]
#Action: 8 Press OK
			Then verify presence of /EntriesBySeat/,"Seat 1","H COKE","2.00"
			Then clicked /Items/,^COKE^
			Then clicked /Items/,[OK]
#Action: 9 Select $ Option
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped right on /BottomButtons/
			Then clicked /BottomButtons/,[$]
#Action: 10 Exact Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 208
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
