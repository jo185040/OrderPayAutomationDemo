#on POS functionality is set Aloha.INI:
Feature: 7 AutoOrder Items

@ TSSmokeTest

Scenario: 1 Auto Order Items
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
# 7 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 8 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Exact]
# 9 Click Close
	Given screen state "Tenders~CASH","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Add some items, verify they are AUTO ORDERED when going to payments.
@ignore
# 1 LogIn_200/Table_1/GuestCount_1 (defined function) (repeat of 3.9.30)
	When repeated LogIn_200/Table_1/GuestCount_1 (defined function)
# 2 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 3 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 4 Add Miller Lite
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "MILLER\LITE"
# 5 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 6 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Exact]
# 7 Click Close
	Given screen state "Tenders~CASH","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 8 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
