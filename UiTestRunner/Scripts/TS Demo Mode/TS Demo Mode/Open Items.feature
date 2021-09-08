Feature: 20 Open Items


Scenario: 1 Verify you can order an �Open Item� from Retail Menu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM"
#Action: 6 Enter description "Test"
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Enter Price "2.00"
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Apply HERE Ordermode
			Given screen state: 473
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 473
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 474
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 475
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			#TODO ALOHAP-33147
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify you can order "Open Item Price" from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM PRICE"
#Action: 6 Enter Price "2.00"
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Apply HERE Ordermode
			Given screen state: 518
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Given screen state: 518
			Then clicked [$]
#Action: 9 Exact Payment
			Given screen state: 519
			Then clicked [Exact]
#Action: 10 Click Close
			Given screen state: 520
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you can cancel "Open Item Price" from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM PRICE"
#Action: 6 Canel Modifier Screen
			Given screen state: 515
			Then clicked /DialogSeparator/,[X]
#Action: 7 Click Done
			Given screen state: 516
			Then clicked /TopLeftButtons/,[Done]

Scenario: 4 Verify you can order "Open Item Des" from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM DES"
#Action: 6 Enter Price "2.00"
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Apply HERE Ordermode
			Given screen state: 521
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Given screen state: 521
			Then clicked [$]
#Action: 9 Click Close
			Given screen state: 522
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify you can order "Open Item MOD" with Open Mod Modifier from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM MOD"
#Action: 6 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Order Open Item on Modifier
			Then verify presence of /CenterCategoryButtons/,[Open Mods],/RightModifierButtons/,[OPEN ITEM],[OPEN ITEM PRICE],[OPEN ITEM DES]
			Then clicked /RightModifierButtons/,[OPEN ITEM]
#Action: 9 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 10 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 11 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN ITEM MOD\ TEST","2.00\2.00"
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN ITEM MOD\ TEST","2.00\2.00"
			Then clicked [$]
#Action: 13 Exact Payment
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.12","Total","4.12",/Tenders/,"Balance Due","$4.12"
			Then clicked [Exact]
#Action: 14 Click Close
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.12","Total","4.12",/Tenders/,"CASH","4.12","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify you can order "Open Item MOD" with Open Mod Price Modifier from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM MOD"
#Action: 6 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Order Open Item on Modifier
			Then verify presence of /CenterCategoryButtons/,[Open Mods],/RightModifierButtons/,[OPEN ITEM],[OPEN ITEM PRICE],[OPEN ITEM DES]
			Then clicked /RightModifierButtons/,[OPEN ITEM PRICE]
#Action: 9 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN ITEM MOD\ OPEN ITEM PRICE","2.00\2.00"
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN ITEM MOD\ OPEN ITEM PRICE","2.00\2.00"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.12","Total","4.12",/Tenders/,"Balance Due","$4.12"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.12","Total","4.12",/Tenders/,"CASH","4.12","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Verify you can order "Open Item MOD" with Open Mod Des Modifier from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN ITEM MOD"
#Action: 6 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Order Open Item on Modifier
			Then verify presence of /CenterCategoryButtons/,[Open Mods],/RightModifierButtons/,[OPEN ITEM],[OPEN ITEM PRICE],[OPEN ITEM DES]
			Then clicked /RightModifierButtons/,[OPEN ITEM DES]
#Action: 9 Enter "Test"
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN ITEM MOD\ TEST","2.00\10.00"
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN ITEM MOD\ TEST","2.00\10.00"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.61","Total","12.61",/Tenders/,"Balance Due","$12.61"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.61","Total","12.61",/Tenders/,"CASH","12.61","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 8 Verify you can order "Open Price MOD" with Open Mod Modifier from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN PRICE MOD"
#Action: 6 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Order Open Item on Modifier
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN PRICE MOD","0.00"
			Then clicked /RightModifierButtons/,[OPEN ITEM]
#Action: 8 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 9 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN PRICE MOD\ TEST","2.00\2.00"
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN PRICE MOD\ TEST","2.00\2.00"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.24","Total","4.24",/Tenders/,"Balance Due","$4.24"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.24","Total","4.24",/Tenders/,"CASH","4.24","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 9 Verify you can order "Open Price MOD" with Open Mod Price from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN PRICE MOD"
#Action: 6 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Order Open Item on Modifier
			Given screen state: 202
			Then clicked /RightModifierButtons/,[OPEN ITEM PRICE]
#Action: 8 Enter "2.00" on description
			Given screen state: 203
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Apply HERE Ordermode
			Then verify presence of "2.00\2.00",/EntriesBySeat/,"Seat 1","OPEN PRICE MOD\ OPEN ITEM PRICE"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN PRICE MOD\ OPEN ITEM PRICE","2.00\2.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.24","Total","4.24",/Tenders/,"Balance Due","$4.24"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","4.00",/Taxes/,"Tax","0.24","Total","4.24",/Tenders/,"CASH","4.24","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 10 Verify you can order "Open Price MOD" with Open Mod Des from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN PRICE MOD"
#Action: 6 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Order Open Item on Modifier
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN PRICE MOD","0.00"
			Then clicked /RightModifierButtons/,[OPEN ITEM DES]
#Action: 8 Enter "Test"
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN PRICE MOD\ TEST","2.00\10.00"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN PRICE MOD\ TEST","2.00\10.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.73","Total","12.73",/Tenders/,"Balance Due","$12.73"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.73","Total","12.73",/Tenders/,"CASH","12.73","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 11 Verify you can order "Open Description MOD" with Open Mod Modifier from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN DESCR MOD"
#Action: 6 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Order Open Item on Modifier
			Given screen state: 205
			Then clicked /RightModifierButtons/,[OPEN ITEM]
#Action: 8 Enter "Test" on description
			Given screen state: 206
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 9 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN DESCR MOD\ TEST","10.00\2.00"
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN DESCR MOD\ TEST","10.00\2.00"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.73","Total","12.73",/Tenders/,"Balance Due","$12.73"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.73","Total","12.73",/Tenders/,"CASH","12.73","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 12 Verify you can order "Open Description MOD" with Open Mod Price from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN DESCR MOD"
#Action: 6 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Order Open Item on Modifier
			Given screen state: 205
			Then clicked /RightModifierButtons/,[OPEN ITEM PRICE]
#Action: 8 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN DESCR MOD\ OPEN ITEM PRICE","10.00\2.00"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN DESCR MOD\ OPEN ITEM PRICE","10.00\2.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","OPEN DESCR MOD\ OPEN ITEM PRICE","10.00\2.00",/Comps/,"Sub Total","12.00",/Taxes/,"0.73","Total","12.73",/Tenders/,"Balance Due","$12.73"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","OPEN DESCR MOD\ OPEN ITEM PRICE","10.00\2.00",/Comps/,"Sub Total","12.00",/Taxes/,"0.73","Total","12.73",/Tenders/,"CASH","12.73","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 13 Verify you can order "Open Description MOD" with Open Mod Des from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN DESCR MOD"
#Action: 6 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Order Open Item on Modifier
			Given screen state: 205
			Then clicked /RightModifierButtons/,[OPEN ITEM DES]
#Action: 8 Enter "Test"
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN DESCR MOD\ TEST","10.00\10.00"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","OPEN DESCR MOD\ TEST","10.00\10.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","OPEN DESCR MOD\ TEST","10.00\10.00",/Comps/,"Sub Total","20.00",/Taxes/,"Tax","1.22","Total","21.22",/Tenders/,"Balance Due","$21.22"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","OPEN DESCR MOD\ TEST","10.00\10.00",/Comps/,"Sub Total","20.00",/Taxes/,"Tax","1.22","Total","21.22",/Tenders/,"CASH","21.22","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 14 Verify you can order "Open Item MOD" with Open Mod Modifier from Retail Submenu
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order Open Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "OPEN FORCED MOD"
#Action: 6 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 7 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Enter "Test" on description
			Then verify presence of /KeyboardEntryDialog/,"Enter description"
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[y]
			Then clicked /DialogSeparator/,[Ok]
#Action: 9 Enter "2.00" on description
			Then verify presence of /CurrencyInputDialog/,"Enter price","$","0.00",[<]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","TEST\ TY","2.00\0.20"
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","TEST\ TY","2.00\0.20"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","TEST\ TY","2.00\0.20",/Comps/,"Sub Total","2.20",/Taxes/,"Tax","0.01","Total","2.21",/Tenders/,"Balance Due","$2.21"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","TEST\ TY","2.00\0.20",/Comps/,"Sub Total","2.20",/Taxes/,"Tax","0.01","Total","2.21",/Tenders/,"Balance Due","2.21","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
