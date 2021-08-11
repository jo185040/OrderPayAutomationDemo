Feature: 19 Quality


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
	And clicked [DialogSeparator~OK]
	Then verify absence of "Enter Guest Count"
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 6 Select Quality Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Quantity]
# 7 Select Pork Nachos on Quality Screen
	Given screen state "ItemSelectionDialog~Select items for Quantity"
	Then clicked (Items~PORK NACHOS)
	Then clicked [Items~OK]
# 8 Select Qty 3
	Given screen state "InputDialog~Enter quantity"
	Then clicked [DialogSeparator~3]
	Then clicked [DialogSeparator~OK]
# 9 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~3 PORK NACHOS","EntriesBySeat~15.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~3 PORK NACHOS","ItemEntries~15.00","Comps~Sub Total","Comps~17.00","Taxes~Tax","Taxes~0.92","Taxes~Total","Taxes~17.92","Tenders~Balance Due","Tenders~$17.92"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~3 PORK NACHOS","ItemEntries~15.00","Comps~Sub Total","Comps~17.00","Taxes~Tax","Taxes~0.92","Taxes~Total","Taxes~17.92","Tenders~CASH","Tenders~17.92","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
