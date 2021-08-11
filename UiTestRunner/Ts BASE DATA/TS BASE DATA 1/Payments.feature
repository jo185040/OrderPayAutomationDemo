Feature: 15 Payments


Scenario: 1 Delete Cash Payment
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
# 6 Add Miller Lite
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "MILLER\LITE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Exact]
# 10 Select Cash Payment
	Given screen state "Tenders~CASH","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked "Tenders~CASH"
# 11 Delete Cash Payment
	Given screen state "Tenders~CASH","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [BottomRightButtons~Delete]
# 12 Exact Payment
	Given screen state "Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "Tenders~CASH","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify enabled Close button displays when there is a zero balance (Manager)
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
# 4 Select Drinks Sub-menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~DRINKS]
# 5 Add Water
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "WATER"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~WATER","EntriesBySeat~0.00"
	Then clicked [HERE]
# 7 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~WATER","EntriesBySeat~0.00"
	Then clicked [$]
# 8 Click Close
	Given screen state "Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 9 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify you can pay with cash with predefined amount (Server)
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
# 6 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 7 Exact Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [$10]
# 8 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~10.00","Tenders~Change","Tenders~$8.00"
	Then clicked [MidButtons~Close]
# 9 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Verify you can process Euro payment (Manager)
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
# 6 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 7 Select Euro Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Euro]
# 8 Select OK on Dialog Menu
	Given screen state "CurrencyInputDialog~Enter amount in EUR","CurrencyInputDialog~$","CurrencyInputDialog~1.33",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~OK]
# 9 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Euro /1.33","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Verify you can delete Euro payment (Manager)
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
# 6 Add Miller Lite
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "MILLER\LITE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Euro]
# 10 Press OK
	Given screen state "CurrencyInputDialog~Enter amount in EUR","CurrencyInputDialog~$","CurrencyInputDialog~6.87",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~OK]
# 11 Select Cash Payment
	Given screen state "Tenders~Euro /6.87","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked "Tenders~Euro /6.87"
# 12 Delete Cash Payment
	Given screen state "Tenders~Euro /6.87","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [BottomRightButtons~Delete]
# 13 Select Euro Payment
	Given screen state "Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Euro]
# 14 Select OK on Dialog
	Given screen state "CurrencyInputDialog~Enter amount in EUR","CurrencyInputDialog~$","CurrencyInputDialog~6.87",[CurrencyInputDialog~<]
	Then clicked [DialogSeparator~OK]
# 15 Click Close
	Given screen state "Tenders~Euro /6.87","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 6 Verify you cant delete payment without JIT screen approval (Ordertaker)
# 1 Login as OrderTaker 203
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[3]
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
	Given screen state "EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked "PORK\NACHOS"
# 6 Add Miller Lite
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "MILLER\LITE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","ItemEntries~MILLER LITE","ItemEntries~3.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Exact]
# 10 Select Cash Payment
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","ItemEntries~MILLER LITE","ItemEntries~3.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~10.31","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked "Tenders~CASH"
# 11 Delete Cash Payment
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","ItemEntries~MILLER LITE","ItemEntries~3.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~10.31","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [BottomRightButtons~Delete]
# 12 Enter Manager
	Given screen state "NumpadButtons~Enter manager password"
	When clicked [DialogSeparator~2]
	When clicked [DialogSeparator~0]
	When clicked [DialogSeparator~0]
	And clicked [DialogSeparator~OK]
# 13 Exact Payment
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","ItemEntries~MILLER LITE","ItemEntries~3.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~$10.31"
	Then clicked [Exact]
# 14 Click Close
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","ItemEntries~MILLER LITE","ItemEntries~3.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
