Feature: 20 Open Items


Scenario: 1 Verify you can order an �Open Item� from Retail Menu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN ITEM"
# 6 Enter description "Test"
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Enter Price "2.00"
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 8 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TEST","EntriesBySeat~2.00"
	Then clicked [HERE]
# 9 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TEST","EntriesBySeat~2.00"
	Then clicked [$]
# 10 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~TEST","2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~2.12","Tenders~Balance Due","Tenders~$2.12"
	Then clicked [Exact]
# 11 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~TEST","2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~2.12","Tenders~CASH","Tenders~2.12","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify you can order "Open Item Price" from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN ITEM PRICE"
# 6 Enter Price "2.00"
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM PRICE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM PRICE","EntriesBySeat~2.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~OPEN ITEM PRICE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~2.12","Tenders~Balance Due","Tenders~$2.12"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~OPEN ITEM PRICE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~2.12","Tenders~Balance Due","Tenders~$2.12"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify you can order "Open Item Des" from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN ITEM DES"
# 6 Enter Price "2.00"
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TEST","EntriesBySeat~10.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TEST","EntriesBySeat~10.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~Balance Due","Tenders~$10.61"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~CASH","Tenders~10.61","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Verify you can order "Open Item MOD" with Open Mod Modifier from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN ITEM MOD"
# 6 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 8 Order Open Item on Modifier
	Given screen state [CenterCategoryButtons~Open Mods],[RightModifierButtons~OPEN ITEM],[RightModifierButtons~OPEN ITEM PRICE],[RightModifierButtons~OPEN ITEM DES]
	Then clicked [RightModifierButtons~OPEN ITEM]
# 9 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 10 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 11 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM MOD\ TEST","EntriesBySeat~2.00\2.00"
	Then clicked [HERE]
# 12 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM MOD\ TEST","EntriesBySeat~2.00\2.00"
	Then clicked [$]
# 13 Exact Payment
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~4.12","Tenders~Balance Due","Tenders~$4.12"
	Then clicked [Exact]
# 14 Click Close
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~4.12","Tenders~CASH","Tenders~4.12","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Verify you can order "Open Item MOD" with Open Mod Price Modifier from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN ITEM MOD"
# 6 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 8 Order Open Item on Modifier
	Given screen state [CenterCategoryButtons~Open Mods],[RightModifierButtons~OPEN ITEM],[RightModifierButtons~OPEN ITEM PRICE],[RightModifierButtons~OPEN ITEM DES]
	Then clicked [RightModifierButtons~OPEN ITEM PRICE]
# 9 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM MOD\ OPEN ITEM PRICE","EntriesBySeat~2.00\2.00"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM MOD\ OPEN ITEM PRICE","EntriesBySeat~2.00\2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~4.12","Tenders~Balance Due","Tenders~$4.12"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~4.12","Tenders~CASH","Tenders~4.12","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 6 Verify you can order "Open Item MOD" with Open Mod Des Modifier from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN ITEM MOD"
# 6 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 8 Order Open Item on Modifier
	Given screen state [CenterCategoryButtons~Open Mods],[RightModifierButtons~OPEN ITEM],[RightModifierButtons~OPEN ITEM PRICE],[RightModifierButtons~OPEN ITEM DES]
	Then clicked [RightModifierButtons~OPEN ITEM DES]
# 9 Enter "Test"
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM MOD\ TEST","EntriesBySeat~2.00\10.00"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN ITEM MOD\ TEST","EntriesBySeat~2.00\10.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~12.61","Tenders~Balance Due","Tenders~$12.61"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~12.61","Tenders~CASH","Tenders~12.61","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 7 Verify you can order "Open Price MOD" with Open Mod Modifier from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN PRICE MOD"
# 6 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 7 Order Open Item on Modifier
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD","EntriesBySeat~0.00"
	Then clicked [RightModifierButtons~OPEN ITEM]
# 8 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 9 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD\ TEST","EntriesBySeat~2.00\2.00"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD\ TEST","EntriesBySeat~2.00\2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.24","Taxes~Total","Taxes~4.24","Tenders~Balance Due","Tenders~$4.24"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.24","Taxes~Total","Taxes~4.24","Tenders~CASH","Tenders~4.24","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 8 Verify you can order "Open Price MOD" with Open Mod Price from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN PRICE MOD"
# 6 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 7 Order Open Item on Modifier
	Given screen state {202}
	Then clicked [RightModifierButtons~OPEN ITEM PRICE]
# 8 Enter "2.00" on description
	Given screen state {203}
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD\ OPEN ITEM PRICE","2.00\2.00"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD\ OPEN ITEM PRICE","EntriesBySeat~2.00\2.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.24","Taxes~Total","Taxes~4.24","Tenders~Balance Due","Tenders~$4.24"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.24","Taxes~Total","Taxes~4.24","Tenders~CASH","Tenders~4.24","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 9 Verify you can order "Open Price MOD" with Open Mod Des from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN PRICE MOD"
# 6 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 7 Order Open Item on Modifier
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD","EntriesBySeat~0.00"
	Then clicked [RightModifierButtons~OPEN ITEM DES]
# 8 Enter "Test"
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD\ TEST","EntriesBySeat~2.00\10.00"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN PRICE MOD\ TEST","EntriesBySeat~2.00\10.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.73","Tenders~Balance Due","Tenders~$12.73"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.73","Tenders~CASH","Tenders~12.73","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 10 Verify you can order "Open Description MOD" with Open Mod Modifier from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN DESCR MOD"
# 6 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Order Open Item on Modifier
	Given screen state {205}
	Then clicked [RightModifierButtons~OPEN ITEM]
# 8 Enter "Test" on description
	Given screen state {206}
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 9 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN DESCR MOD\ TEST","EntriesBySeat~10.00\2.00"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN DESCR MOD\ TEST","EntriesBySeat~10.00\2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.73","Tenders~Balance Due","Tenders~$12.73"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.73","Tenders~CASH","Tenders~12.73","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 11 Verify you can order "Open Description MOD" with Open Mod Price from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN DESCR MOD"
# 6 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Order Open Item on Modifier
	Given screen state {205}
	Then clicked [RightModifierButtons~OPEN ITEM PRICE]
# 8 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN DESCR MOD\ OPEN ITEM PRICE","EntriesBySeat~10.00\2.00"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN DESCR MOD\ OPEN ITEM PRICE","EntriesBySeat~10.00\2.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~OPEN DESCR MOD\ OPEN ITEM PRICE","ItemEntries~10.00\2.00","Comps~Sub Total","Comps~12.00","Taxes~0.73","Taxes~Total","Taxes~12.73","Tenders~Balance Due","Tenders~$12.73"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~OPEN DESCR MOD\ OPEN ITEM PRICE","ItemEntries~10.00\2.00","Comps~Sub Total","Comps~12.00","Taxes~0.73","Taxes~Total","Taxes~12.73","Tenders~CASH","Tenders~12.73","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 12 Verify you can order "Open Description MOD" with Open Mod Des from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN DESCR MOD"
# 6 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Order Open Item on Modifier
	Given screen state {205}
	Then clicked [RightModifierButtons~OPEN ITEM DES]
# 8 Enter "Test"
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN DESCR MOD\ TEST","EntriesBySeat~10.00\10.00"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~OPEN DESCR MOD\ TEST","EntriesBySeat~10.00\10.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~OPEN DESCR MOD\ TEST","ItemEntries~10.00\10.00","Comps~Sub Total","Comps~20.00","Taxes~Tax","Taxes~1.22","Taxes~Total","Taxes~21.22","Tenders~Balance Due","Tenders~$21.22"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~OPEN DESCR MOD\ TEST","ItemEntries~10.00\10.00","Comps~Sub Total","Comps~20.00","Taxes~Tax","Taxes~1.22","Taxes~Total","Taxes~21.22","Tenders~CASH","Tenders~21.22","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 13 Verify you can order "Open Item MOD" with Open Mod Modifier from Retail Submenu
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
# 5 Order Open Item
	Given screen state [CenterMenuButtons~RETAIL]
	Then clicked "OPEN FORCED MOD"
# 6 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 7 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 8 Enter "Test" on description
	Given screen state "KeyboardEntryDialog~Enter description"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~y]
	Then clicked [DialogSeparator~Ok]
# 9 Enter "2.00" on description
	Given screen state "CurrencyInputDialog~Enter price","CurrencyInputDialog~$","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TEST\ TY","EntriesBySeat~2.00\0.20"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TEST\ TY","EntriesBySeat~2.00\0.20"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~TEST\ TY","ItemEntries~2.00\0.20","Comps~Sub Total","Comps~2.20","Taxes~Tax","Taxes~0.01","Taxes~Total","Taxes~2.21","Tenders~Balance Due","Tenders~$2.21"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~TEST\ TY","ItemEntries~2.00\0.20","Comps~Sub Total","Comps~2.20","Taxes~Tax","Taxes~0.01","Taxes~Total","Taxes~2.21","Tenders~Balance Due","Tenders~2.21","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
