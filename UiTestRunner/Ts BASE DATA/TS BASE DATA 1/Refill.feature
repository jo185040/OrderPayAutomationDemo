Feature: 21 Refill


Scenario: 1 Refill Drink
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
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 6 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 8 Add Coke Modifier
	Given screen state {138}
	Then clicked [COKE]
# 9 Press OK on modifier screen
	Given screen state {139}
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked [HERE]
# 11 Select Coke
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Repeat Refill Drink
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
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 6 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 8 Add Coke Modifier
	Given screen state {138}
	Then clicked [COKE]
# 9 Press OK on modifier screen
	Given screen state {139}
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked [HERE]
# 11 Repeat Refill Drink
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked [BottomButtons~Repeat]
# 12 Select OK Button
	Given screen state "DialogSeparator~Repeat is not permitted on Refillable Items"
	Then clicked [DialogSeparator~OK]
# 13 Select Payment $
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 14 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
