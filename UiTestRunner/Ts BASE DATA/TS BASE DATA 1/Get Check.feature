Feature: 18 Get Check


Scenario: 1 Get Table
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
	Then verify absence of "Enter Guest Count""
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 6 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 7 Go to Floorplan
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 8 Click WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 9 Click Get Check
	Given screen state {036}
	Then clicked [TopRightButtons~Get Check]
# 10 Get Check "Table 1"
	Given screen state {105}
	Then clicked [Keyboard~1]
	Then clicked [Keyboard~Ok]
# 11 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~7.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~7.31","Tenders~Balance Due","Tenders~$7.31"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~7.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~7.31","Tenders~CASH","Tenders~7.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Get Tab
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
	Then clicked [btnHideOrShowKeyboard]
	Then verify presence of [EnterTabNameKeyboard~Ok]
	When waited for 0.01 min
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
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 8 Go to Floorplan
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 9 Click WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 10 Click Get Check
	Given screen state {106}
	Then clicked [TopRightButtons~Get Check]
# 11 Click Tab Button
	Given screen state {107}
	Then clicked [TopGetButtons~Get Tab]
# 12 Get Check "Tab 1"
	Given screen state {310}
	Then clicked [Keyboard~j]
	Then clicked [Keyboard~1]
	Then clicked [Keyboard~Ok]
# 13 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 14 Exact Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
