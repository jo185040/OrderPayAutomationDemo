Feature: 25 Smart Items


Scenario: 1 Verify smart items work with no issue (Smart Beer submenu)
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[Smart Beer]
#Action: 5 Order Pint Miller
			Then verify presence of /CenterMenuButtons/,[Smart Beer]
			Then clicked [PINT]
			Then clicked "Miller Lite"
#Action: 6 Order Bottle Miller
			Then verify presence of /CenterMenuButtons/,[Smart Beer]
			Then clicked [BOTTLE]
			Then clicked "Miller Lite"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[Smart Beer]
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PT MILLER LITE","5.00","MILLER LITE","3.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","PT MILLER LITE","5.00","MILLER LITE","3.00",/Comps/,"Sub Total",/Taxes/,"8.00","Tax","0.00","Total","8.00",/Tenders/,"Balance Due","$8.00"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","PT MILLER LITE","5.00","MILLER LITE","3.00",/Comps/,"Sub Total",/Taxes/,"8.00","Tax","0.00","Total","8.00",/Tenders/,"CASH","8.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
