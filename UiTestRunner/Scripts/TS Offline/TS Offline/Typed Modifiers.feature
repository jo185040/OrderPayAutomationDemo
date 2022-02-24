Feature: 42 Typed Modifiers


Scenario: 1 Typed Modifier
#Action: 1 Login as manager 200
			#TODO ALOHAP-35812
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
#Action: 5 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 6 Modify Coke
			# 7 Add Typed Modifier
			Given screen state: 500
			Then clicked [Modify]
			Then clicked /BottomLeftButtons/,[btnKeyboard]
#Action: 7 Add Typed Modifier Message
			Then verify presence of /RightModifierButtons/,[Ice],[Sugar],/CenterCategoryButtons/,[Drink Mods]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 8 Press OK on modifier screen
			Given screen state: 165
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\test","2.00"
			Then clicked [HERE]
#Action: 10 Select Coke
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE\test","2.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE\test","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE\test","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00","Change","$0.00","CASH"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 2 Typed Modifier on Mulitple Modifiers
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 On Ribs Submenu order 1/2 Rack
			Given screen state: 128
			Then clicked [1/2 RACK]
#Action: 7 On Ribs Submenu order 1/2 Rack
			Given screen state: 131
			Then clicked [1/2 RACK]
#Action: 8 On Starch press Baked Potato OK
			Given screen state: 132
			Then clicked [Baked Potato]
#Action: 9 On Soup Mod, select Cup
			Given screen state: 133
			Then clicked [CUP]
#Action: 10 Modify BBQ Rib
			Given screen state: 355
			Then clicked [Modify]
#Action: 11 Modify 1/2 Rack
			Given screen state: 331
			Then clicked /Modifier/,"- 1/2 RACK"
			Then clicked /BottomLeftButtons/,[Modify]
#Action: 12 Add Typed Message on 1/2 Rack
			Given screen state: 332
			Then clicked /BottomLeftButtons/,[btnKeyboard]
			Then clicked /DialogSeparator/,[t],[1],[Ok]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 13 Modify 1/2 Rack 2nd Rack
			Given screen state: 333
			Then clicked /Modifier/,"- 1/2 RACK.2"
			Then clicked /BottomLeftButtons/,[Modify]
#Action: 14 Add Typed Message on 1/2 Rack
			Given screen state: 332
			Then clicked /BottomLeftButtons/,[btnKeyboard]
			Then clicked /DialogSeparator/,[t],[2],[Ok]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 15 Modify Baked Potato
			Given screen state: 334
			Then clicked /Modifier/,"- Baked Potato"
			Then clicked /BottomLeftButtons/,[Modify]
#Action: 16 Add Typed Message on Baked Potato
			Given screen state: 335
			Then clicked /BottomLeftButtons/,[btnKeyboard]
			Then clicked /DialogSeparator/,[t],[3],[Ok]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 17 Modify CUP
			Given screen state: 336
			Then clicked /Modifier/,"- CUP"
			Then clicked /BottomLeftButtons/,[Modify]
#Action: 18 Add Typed Message on CUP
			Given screen state: 337
			Then clicked /BottomLeftButtons/,[btnKeyboard]
			Then clicked /DialogSeparator/,[t],[4],[Ok]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 19 Press OK on Mod Screen
			Given screen state: 164
			Then clicked /BottomLeftButtons/,[OK]
#Action: 20 Apply HERE Ordermode
			Given screen state: 338
			Then clicked [HERE]
#Action: 21 Select $ on Payment Screen
			Given screen state: 338
			Then clicked [$]
#Action: 22 Exact Payment
			Given screen state: 277
			Then clicked [Exact]
#Action: 23 Click Close
			Given screen state: 330
			Then clicked /MidButtons/,[Close]
#Action: 24 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 3 Typed Modifiers on exceptional mod group Pizza.
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
#Action: 4 Select Apps Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[APPS]
#Action: 5 Order Quesidilla
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "QUESADILLA"
#Action: 6 Select Quesidilla on Guest Check
			Given screen state: 518
			Then clicked /EntriesBySeat/,"QUESADILLA"
#Action: 7 Modify Quesidilla
			Given screen state: 518
			Then clicked [Modify]
#Action: 8 Add Avacado Modifier on Special Menu
			Then verify presence of /RightModifierButtons/,[ADD\AVOCADO]
			Then clicked [ADD\AVOCADO]
#Action: 9 Select OK Button
			Given screen state: 137
			Then clicked [OK]
#Action: 10 Modify Quesidilla
			Given screen state: 357
			Then clicked [Modify]
#Action: 11 Add Typed Modifier
			Given screen state: 340
			Then clicked /BottomLeftButtons/,[btnKeyboard]
			Then clicked /DialogSeparator/,[t],[e],[s],[t],[Ok]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 12 Apply HERE Ordermode
			Given screen state: 344
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Given screen state: 344
			Then clicked [$]
#Action: 14 Exact Payment
			Given screen state: 342
			Then clicked [Exact]
#Action: 15 Click Close
			Given screen state: 343
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 4 Type Modifier on Forced Modifier
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Quick Burger
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Quick Burger"
#Action: 6 Apply HERE Ordermode
			Given screen state: 360
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Given screen state: 360
			Then clicked [$]
#Action: 8 Exact Payment
			Then verify presence of /Comps/,"Sub Total","5.99",/Taxes/,"Tax","0.37","Total","6.36",/Tenders/,"Balance Due","$6.36"
			When waited for 0.2 min
			Then clicked [Exact]
#Action: 9 Click Close
			Then verify presence of /Comps/,"Sub Total","5.99",/Taxes/,"Tax","0.37","Total","6.36",/Tenders/,"6.36","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]
