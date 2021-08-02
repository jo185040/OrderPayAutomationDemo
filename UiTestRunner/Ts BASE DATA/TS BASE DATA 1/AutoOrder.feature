#on POS functionality is set Aloha.INI:
Feature: 3 AutoOrder Items

@ TSSmokeTest

Scenario: 1 Add some items, verify they are AUTO ORDERED when going to payments.
# 1 LogIn_200/Table_1/GuestCount_1 (defined function) (repeat of 2.8.23)
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
