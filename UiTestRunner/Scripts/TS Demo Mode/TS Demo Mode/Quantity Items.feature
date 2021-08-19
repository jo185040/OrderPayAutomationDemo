Feature: 37 Quantity Items


Scenario: 1 Quantity
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Select Buffet Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BUFFET"
#Action: 6 Enter Quantity of llbs
			Then verify presence of /InputDialog/,"Enter quantity of llbs ^@ 4.00^","0",[<]
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[5]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Enter Quantity of llbs
			Then verify presence of /CurrencyInputDialog/,"Enter quantity of llbs ^@ 4.00^","0.00",[<]
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[5]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","BUFFET ^0.75 llbs^","3.00"
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","BUFFET ^0.75 llbs^","3.00"
			Then clicked [$]
#Action: 10 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","BUFFET ^0.75 llbs^","3.00",/Comps/,"Sub Total","3.00",/Taxes/,"Tax","0.18","Total","3.18",/Tenders/,"Balance Due","$3.18"
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 001
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
