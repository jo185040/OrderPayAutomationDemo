Feature: 7 Delete

@ delete

Scenario: 1 Login as manager 200 to Floor Plan
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
	And clicked [DialogSeparator~OK]
	Then verify absence of "Enter Guest Count"
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Select Coke on Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 6 Delete COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Delete]
# 7 Click Done
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When clicked [TopLeftButtons~Done]
