Feature: 2 Clear Item


Scenario: 1 Clear Item on Guest Check
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
#Action: 5 Clear Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TableAndChecks/,[Clear]
#Action: 6 Press OK, on Clear Item Dialog
			Then verify presence of /Dialog/,"Clear All Unordered Items","Are you sure you want to clear all items which have not been held or ordered?",[Cancel],[OK]
			Then clicked /Dialog/,[OK]
			When waited .1
#Action: 7 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]

Scenario: 2 Delete Item on Empty Check
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
#Action: 4 Delete COKE
			Given screen state: 318
			Then clicked /FixedBottomButtons/,[Delete]
#Action: 5 Dismiss Error COKE
			Given screen state: 269
			Then clicked /Dialog/,[OK]
#Action: 6 Click Done
			Given screen state: 318
			When clicked /TopLeftButtons/,[Done]

Scenario: 3 Clear Item on Multiple Checks
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
#Action: 5 Add Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TableAndChecks/,[+]
#Action: 6 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
			When waited 0.1
#Action: 7 Clear Items
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TableAndChecks/,[Clear]
#Action: 8 Press OK, on Clear Item Dialog
			Then verify presence of /Dialog/,"Clear All Unordered Items","Are you sure you want to clear all items which have not been held or ordered?",[Cancel],[OK]
			Then clicked /Dialog/,[OK]
#Action: 9 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]
