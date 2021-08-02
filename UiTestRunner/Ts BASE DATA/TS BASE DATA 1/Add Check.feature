Feature: 2 Add Check


Scenario: 1 Add Check
# 1 LogIn_200/Table_1/GuestCount_1 (defined function)
	#This action is later used in many Scenarios as Repeat function
	Given screen state [Login*]
	When clicked [2],[0],[0]
	Then verify presence of "***",[Login]
	And clicked [Login]
	Then verify presence of [FloorPlanScreen~1]
	And clicked [1]
	Then verify presence of "InputDialog~Enter Guest Count"
	And clicked [DialogSeparator~1]
	And clicked [DialogSeparator~OK]
	Then verify absence of "Enter Guest Count"
# 2 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 3 Add Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TableAndChecks~+]
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
	Given screen state "Tenders~Balance Due","Tenders~$2.00","Comps~Sub Total","Comps~2.00"
	Then clicked [Exact]
# 8 Close Check 1
	Given screen state "Tenders~CASH", "Tenders~2.00", "Tenders~Change", "Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 9 Return to Order screen
	Given screen state [Close*]
	Then clicked [Order]
# 10 Exact/Close/LogOut
	#This action is later used in many Scenarios as (Repeat of 2.1.10)
	Given screen state [$]
	Then clicked [$]
	Then verify presence of "Balance Due",[Close*]
	Then clicked [Exact]
	Then verify presence of "$0.00",[Close]
	Then clicked [Close]
	Then verify presence of [FloorPlanScreen~Exit]
	When clicked [FloorPlanScreen~Exit]

Scenario: 2 Repeat Scenario: 1 Add Check 20 times
# 1 LogIn_200/Table_1/GuestCount_1 (defined function) (repeat 2 times of 2.8.23)
	When repeated 2 times LogIn_200/Table_1/GuestCount_1 (defined function)
