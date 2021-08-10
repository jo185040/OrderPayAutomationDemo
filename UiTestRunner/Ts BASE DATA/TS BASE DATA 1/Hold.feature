Feature: 22 Hold

#@ Hold
#@ ignore
#@ ignore
#@ignore
#@ ignore
#@ ignore
#@ ignore
#@ ignore
@ ignore

Scenario: 1 Hold Item
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
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Select Coke on Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 6 Add Hold
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When swiped left on BottomButtons~
	Then clicked [BottomButtons~Hold]
# 7 Apply HERE Ordermode
	Given screen state {207}
	Then clicked [HERE]
# 8 Press OK
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~H COKE","EntriesBySeat~2.00"
	Then clicked (Items~COKE)
	Then clicked [Items~OK]
# 9 Select $ Option
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When swiped right on BottomButtons~
	Then clicked [BottomButtons~$]
# 10 Exact Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 11 Click Close
	Given screen state {208}
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
