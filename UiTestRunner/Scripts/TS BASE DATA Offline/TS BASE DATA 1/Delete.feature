Feature: 8 Delete


Scenario: 1 Delete Item
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
#Action: 5 Select Coke on Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 6 Delete COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped left on /BottomButtons/
			Then clicked [Delete]
#Action: 7 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]
