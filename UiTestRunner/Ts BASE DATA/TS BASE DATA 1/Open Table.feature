Feature: 23 Open Table

@ OpenItems

Scenario: 1 Open Table
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
	Given screen state "KeyboardEntryDialog~Enter description"
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
	Given screen state "ItemEntries~Seat 1","ItemEntries~TEST","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~2.12","Tenders~Balance Due","Tenders~$2.12"
	Then clicked [Exact]
# 11 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~TEST","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.12","Taxes~Total","Taxes~2.12","Tenders~CASH","Tenders~2.12","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
