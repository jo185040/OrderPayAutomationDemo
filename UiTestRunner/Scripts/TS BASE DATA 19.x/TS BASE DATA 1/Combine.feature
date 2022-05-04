Feature: 4 Combine/Detach Tables


Scenario: 1 Combine Tables
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Combine Table 1
			Given screen state: 558
			Then clicked [Combine\Tables]
			Then clicked [1], [2], [3]
			Then clicked [Combine\Tables]
#Action: 3 Floor Plan select Table 1
			Given screen state: 575
			Then clicked /FloorPlanScreen/,[1]
#Action: 4 Enter Guest Count 1
			Given screen state: 576
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 7 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 8 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [$]
#Action: 10 Exact Payment
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 11 Click Close
			Then verify presence of /Tenders/,"CASH","10.31","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 12 Detach Table 1
			Given screen state: 575
			Then clicked [Detach\Tables]
			Then clicked /FloorPlanScreen/,[1],[1.2],[1.3]
			Then clicked [Detach\Tables]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify Combine Tables doesnt work after you exit OPAY3661
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Combine Table 1
			Given screen state: 558
			Then clicked [Combine\Tables]
			Then clicked [1]
#Action: 3 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
#Action: 4 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 5 Combine Table 1
			Given screen state: 558
			Then clicked [2]
#Action: 6 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
