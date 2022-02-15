Feature: 11 Modifiers


Scenario: 1 Add Item with Modifier Weight 2
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
#Action: 10 Apply HERE Ordermode
			Given screen state: 355
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 355
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /Comps/,"Sub Total","41.89",/Taxes/,"Tax","2.56","Total","44.45",/Tenders/,"Balance Due","$44.45"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Comps/,"Sub Total","41.89",/Taxes/,"Tax","2.56","Total","44.45",/Tenders/,"Balance Due","$44.45","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Add Item with Modifier Weight 1
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order Pork Chop
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\CHOP"
#Action: 6 On Meat Temp Press OK
			Given screen state: 134
			Then clicked [MEDIUM]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 135
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 136
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 356
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 356
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72","CASH","Change"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify Apps submenu items contains exceptional mod group Pizza.
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
#Action: 4 Select Apps Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[APPS]
#Action: 5 Order Quesidilla
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "QUESADILLA"
#Action: 6 Select Quesidilla on Guest Check
			Then verify presence of /EntriesBySeat/,"Seat 1","QUESADILLA","5.00"
			Then clicked /EntriesBySeat/,"QUESADILLA"
#Action: 7 Modify Quesidilla
			Then verify presence of /EntriesBySeat/,"Seat 1","QUESADILLA","5.00"
			Then clicked /BottomButtons/,[Modify]
#Action: 8 Add Avacado Modifier on Special Menu
			Then verify presence of /RightModifierButtons/,[ADD\AVOCADO]
			Then clicked [ADD\AVOCADO]
#Action: 9 Select OK Button
			Given screen state: 137
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Given screen state: 357
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 357
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 358
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 359
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Add Item with Forced Modifier
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
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Add item with Refill Drink
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
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 7 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 8 Add Coke Modifier
			Given screen state: 138
			Then clicked [COKE]
#Action: 9 Press OK on modifier screen
			Given screen state: 139
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Given screen state: 277
			Then clicked [HERE]
#Action: 11 Select Coke
			Given screen state: 277
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 361
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 362
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify refill do not go to other items
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
#Action: 4 Add 7-UP
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 5 Add COKE
			Then verify presence of /EntriesBySeat/,"Seat 1","7 UP","2.00"
			Then clicked "COKE"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 7 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 8 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 9 Add Coke Modifier
			Given screen state: 141
			Then clicked [COKE]
#Action: 10 Press OK on modifier screen
			Given screen state: 142
			Then clicked [OK]
#Action: 11 Apply HERE Ordermode
			Given screen state: 278
			Then clicked [HERE]
#Action: 12 Select Payment
			Given screen state: 278
			Then clicked [$]
#Action: 13 Exact Payment
			Given screen state: 363
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 364
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Verify refill can be deleted
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
#Action: 5 Apply HERE Ordermodejio
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 7 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 8 Add Coke Modifier
			Given screen state: 138
			Then clicked [COKE]
#Action: 9 Press OK on modifier screen
			Given screen state: 139
			Then clicked [OK]
#Action: 10 Select Coke with refill
			Given screen state: 277
			Then clicked "COKE\ COKE"
#Action: 11 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 12 Select Coke with refill
			Given screen state: 279
			Then clicked /Modifier/,"- COKE"
#Action: 13 Delete Modifier Coke
			Given screen state: 279
			Then clicked [Delete Modifier]
#Action: 14 OK Modifier Coke
			Given screen state: 146
			Then clicked [OK]
#Action: 15 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 16 Exact Payment
			Given screen state: 143
			Then clicked [Exact]
#Action: 17 Click Close
			Then verify presence of /Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 8 Verify refilled item can be voided
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
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 7 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 8 Add Coke Modifier
			Given screen state: 138
			Then clicked [COKE]
#Action: 9 Press OK on modifier screen
			Given screen state: 139
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 11 Select Coke on Check
			Given screen state: 277
			Then clicked "COKE\ COKE"
#Action: 12 Void COKE
			Given screen state: 277
			Then clicked /BottomButtons/,[Void]
#Action: 13 Select COKE on Void Screen
			Given screen state: 365
			Then clicked /Items/,^COKE\ COKE^
#Action: 14 Select OK on Void Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,[OK]
#Action: 15 Select Void Reason on Void Screen
			Given screen state: 339
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 16 Select Payment
			Given screen state: 277
			Then clicked [$]
#Action: 17 Click Close
			Then verify presence of /Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 9 Verify you cannot refill a voided item
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
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Select Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /EntriesBySeat/,"COKE"
#Action: 7 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 8 Add Coke Modifier
			Given screen state: 138
			Then clicked [COKE]
#Action: 9 Press OK on modifier screen
			Given screen state: 139
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 11 Select Coke on Check
			Given screen state: 277
			Then clicked "COKE\ COKE"
#Action: 12 Void COKE
			Given screen state: 277
			Then clicked /BottomButtons/,[Void]
#Action: 13 Select COKE on Void Screen
			Given screen state: 365
			Then clicked /Items/,^COKE\ COKE^
#Action: 14 Select OK on Void Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,[OK]
#Action: 15 Select Void Reason on Void Screen
			Given screen state: 339
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 16 Select COKE refill on Guest Check
			Given screen state: 277
			Then clicked "COKE\ COKE"
#Action: 17 Modify Coke
			Given screen state: 277
			Then clicked [Modify]
#Action: 18 Select OK
			Given screen state: 329
			Then clicked [OK]
#Action: 19 Select Payment
			Given screen state: 277
			Then clicked [$]
#Action: 20 Click Close
			Then verify presence of /Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 21 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 10 Verify Weighted Modifiers work with no issue
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 On Ribs Submenu order 1/2 Rack
			Given screen state: 128
			Then clicked [FULL RACK]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 129
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 130
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 352
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 352
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"CASH","44.50","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 11 Verify Tenderlin Wraps item contains exceptional mod group Pizza right after required Starch mod group
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
			Given screen state: 366
			Then clicked /EntriesBySeat/,"TENDERLN WRAPS\ Baked Potato"
#Action: 8 Modify Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /BottomButtons/,[Modify]
#Action: 9 Select Special Button
			Given screen state: 149
			Then clicked [Special]
#Action: 10 On Starch Modgroup, Select Avocado
			Given screen state: 150
			Then clicked [ADD\AVOCADO]
#Action: 11 Verify AVOCADO added, exit mods by "OK"
			Given screen state: 153
			Then clicked [OK]
#Action: 12 Verify prices, order items HERE
			Given screen state: 367
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Given screen state: 367
			Then clicked [$]
#Action: 14 Exact Payment
			Then verify presence of /Comps/,"Sub Total","5.80",/Taxes/,"Tax","0.35","Total","6.15",/Tenders/,"Balance Due","$6.15"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /Comps/,"Sub Total","5.80",/Taxes/,"Tax","0.35","Total","6.15",/Tenders/,"Balance Due","$6.15","CASH","Change"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 12 Verify adding mod with NO mod code is indicated by NO prefix on check
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
#Action: 6 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 7 Add Coke Modifier
			Given screen state: 154
			Then clicked [No]
			Then clicked [Ice]
#Action: 8 Press OK on modifier screen
			Given screen state: 155
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 368
			Then clicked [HERE]
#Action: 10 Select Coke
			Given screen state: 368
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 369
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 370
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 13 Verify adding mod with Extra mod code is indicated by XT prefix on check
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
#Action: 6 Modify Coke
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Modify]
#Action: 7 Add "Extra" Modifier
			Given screen state: 154
			Then clicked [Extra]
			Then clicked [Ice]
#Action: 8 Press OK on modifier screen
			Given screen state: 159
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 371
			Then clicked [HERE]
#Action: 10 Select Payemnts Screen
			Given screen state: 371
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 372
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 373
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 14 Verify price is combined on Porkchop item with Red Beans modifier
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order Pork Chop
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\CHOP"
#Action: 6 On Meat Temp Press OK
			Given screen state: 134
			Then clicked [MEDIUM]
#Action: 7 On Starch press Baked Potato OK
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Red Beans]
#Action: 8 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 374
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 374
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 375
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 376
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 15 Verify price is combined on Porkchop item with Black Beans modifier
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order Pork Chop
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\CHOP"
#Action: 6 On Meat Temp Press OK
			Given screen state: 134
			Then clicked [MEDIUM]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 135
			Then clicked [Black Beans]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 160
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 377
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 377
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 378
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 379
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 16 Add Item with a Typed Modifier
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
			Given screen state: 558
			When clicked [Exit]

Scenario: 17 Verify ordering items with mods on panel is working without issue
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
#Action: 4 Select Mod Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Mod Menu\Items]
#Action: 5 Order Special Burger
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Special\Burger"
#Action: 6 Select Rare Temp
			Given screen state: 166
			Then clicked /RightPanelButtons/,[RARE]
#Action: 7 On Starch press Baked Potato OK
			Given screen state: 167
			Then clicked /RightPanelButtons/,[BACON]
#Action: 8 Apply HERE Ordermode
			Given screen state: 380
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 380
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 381
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 382
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 18 Verify modifier panel is working on Special burger item (submenu Combos).
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
#Action: 4 Select Mod Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Mod Menu\Items]
#Action: 5 Order Special Burger
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Special\Burger"
#Action: 6 Select Rare Temp
			Given screen state: 166
			Then clicked /RightPanelButtons/,[RARE]
#Action: 7 Select Clear Temp
			Given screen state: 167
			Then clicked /RightPanelButtons/,[Clear\modifiers]
#Action: 8 On Starch press Baked Potato OK
			Given screen state: 166
			Then clicked /RightPanelButtons/,[BACON]
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 168
			Then clicked /RightPanelButtons/,[BACON]
#Action: 10 Apply HERE Ordermode
			Given screen state: 383
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 383
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 384
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 385
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 19 No Modifier Substitution Weight 2
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 On Ribs Submenu order 1/2 Rack
			Given screen state: 128
			Then clicked [No]
			Then clicked [FULL RACK]
#Action: 7 On Ribs Submenu order 1/2 Rack
			Given screen state: 234
			Then clicked [1/2 RACK]
#Action: 8 On Ribs Submenu order 1/2 Rack
			Given screen state: 235
			Then clicked [1/2 RACK]
#Action: 9 On Starch press Baked Potato OK
			Given screen state: 236
			Then clicked [Baked Potato]
#Action: 10 On Soup Mod, select Cup
			Given screen state: 237
			Then clicked [CUP]
#Action: 11 Apply HERE Ordermode
			Given screen state: 238
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 238
			Then clicked [$]
#Action: 13 Exact Payment
			Then verify presence of /Comps/,"Sub Total","41.89",/Taxes/,"Tax","2.56","Total","44.45",/Tenders/,"Balance Due","$44.45"
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 239
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
