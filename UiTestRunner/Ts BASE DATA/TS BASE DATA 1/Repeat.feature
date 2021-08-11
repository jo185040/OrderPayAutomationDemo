Feature: 23 Repeat


Scenario: 1 Verify Repeat works on unordered items
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
# 6 Repeat Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Repeat]
# 7 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~2 PORK NACHOS","EntriesBySeat~10.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~2 PORK NACHOS","ItemEntries~10.00","Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~12.61","Tenders~Balance Due","Tenders~$12.61"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~2 PORK NACHOS","ItemEntries~10.00","Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~12.61","Tenders~CASH","Tenders~12.61","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify Repeat works on ordered items
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
# 6 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 7 Repeat Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Repeat]
# 8 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 9 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~2 PORK NACHOS","EntriesBySeat~10.00"
	Then clicked [$]
# 10 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~2 PORK NACHOS","ItemEntries~10.00","Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~12.61","Tenders~Balance Due","Tenders~$12.61"
	Then clicked [Exact]
# 11 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~2 PORK NACHOS","ItemEntries~10.00","Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~12.61","Tenders~CASH","Tenders~12.61","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify Repeat works on items with modifiers
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
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~ENTREES]
# 5 Order BBQ Ribs
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "BBQ\RIBS"
# 6 On Ribs Submenu order 1/2 Rack
	Given screen state [RightModifierButtons~1/2 RACK]
	Then clicked [1/2 RACK]
# 7 On Ribs Submenu order 1/2 Rack
	Given screen state [RightModifierButtons~1/2 RACK]
	Then clicked [1/2 RACK]
# 8 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 9 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 10 Repeat Item
	Given screen state {108}
	Then clicked [BottomButtons~Repeat]
# 11 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 12 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~2 BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","EntriesBySeat~83.78"
	Then clicked [$]
# 13 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~2 BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","ItemEntries~83.78","Comps~Sub Total","Comps~83.78","Taxes~Tax","Taxes~5.11","Taxes~Total","Taxes~88.89","Tenders~Balance Due","Tenders~$88.89"
	Then clicked [Exact]
# 14 Click Close
	Given screen state "ItemEntries~2 BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","ItemEntries~83.78","Comps~Sub Total","Comps~83.78","Taxes~Tax","Taxes~5.11","Taxes~Total","Taxes~88.89","Tenders~CASH","Tenders~88.89","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Verify Repeat works on Smart Select items
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
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When swiped up on CenterMenuButtons~
	Then clicked [CenterMenuButtons~Smart Beer]
# 5 Order Pint Miller
	Given screen state [CenterMenuButtons~BEER]
	Then clicked [PINT]
	Then clicked "Miller Lite"
# 6 Repeat Item
	Given screen state [CenterMenuButtons~BEER]
	Then clicked [BottomButtons~Repeat]
# 7 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~BEER]
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~2 PT MILLER LITE","EntriesBySeat~10.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~2 PT MILLER LITE","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~10.00","Tenders~Balance Due","Tenders~$10.00"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~2 PT MILLER LITE","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~10.00","Tenders~CASH","Tenders~10.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Verify voided items cannot be repeated
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
# 6 Void COKE
	Given screen state {164}
	Then clicked [BottomButtons~Void]
# 7 Select COKE on Void Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked (Items~COKE)
# 8 Select OK on Void Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Items~OK]
# 9 Select Void Reason on Void Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [DialogSeparator~OVERRING]
# 10 Repeat Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Repeat]
# 11 Select OK Button
	Given screen state "DialogSeparator~Repeat is not permitted on Refillable Items"
	Then clicked [DialogSeparator~OK]
# 12 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE"
	Then clicked [$]
# 13 Select Close on Payment Screen
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
