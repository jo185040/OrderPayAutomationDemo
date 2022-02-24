Feature: 9 Euro Payments


Scenario: 1 Close Check with Euro Payments
#Action: 1 Login as manager 200
			#TODO ALOHAP-35802
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 5 Apply HERE Ordermode
			Given screen state: 513
			Then clicked [HERE]
#Action: 6 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [$]
#Action: 7 Euro Payment
			Then verify presence of /ItemEntries/,"Seat 1","PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31"
			Then clicked /MidLeftButtons/,[Euro]
#Action: 8 Select OK
			Then verify presence of /CurrencyInputDialog/,"Enter amount in EUR","$","3.54",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Click Close
			Then verify presence of /Tenders/,"Euro /3.54","5.31","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]
