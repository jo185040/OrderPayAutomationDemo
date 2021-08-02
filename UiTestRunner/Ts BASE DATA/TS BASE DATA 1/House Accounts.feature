Feature: 26 House Accounts

@ houseaccounts

Scenario: 1 Pay with House Account & No Tip
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
# 5 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 6 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 7 Add House Account Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [House Acc]
# 8 Select OK on Dialog
	Given screen state "CurrencyInputDialog~Enter amount","CurrencyInputDialog~$","CurrencyInputDialog~2.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~OK]
# 9 Skip Tip on Dialog
	Given screen state [BaseToolbarButtons~Cancel],"BaseToolbarButtons~Add Tip",[BaseToolbarButtons~Skip],"BaseToolbarButtons~Subtotal $2.00","TipChoice~15%","TipChoice~$0.30","TipChoice~20%","TipChoice~$0.40","TipChoice~25%","TipChoice~$0.50","TipChoice~Custom Tip"
	Then clicked [BaseToolbarButtons~Skip]
# 10 Add House Account 78
	Given screen state "KeyboardEntryDialog~Enter Account Name/Number"
	Then clicked [DialogSeparator~7]
	Then clicked [DialogSeparator~8]
	Then clicked [DialogSeparator~Ok]
# 11 Confirm Yes on Dialog
	Given screen state "ConfirmDialog~Confirm","ConfirmDialog~Found account for TECH \Is this correct?"
	Then clicked [ConfirmDialog~Yes]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~TECH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Pay with House Account & 15% Tip
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
# 5 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 6 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 7 Add House Account Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [House Acc]
# 8 Select OK on Dialog
	Given screen state "CurrencyInputDialog~Enter amount","CurrencyInputDialog~$","CurrencyInputDialog~2.00",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~OK]
# 9 Skip Tip on Dialog
	Given screen state [BaseToolbarButtons~Cancel],"BaseToolbarButtons~Add Tip",[BaseToolbarButtons~Skip],"BaseToolbarButtons~Subtotal $2.00","TipChoice~15%","TipChoice~$0.30","TipChoice~20%","TipChoice~$0.40","TipChoice~25%","TipChoice~$0.50","TipChoice~Custom Tip"
	Then clicked "TipChoice~15%"
# 10 Add House Account 78
	Given screen state "KeyboardEntryDialog~Enter Account Name/Number"
	Then clicked [DialogSeparator~7]
	Then clicked [DialogSeparator~8]
	Then clicked [DialogSeparator~Ok]
# 11 Confirm Yes on Dialog
	Given screen state "ConfirmDialog~Confirm","ConfirmDialog~Found account for TECH \Is this correct?"
	Then clicked [ConfirmDialog~Yes]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~TECH","Tenders~2.00","Tips~TIP","Tips~0.30","Tips~Change","Tips~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
