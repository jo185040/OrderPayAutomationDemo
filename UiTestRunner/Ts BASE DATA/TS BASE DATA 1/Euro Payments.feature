Feature: 8 Euro Payments

@ Payments @TSSmokeTest

Scenario: 1 Login as manager 200 to Floor Plan
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
# 4 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 5 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [HERE]
# 6 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [$]
# 7 Euro Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31"
	Then clicked [MidLeftButtons~Euro]
# 8 Select OK
	Given screen state "CurrencyInputDialog~Enter amount in EUR","CurrencyInputDialog~$","CurrencyInputDialog~3.54",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~OK]
# 9 Click Close
	Given screen state "Tenders~Euro /3.54","Tenders~5.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
