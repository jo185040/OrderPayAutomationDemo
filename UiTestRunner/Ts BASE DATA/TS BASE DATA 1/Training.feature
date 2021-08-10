Feature: 39 Training

@ OpenItems

Scenario: 1 Open Table as a Training Emp
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [1],[5],[0]
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
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [HERE]
# 7 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [$]
# 8 Exact Payment
	Given screen state "ItemEntries~Table","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~7.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~7.31","Tenders~Balance Due","Tenders~$7.31"
	Then clicked [Exact]
# 9 Click Close
	Given screen state {212}
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
