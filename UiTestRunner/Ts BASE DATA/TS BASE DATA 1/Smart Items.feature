Feature: 25 Smart Items

@ Payments

Scenario: 1 Verify smart items work with no issue (Smart Beer submenu)
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
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When swiped up on CenterMenuButtons~
	Then clicked [CenterMenuButtons~Smart Beer]
# 5 Order Pint Miller
	Given screen state [CenterMenuButtons~Smart Beer]
	Then clicked [PINT]
	Then clicked "Miller Lite"
# 6 Order Bottle Miller
	Given screen state [CenterMenuButtons~Smart Beer]
	Then clicked [BOTTLE]
	Then clicked "Miller Lite"
# 7 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~Smart Beer]
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PT MILLER LITE","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PT MILLER LITE","ItemEntries~5.00","ItemEntries~MILLER LITE","ItemEntries~3.00","Comps~Sub Total","Taxes~8.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~8.00","Tenders~Balance Due","Tenders~$8.00"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~PT MILLER LITE","ItemEntries~5.00","ItemEntries~MILLER LITE","ItemEntries~3.00","Comps~Sub Total","Taxes~8.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~8.00","Tenders~CASH","Tenders~8.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
