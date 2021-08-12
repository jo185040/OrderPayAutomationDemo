Feature: 28 Split Seat


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
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Add 7Up
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "7 UP"
# 6 Add Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Split Seat]
# 7 Select "7Up"
	Given screen state {101}
	Then clicked "7 UP"
# 8 Add Check
	Given screen state {101}
	Then clicked [Add]
# 9 Add Check
	Given screen state {010}
	Then clicked [Close]
# 10 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~Seat 2","ItemEntries~7 UP","ItemEntries~2.00","Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~4.00","Tenders~Balance Due","Tenders~$4.00"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~Seat 2","ItemEntries~7 UP","ItemEntries~2.00","Comps~Sub Total","Comps~4.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~4.00","Tenders~CASH","Tenders~4.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Select Multiple Items on Split Check
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
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Add 7Up
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "7 UP"
# 6 Add Iced Coffee
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "ICED\COFFEE"
# 7 Add Check
	Given screen state {102}
	Then clicked [TopLeftButtons~Split Seat]
# 8 Select "7Up"
	Given screen state {035}
	Then clicked "7 UP"
	Then clicked "COKE"
# 9 Add Check
	Given screen state {035}
	Then clicked [Add]
# 10 Click Close Button
	Given screen state {008}
	Then clicked [Close]
# 11 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 12 Select $ on Payment Screen
	Given screen state {098}
	Then clicked [$]
# 13 Exact Payment
	#NOTE for Dmitri's setup [Get Mobile Pay Code] is enabled even thought ATG has it off (comes from some where elce)
	Given screen state {099}
	Then clicked [Exact]
# 14 Click Close
	Given screen state {100}
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
