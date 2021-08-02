Feature: 37 Printer

@ Printer

Scenario: 1 Select Printer
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Floor Plan select Table 1
	Given screen state {558}
	Then clicked [1]
# 3 Enter Guest Count 1
	Given screen state {025}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 4 Select Printer
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Select Printer]
# 5 Select Bixlon Printer
	Given screen state "SelectEntityDialog~Select default printer",[SelectEntityButtons~Bixolon],[SelectEntityButtons~Bixlon Kitchen],[SelectEntityButtons~X],[SelectEntityButtons~Cancel]
	Then clicked [SelectEntityButtons~Bixlon Kitchen]
# 6 Select Printer
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Select Printer]
# 7 Select Bixlon Printer
	Given screen state "SelectEntityDialog~Select default printer",[SelectEntityButtons~Bixolon],[SelectEntityButtons~Bixlon Kitchen],[SelectEntityButtons~X],[SelectEntityButtons~Cancel]
	Then clicked [SelectEntityButtons~Bixolon]
# 8 Exit
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Done]
