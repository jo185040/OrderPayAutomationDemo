Feature: 37 Quantity Items


Scenario: 1 Quantity
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
	Then verify absence of "Enter Guest Count"
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~ENTREES]
# 5 Select Buffet Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "BUFFET"
# 6 Enter Quantity of llbs
	Given screen state "InputDialog~Enter quantity of llbs (@ 4.00)","InputDialog~0",[InputDialog~<]
	Then clicked [DialogSeparator~7]
	Then clicked [DialogSeparator~5]
	Then clicked [DialogSeparator~OK]
# 7 Enter Quantity of llbs
	Given screen state "CurrencyInputDialog~Enter quantity of llbs (@ 4.00)","CurrencyInputDialog~0.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~7]
	Then clicked [DialogSeparator~5]
	Then clicked [DialogSeparator~OK]
# 8 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BUFFET (0.75 llbs)","EntriesBySeat~3.00"
	Then clicked [HERE]
# 9 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BUFFET (0.75 llbs)","EntriesBySeat~3.00"
	Then clicked [$]
# 10 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~BUFFET (0.75 llbs)","ItemEntries~3.00","Comps~Sub Total","Comps~3.00","Taxes~Tax","Taxes~0.18","Taxes~Total","Taxes~3.18","Tenders~Balance Due","Tenders~$3.18"
	Then clicked [Exact]
# 11 Click Close
	Given screen state {001}
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
