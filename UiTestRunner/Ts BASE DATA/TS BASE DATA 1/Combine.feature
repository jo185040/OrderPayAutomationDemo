Feature: 3 Combine/Detach Tables

@ CombineTables

Scenario: 1 Combine Tables
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Combine Table 1
	Given screen state {558}
	Then clicked [Combine\Tables]
	Then clicked [1], [2], [3]
	Then clicked [Combine\Tables]
# 3 Floor Plan select Table 1
	Given screen state {575}
	Then clicked [FloorPlanScreen~1^1]
# 4 Enter Guest Count 1
	Given screen state {576}
	When clicked [DialogSeparator~1]
	And clicked [DialogSeparator~OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 7 Add Miller Lite
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "MILLER\LITE"
# 8 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [HERE]
# 9 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 10 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Exact]
# 11 Click Close
	Given screen state "Tenders~CASH","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 12 Detach Table 1
	Given screen state {575}
	Then clicked [Detach\Tables]
	Then clicked [FloorPlanScreen~1^1], [FloorPlanScreen~1^2], [FloorPlanScreen~1^3]
	Then clicked [Detach\Tables]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
