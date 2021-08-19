Feature: 39 Training


Scenario: 1 Open Table as a Training Emp
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[5],[0]
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
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Table","COKE","2.00","PORK NACHOS","5.00"
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Table","COKE","2.00","PORK NACHOS","5.00"
			Then clicked [$]
#Action: 8 Exact Payment
			Then verify presence of /ItemEntries/,"Table","COKE","2.00","PORK NACHOS","5.00",/Comps/,"Sub Total","7.00",/Taxes/,"Tax","0.31","Total","7.31",/Tenders/,"Balance Due","$7.31"
			Then clicked [Exact]
#Action: 9 Click Close
			Given screen state: 212
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
