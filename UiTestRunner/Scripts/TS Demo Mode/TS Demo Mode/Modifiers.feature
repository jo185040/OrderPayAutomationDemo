Feature: 11 Modifiers


Scenario: 1 Modifier Weight 2
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
#Action: 6 On Ribs Submenu order 1/2 Rack
			Given screen state: 253
			Then clicked [1/2 RACK]
#Action: 7 On Ribs Submenu order 1/2 Rack
			Given screen state: 262
			Then clicked [1/2 RACK]
#Action: 8 On Starch press Baked Potato OK
			Given screen state: 263
			Then clicked [Baked Potato]
#Action: 9 On Soup Mod, select Cup
			Given screen state: 266
			Then clicked [CUP]
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Given screen state: 267
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 267
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 271
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 273
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Modifier Weight 1
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
#Action: 9 Apply HERE Ordermode
			Given screen state: 256
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 256
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 259
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 261
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify Apps submenu items contains exceptional mod group Pizza.
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
#Action: 4 Select Apps Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[APPS]
#Action: 5 Order Quesidilla
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "QUESADILLA"
#Action: 6 Select Quesidilla on Guest Check
			Given screen state: 276
			Then clicked /EntriesBySeat/,"QUESADILLA"
#Action: 7 Modify Quesidilla
			Given screen state: 276
			Then clicked /BottomButtons/,[Modify]
#Action: 8 Add Avacado Modifier on Special Menu
			Given screen state: 277
			Then clicked [ADD\AVOCADO]
#Action: 9 Select OK Button
			Given screen state: 278
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Given screen state: 279
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 279
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 281
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 282
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Forced Modifier
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
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Quick Burger
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Quick Burger"
#Action: 6 Apply HERE Ordermode
			Given screen state: 283
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Given screen state: 283
			Then clicked [$]
#Action: 8 Exact Payment
			Given screen state: 286
			When waited for 0.2 min
			Then clicked [Exact]
#Action: 9 Click Close
			Given screen state: 287
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			#TODO ALOHAP-33136 refil modifiers are disappearing.
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify Weighted Modifiers work with no issue
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
#Action: 6 On Ribs Submenu order 1/2 Rack
			Given screen state: 253
			Then clicked [FULL RACK]
#Action: 7 On Starch press Baked Potato OK
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
			Given screen state: 256
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 259
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 261
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify Tenderlin Wraps item contains exceptional mod group Pizza right after required Starch mod group
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
#Action: 4 Select Apps Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[APPS]
#Action: 5 Order Tenderlin wraps
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "TENDERLN\WRAPS"
#Action: 6 Select Baked Potatoe
			Then verify presence of /RightModifierButtons/,[Baked Potato],[BUFFET],[No Starch]
			Then clicked [Baked Potato]
#Action: 7 Select Tenderlin Wrap
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"TENDERLN WRAPS\ Baked Potato"
#Action: 8 Modify Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /BottomButtons/,[Modify]
#Action: 9 Select Special Button
			Given screen state: 291
			Then clicked [Special]
#Action: 10 On Starch Modgroup, Select Avocado
			Given screen state: 292
			Then clicked [ADD\AVOCADO]
#Action: 11 Verify AVOCADO added, exit mods by "OK"
			Given screen state: 293
			Then clicked [OK]
#Action: 12 Verify prices, order items HERE
			Given screen state: 295
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Given screen state: 295
			Then clicked [$]
#Action: 14 Exact Payment
			Given screen state: 299
			Then clicked [Exact]
#Action: 15 Click Close
			Given screen state: 300
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			#TODO ALOHAP-33136 refill items not working
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Verify price is combined on Porkchop item with Red Beans modifier
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
#Action: 5 Order Pork Chop
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\CHOP"
#Action: 6 On Meat Temp Press OK
			Given screen state: 303
			Then clicked [MEDIUM]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 304
			Then clicked [Red Beans]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 305
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 306
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 306
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 308
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 309
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 8 Verify price is combined on Porkchop item with Black Beans modifier
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
#Action: 5 Order Pork Chop
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\CHOP"
#Action: 6 On Meat Temp Press OK
			Given screen state: 303
			Then clicked [MEDIUM]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 304
			Then clicked [Black Beans]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 311
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 312
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 312
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 314
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 315
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 9 Verify ordering items with mods on panel is working without issue
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
#Action: 4 Select Mod Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Mod Menu\Items]
#Action: 5 Order Special Burger
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Special\Burger"
#Action: 6 Select Rare Temp
			Given screen state: 319
			Then clicked /RightPanelButtons/,[RARE]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 320
			Then clicked /RightPanelButtons/,[BACON]
#Action: 8 Apply HERE Ordermode
			Given screen state: 321
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 321
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 323
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 324
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 10 Verify modifier panel is working on Special burger item (submenu Combos).
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
#Action: 4 Select Mod Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Mod Menu\Items]
#Action: 5 Order Special Burger
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Special\Burger"
#Action: 6 Select Rare Temp
			Given screen state: 319
			Then clicked /RightPanelButtons/,[RARE]
#Action: 7 Select Clear Temp
			Given screen state: 320
			Then clicked /RightPanelButtons/,[Clear\modifiers]
#Action: 8 On Starch press Baked Potato OK
			Given screen state: 319
			Then clicked /RightPanelButtons/,[BACON]
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 325
			Then clicked /RightPanelButtons/,[BACON]
#Action: 10 Apply HERE Ordermode
			Given screen state: 326
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 326
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 328
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 329
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 11 No Modifier Substitution Weight 2
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
#Action: 6 On Ribs Submenu order 1/2 Rack
			Given screen state: 253
			Then clicked [No]
			Then clicked [FULL RACK]
#Action: 7 On Ribs Submenu order 1/2 Rack
			Given screen state: 330
			Then clicked [1/2 RACK]
#Action: 8 On Ribs Submenu order 1/2 Rack
			Given screen state: 331
			Then clicked [1/2 RACK]
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 332
			Then clicked [Baked Potato]
#Action: 10 On Soup Mod, select Cup
			Given screen state: 333
			Then clicked [CUP]
#Action: 11 Apply HERE Ordermode
			Given screen state: 335
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 335
			Then clicked [$]
#Action: 13 Exact Payment
			Given screen state: 336
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 337
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
