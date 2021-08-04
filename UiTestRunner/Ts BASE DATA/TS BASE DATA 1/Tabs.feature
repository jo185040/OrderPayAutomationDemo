Feature: 34 Tabs

@ TransferTable

Scenario: 1 Open Tab
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {038}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {038}
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Rename Tab
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {038}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {038}
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Rename Check
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked "TableAndChecks~j1"
# 8 Rename Check to T2
	Given screen state "KeyboardEntryDialog~Rename Tab"
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~Ok]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
