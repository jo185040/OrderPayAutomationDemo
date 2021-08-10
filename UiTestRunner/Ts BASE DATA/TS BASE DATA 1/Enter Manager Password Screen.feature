Feature: 13 Enter Manager Password Screen

@ JIT

Scenario: 1 Void: verify JIT screen can be confirmed by Manager emp. number
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
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 6 Void Item
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [BottomButtons~Void]
# 7 Enter Manager Code
	Given screen state "NumpadButtons~Enter manager password"
	When clicked [DialogSeparator~2],[DialogSeparator~0],[DialogSeparator~0]
	And clicked [DialogSeparator~OK]
# 8 Void Item
	Given screen state "ItemSelectionDialog~Select items to void"
	Then clicked (Items~COKE)
	Then clicked [Items~OK]
# 9 Select "Misring"
	Given screen state "SelectEntityDialog~Select Void Reason",[DialogSeparator~TESTING],[DialogSeparator~OVERRING],[DialogSeparator~MISRING],[DialogSeparator~*86*],[DialogSeparator~X],[DialogSeparator~Cancel]
	Then clicked [DialogSeparator~MISRING]
# 10 Select Payment
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Void: verify JIT screen can�t be confirmed by not clocked in Manager
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
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 6 Void Item
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [BottomButtons~Void]
# 7 Add Manager Code
	Given screen state "NumpadButtons~Enter manager password"
	When clicked [DialogSeparator~2],[DialogSeparator~0],[DialogSeparator~2]
	And clicked [DialogSeparator~OK]
# 8 Select "OK"
	Given screen state "MessageDialog~Error","DialogSeparator~The supplied employee must login with a magcard"
	Then clicked [DialogSeparator~OK]
# 9 Select Payment
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 10 Exact Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 11 Click Close
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Comps: verify JIT screen can be confirmed by Manager emp. number
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
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~ENTREES]
# 5 Order BBQ Ribs
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "BBQ\RIBS"
# 6 Select Full Rack on Ribs Submenu
	Given screen state {199}
	Then clicked [FULL RACK]
# 7 Select Baked Potato on Starch Submenu
	Given screen state {200}
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state {201}
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [$]
# 11 Goto Promo Screen
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [TopLeftButtons~Comp]
# 12 Select Manager Comp
	Given screen state [MidLeftButtons~MGR COMP],[MidLeftButtons~OPEN $$],[MidLeftButtons~EMP MEAL]
	Then clicked [MidLeftButtons~MGR COMP]
# 13 Add Manager Password
	Given screen state "NumpadButtons~Enter manager password"
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~OK]
# 14 Select BBQ Ribs on Comp Screen
	Given screen state "ItemSelectionDialog~Select items to comp"
	Then clicked (Items~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP)
# 15 Select OK
	Given screen state "ItemSelectionDialog~Select items to comp"
	Then clicked [Items~OK]
# 16 Select OK
	Given screen state "KeyboardEntryDialog~Enter name"
	Then clicked [DialogSeparator~t], [DialogSeparator~e], [DialogSeparator~s], [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 17 Click Close
	Given screen state "Comps~MGR COMP","Comps~-41.94","Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 18 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Comps: verify JIT screen can’t be confirmed by not clocked in Manager
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
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~ENTREES]
# 5 Order BBQ Ribs
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "BBQ\RIBS"
# 6 Select Full Rack on Ribs Submenu
	Given screen state {199}
	Then clicked [FULL RACK]
# 7 Select Baked Potato on Starch Submenu
	Given screen state {200}
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state {201}
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [$]
# 11 Goto Promo Screen
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [TopLeftButtons~Comp]
# 12 Select Manager Comp
	Given screen state [MidLeftButtons~MGR COMP],[MidLeftButtons~OPEN $$],[MidLeftButtons~EMP MEAL]
	Then clicked [MidLeftButtons~MGR COMP]
# 13 Add Manager Password
	Given screen state "NumpadButtons~Enter manager password"
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~0]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~OK]
# 14 Dismiss Error Message
	Given screen state "DialogSeparator~The supplied employee must login with a magcard"
	Then clicked [DialogSeparator~OK]
# 15 Goto Promo Screen
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [TopLeftButtons~Payment]
# 16 Exact Payment
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [Exact]
# 17 Click Close
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [MidButtons~Close]
# 18 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
