#TODO ALOHAP-33130 table not clearing after deleting items.
Feature: 2 Clear Item


Scenario: 1 Clear Item on Empty Check
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Then clicked /TableAndChecks/,[Clear]
#Action: 6 Delete COKE
			Then verify presence of /ConfirmDialog/,"Clear All Unordered Items","Are you sure you want to clear all items which have not been held or ordered?",[Cancel],[OK]
			Then clicked /ConfirmDialog/,[OK]
#Action: 7 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]

Scenario: 2 Delete Item on Empty Check
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
#Action: 4 Delete COKE
			Given screen state: 241
			Then clicked /BottomButtons/,[Delete]
#Action: 5 Dismiss Error COKE
			Given screen state: 517
			Then clicked /DialogSeparator/,[OK]
#Action: 6 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]
