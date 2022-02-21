Feature: 3 Add Check


Scenario: 1 Add Check
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
#Action: 5 Add Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TableAndChecks/,[+]
#Action: 6 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /Tenders/,"Balance Due","$2.00",/Comps/,"Sub Total","2.00"
			Then clicked [Exact]
#Action: 10 Close Check 1
			Then verify presence of /Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exact Payment
			Then verify presence of /Tenders/,"Balance Due","$2.00",/Comps/,"Sub Total","2.00"
			Then clicked [Exact]
#Action: 12 Close Check 2
			Then verify presence of /Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
