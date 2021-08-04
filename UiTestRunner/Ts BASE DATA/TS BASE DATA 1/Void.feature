Feature: 32 Void

@ TSSmokeTest

Scenario: 1 Verify you can void items with no issues
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
# 5 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 6 Select Coke on Check
	Given screen state {001}
	Then clicked "COKE"
# 7 Void COKE
	Given screen state {001}
	Then clicked [BottomButtons~Void]
# 8 Select COKE on Void Screen
	#TODO Check Screenstate
	Given screen state {019}
	Then clicked (Items~COKE)
# 9 Select OK on Void Screen
	Given screen state {023}
	Then clicked [Items~OK]
# 10 Select Void Reason on Void Screen
	Given screen state "SelectEntityDialog~Select Void Reason",[DialogSeparator~TESTING],[DialogSeparator~OVERRING],[DialogSeparator~MISRING],[DialogSeparator~*86*],[DialogSeparator~X],[DialogSeparator~Cancel]
	Then clicked [DialogSeparator~OVERRING]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE"
	Then clicked [$]
# 12 Select Close on Payment Screen
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify you can clear (delete) unordered an item
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
# 5 Select Coke on Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TableAndChecks~Clear]
# 6 Select OK
	Given screen state "ConfirmDialog~Clear All Unordered Items","ConfirmDialog~Are you sure you want to clear all items which have not been held or ordered?",[ConfirmDialog~Cancel],[ConfirmDialog~OK]
	Then clicked [ConfirmDialog~OK]
# 7 Click Done
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When clicked [TopLeftButtons~Done]

Scenario: 3 Verify JIT screen displays when trying to void item
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [1],[0],[0]
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
# 5 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 6 Void COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Void]
# 7 Enter manager 20 on JIT Screen
	Given screen state "NumpadButtons~Enter manager password"
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 8 Select COKE on Void Screen
	Given screen state "ItemSelectionDialog~Select items to void"
	Then clicked (Items~COKE)
# 9 Select OK on Void Screen
	Given screen state "ItemSelectionDialog~Select items to void"
	Then clicked [Items~OK]
# 10 Select Void Reason on Void Screen
	Given screen state "SelectEntityDialog~Select Void Reason",[DialogSeparator~TESTING],[DialogSeparator~OVERRING],[DialogSeparator~MISRING],[DialogSeparator~*86*],[DialogSeparator~X],[DialogSeparator~Cancel]
	Then clicked [DialogSeparator~OVERRING]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE"
	Then clicked [$]
# 12 Select Close on Payment Screen
	Given screen state "ItemEntries~Table","ItemEntries~COKE","Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
