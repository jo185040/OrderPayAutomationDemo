Feature: 35 PLU

@ PLU

Scenario: 1 PLU Items
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
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When swiped up on CenterMenuButtons~
	Then clicked [CenterMenuButtons~RETAIL]
# 5 Order PLU Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "PLU"
# 6 Enter PLU Number
	Given screen state "InputDialog~Enter PLU Number","InputDialog~0",[InputDialog~<]
	Then clicked [DialogSeparator~8]
	Then clicked [DialogSeparator~6]
	Then clicked [DialogSeparator~OK]
# 7 Select "OK" on Message Dialog
	Given screen state "MessageDialog~Not Found","DialogSeparator~PLU/SKU number not found!",[DialogSeparator~X],[DialogSeparator~OK]
	Then clicked [DialogSeparator~OK]
# 8 Exit FloorPlan
	Given screen state [CenterMenuButtons~RETAIL]
	When clicked [TopLeftButtons~Done]
