Feature: 1 Tabs Load Test


Scenario: 1 Initialize {T}=a {N}=0
# 1 Login as manager 200
	Given screen state [Login*]
	Then set variable character {T},a
	Then set variable character {N},0

#This is later used in 1.4 Open 100 Tabs
Scenario: 2 Add one Tab with variable name: {N}{T} and increment {T}
# 1 Login as manager 200
	Given screen state [Login*]
	When clicked [2],[0],[0]
	Then verify presence of [Login]
	And clicked [Login]
# 2 Select WWT Screen
	Given screen state [WWT\Screen]
	Then clicked [WWT\Screen]
# 3 Show Keyboard and Select Tab Icon
	Given screen state [btnSetTabEntry]
	Then clicked [btnHideOrShowKeyboard]
	Then clicked [btnSetTabEntry]
# 4 Open Tab {N}{T} and increment {T} for next time;
	Given screen state [EnterTabNameKeyboard~Ok]
	Then clicked [EnterTabNameKeyboard~{N}]
	Then clicked [EnterTabNameKeyboard~{T}]
	Then incremented variable character {T},a,z
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state "Enter Guest Count"
	When clicked [DialogSeparator~1]
	And clicked [OK]
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Order HERE and DONE
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
	Then clicked [Done]

Scenario: 3 Repeat Initialize {T}=a {N}=0
# 1 Initialize {T}=a {N}=0 (repeat of 1.1)
	When repeated  Initialize {T}=a {N}=0

Scenario: 4 Close one Tab with variable name:{N}{T} and increment {T}
# 1 Login as manager 200
	Given screen state [Login*]
	When clicked [2],[0],[0]
	Then verify presence of [Login]
	And clicked [Login]
# 2 Select WWT Screen
	Given screen state [WWT\Screen]
	Then clicked [WWT\Screen]
# 3 Select Tab "{N}{T}" and increment {T} for next time;
	Given screen state "{N}{T}"
	Then clicked "{N}{T}"
	Then incremented variable character {T},a,z
# 4 Select $ on Payment Screen
	Given screen state "EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 5 Exact Payment
	Given screen state "Comps~2.00","Taxes~0.00","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 6 Close Check
	Given screen state "Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 7 Exit from FloorPlan to LogIn
	Given screen state [FloorPlanScreen~Exit]
	When clicked [FloorPlanScreen~Exit]

Scenario: 5 Open 104 Tabs
# 1 Initialize {T}=a {N}=0 (repeat of 1.1)
	When repeated  Initialize {T}=a {N}=0
# 2 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
	When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
	Then incremented variable character {N},0,9
# 3 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
	When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
	Then incremented variable character {N},0,9
# 4 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
	When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
	Then incremented variable character {N},0,9
# 5 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
	When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
	Then incremented variable character {N},0,9

Scenario: 6 Close 104 Tabs
# 1 Initialize {T}=a {N}=0 (repeat of 1.1)
	When repeated  Initialize {T}=a {N}=0
# 2 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
	When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
	Then incremented variable character {N},0,9
# 3 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
	When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
	Then incremented variable character {N},0,9
# 4 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
	When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
	Then incremented variable character {N},0,9
# 5 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
	When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
	Then incremented variable character {N},0,9
