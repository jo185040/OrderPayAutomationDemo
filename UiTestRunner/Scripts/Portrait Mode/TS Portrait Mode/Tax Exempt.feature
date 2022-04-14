Feature: 29 Tax Exempt


Scenario: 1 Add Tax Exempt
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 Select Full Rack on Ribs Submenu
			Then verify presence of /RightModifierButtons/,[1/2 RACK]
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Then verify presence of /RightModifierButtons/,[Black Beans]
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 352
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 352
			Then clicked [$]
#Action: 11 Add Tax Exempt
			Given screen state: 484
			Then clicked /BottomLeftButtons/,[Tax Exempt]
#Action: 12 Press Ok
			Given screen state: 485
			Then clicked /DialogSeparator/,[T],[E],[S],[T]
			Then clicked /DialogSeparator/,[Ok]
#Action: 13 Exact Payment
			Given screen state: 486
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 209
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 2 Remove Tax Exempt
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 Select Full Rack on Ribs Submenu
			Then verify presence of /RightModifierButtons/,[1/2 RACK]
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Then verify presence of /RightModifierButtons/,[Black Beans]
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 352
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 352
			Then clicked [$]
#Action: 11 Add Tax Exempt
			Given screen state: 484
			Then clicked /BottomLeftButtons/,[Tax Exempt]
#Action: 12 Press Ok
			Then verify presence of /KeyboardEntryDialog/,"Enter Tax Exempt Number"
			Then clicked /DialogSeparator/,[T],[E],[S],[T]
			Then clicked /DialogSeparator/,[Ok]
#Action: 13 Select Tax Exempt on Check
			Given screen state: 486
			Then clicked /Taxes/,"Tax Exempt TEST"
#Action: 14 Remove Tax Exempt
			Given screen state: 486
			Then clicked /BottomRightButtons/,[Delete]
#Action: 15 Exact Payment
			Given screen state: 484
			Then clicked [Exact]
#Action: 16 Click Close
			Given screen state: 210
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
