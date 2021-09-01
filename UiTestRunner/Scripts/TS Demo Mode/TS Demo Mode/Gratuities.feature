Feature: 10 Gratuities


Scenario: 1 Add Gratuities
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 Select Full Rack on Ribs Submenu
			Given screen state: 253
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Given screen state: 254
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 255
			Then clicked [CUP]
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 256
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 257
			Then clicked [$]
#Action: 11 Add Gratuity
			Given screen state: 259
			Then clicked /BottomLeftButtons/,[Add Gratuity]
#Action: 12 Press Ok
			Given screen state: 260
			Then clicked /DialogSeparator/,[OK]
#Action: 13 Exact Payment
			Given screen state: 259
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 261
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
