Feature: 30 Team Get Check


Scenario: 1 Team Get Check on Floorplan
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Done]
#Action: 9 Login as manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 10 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 211
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 2 No Access To Server
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Done]
#Action: 9 Login as server 100
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 10 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 11 Dismiss Error Message
			Given screen state: 487
			Then clicked [OK]
#Action: 12 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]
#Action: 13 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 14 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 15 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 16 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 17 Click Close
			Given screen state: 211
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]
