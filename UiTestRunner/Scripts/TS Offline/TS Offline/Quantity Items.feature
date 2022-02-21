Feature: 37 Quantity Items


Scenario: 1 Add Quantity Item to the Check
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
			Given screen state: 256
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[5]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Apply HERE Ordermode
			Given screen state: 499
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Given screen state: 499
			Then clicked [$]
#Action: 9 Exact Payment
			Given screen state: 260
			Then clicked [Exact]
#Action: 10 Click Close
			Given screen state: 001
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
