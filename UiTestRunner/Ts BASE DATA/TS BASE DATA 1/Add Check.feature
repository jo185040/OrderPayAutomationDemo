Feature: 3 Add Check


Scenario: 1 Add Check
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
# 5 Add Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TableAndChecks~+]
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 9 Exact Payment
	Given screen state "Tenders~Balance Due","Tenders~$2.00","Comps~Sub Total","Comps~2.00"
	Then clicked [Exact]
# 10 Close Check 1
	Given screen state "Tenders~CASH", "Tenders~2.00", "Tenders~Change", "Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exact Payment
	Given screen state "Tenders~Balance Due","Tenders~$2.00","Comps~Sub Total","Comps~2.00"
	Then clicked [Exact]
# 12 Close Check 2
	Given screen state "Tenders~CASH", "Tenders~2.00", "Tenders~Change", "Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
