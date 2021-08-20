Feature: 1 Tabs Load Test


Scenario: 1 Initialize {T}=a {N}=0
#Action: 1 Login as manager 200
			#This is later used in 1.4 Open 100 Tabs
			Then verify presence of [Login*]
			Then set variable character {T},a
			Then set variable character {N},0

Scenario: 2 Add one Tab with variable name: {N}{T} and increment {T}
#Action: 1 Login as manager 200
			Then verify presence of [Login*]
			When clicked [2],[0],[0]
			Then verify presence of [Login]
			And clicked [Login]
#Action: 2 Select WWT Screen
			Then verify presence of [WWT\Screen]
			Then clicked [WWT\Screen]
#Action: 3 Show Keyboard and Select Tab Icon
			Then verify presence of [btnSetTabEntry]
			Then clicked [btnHideOrShowKeyboard]
			Then clicked [btnSetTabEntry]
#Action: 4 Open Tab {N}{T} and increment {T} for next time;
			Then verify presence of /EnterTabNameKeyboard/,[Ok]
			Then clicked /EnterTabNameKeyboard/,[{N}]
			Then clicked /EnterTabNameKeyboard/,[{T}]
			Then incremented variable character {T},a,z
			Then clicked /EnterTabNameKeyboard/,[Ok]
#Action: 5 Enter Guest Count 1
			Then verify presence of "Enter Guest Count"
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
#Action: 6 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 7 Order HERE and DONE
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
			Then clicked [Done]

Scenario: 3 Repeat Initialize {T}=a {N}=0
#Action: 1 Initialize {T}=a {N}=0 (repeat of 1.1)
			When repeated  Initialize {T}=a {N}=0

Scenario: 4 Close one Tab with variable name:{N}{T} and increment {T}
#Action: 1 Login as manager 200
			Then verify presence of [Login*]
			When clicked [2],[0],[0]
			Then verify presence of [Login]
			And clicked [Login]
#Action: 2 Select WWT Screen
			Then verify presence of [WWT\Screen]
			Then clicked [WWT\Screen]
#Action: 3 Select Tab "{N}{T}" and increment {T} for next time;
			Then verify presence of "{N}{T}"
			Then clicked "{N}{T}"
			Then incremented variable character {T},a,z
#Action: 4 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"COKE","2.00"
			Then clicked [$]
#Action: 5 Exact Payment
			Then verify presence of /Comps/,"2.00",/Taxes/,"0.00","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 6 Close Check
			Then verify presence of /Tenders/,"$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 7 Exit from FloorPlan to LogIn
			Then verify presence of /FloorPlanScreen/,[Exit]
			When clicked /FloorPlanScreen/,[Exit]

Scenario: 5 Open 104 Tabs
#Action: 1 Initialize {T}=a {N}=0 (repeat of 1.1)
			When repeated  Initialize {T}=a {N}=0
#Action: 2 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
			When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
			Then incremented variable character {N},0,9
#Action: 3 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
			When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
			Then incremented variable character {N},0,9
#Action: 4 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
			When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
			Then incremented variable character {N},0,9
#Action: 5 Add one Tab with variable name: {N}{T} and increment {T} (repeat 26 times of 1.2)
			When repeated 26 times Add one Tab with variable name: {N}{T} and increment {T}
			Then incremented variable character {N},0,9

Scenario: 6 Close 104 Tabs
#Action: 1 Initialize {T}=a {N}=0 (repeat of 1.1)
			When repeated  Initialize {T}=a {N}=0
#Action: 2 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
			When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
			Then incremented variable character {N},0,9
#Action: 3 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
			When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
			Then incremented variable character {N},0,9
#Action: 4 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
			When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
			Then incremented variable character {N},0,9
#Action: 5 Close one Tab with variable name:{N}{T} and increment {T} (repeat 26 times of 1.4)
			When repeated 26 times Close one Tab with variable name:{N}{T} and increment {T}
			Then incremented variable character {N},0,9
