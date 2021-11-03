Feature: 1 Tabs Load Test


Scenario: 1 Initialize {T}=a {N}=0
#Action: 1 Initialize {T}=a {N}=0
			Then set variable character {T},a
			Then set variable character {N},0

Scenario: 2 LogIn, Add Tab named {N}{T}, Iincrement {T}
#Action: 1 Login as manager 200
			Then verify presence of [Login*]
			When clicked [2],[0],[0]
			Then verify presence of [Login]
			And clicked [Login]
#Action: 2 Select WWT Screen
			Then verify presence of [WWT\Screen]
			Then clicked [WWT\Screen]
#Action: 3 Show Keyboard and Select Tab Icon
			Then verify presence of [New Tab]
			Then clicked [New Tab]
#Action: 4 Open Tab {N}{T} and increment {T} for next time;
			Then verify presence of "Enter Tab Name"
			Then clicked /DialogSeparator/,[{N}]
			Then clicked /DialogSeparator/,[{T}]
			Then incremented variable character {T},a,z
			Then clicked /DialogSeparator/,[Ok]
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

Scenario: 4 LogIn, Close Tab named:{N}{T}, Iincrement {T}
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
#Action: 2 LogIn, Add Tab named {N}{T}, Iincrement {T} (repeat 26 times of 1.2)
			When repeated 26 times  LogIn, Add Tab named {N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9
#Action: 3 LogIn, Add Tab named {N}{T}, Iincrement {T} (repeat 26 times of 1.2)
			When repeated 26 times  LogIn, Add Tab named {N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9
#Action: 4 LogIn, Add Tab named {N}{T}, Iincrement {T} (repeat 26 times of 1.2)
			When repeated 26 times  LogIn, Add Tab named {N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9
#Action: 5 LogIn, Add Tab named {N}{T}, Iincrement {T} (repeat 26 times of 1.2)
			When repeated 26 times  LogIn, Add Tab named {N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9

Scenario: 6 Close 104 Tabs
#Action: 1 Initialize {T}=a {N}=0 (repeat of 1.1)
			When repeated  Initialize {T}=a {N}=0
#Action: 2 LogIn, Close Tab named:{N}{T}, Iincrement {T} (repeat of 1.4)
			When repeated LogIn, Close Tab named:{N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9
#Action: 3 LogIn, Close Tab named:{N}{T}, Iincrement {T} (repeat of 1.4)
			When repeated LogIn, Close Tab named:{N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9
#Action: 4 LogIn, Close Tab named:{N}{T}, Iincrement {T} (repeat of 1.4)
			When repeated LogIn, Close Tab named:{N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9
#Action: 5 LogIn, Close Tab named:{N}{T}, Iincrement {T} (repeat of 1.4)
			When repeated LogIn, Close Tab named:{N}{T}, Iincrement {T}
			Then incremented variable character {N},0,9

Scenario: 7 Initialize {I}=0 {T}=a {N}=0
#Action: 1 Initialize {I}=0 {T}=a {N}=0
			Then set variable character {I},0
			Then set variable character {T},a
			Then set variable character {N},0

Scenario: 8 Qiuck Add Tab:{I}{N}{T}, Increment {T}
#Action: 1 On FloorPlan select WWT Screen
			Then verify presence of [WWT\Screen]
			Then clicked [WWT\Screen]
#Action: 2 Show Keyboard and Select Tab Icon
			Then verify presence of [New Tab]
			Then clicked [New Tab]
#Action: 3 Open Tab {N}{T} and increment {T} for next time;
			Then verify presence of "Enter Tab Name"
			Then clicked /DialogSeparator/,[{I}]
			Then clicked /DialogSeparator/,[{N}]
			Then clicked /DialogSeparator/,[{T}]
			Then incremented variable character {T},a,z
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Then verify presence of "Enter Guest Count"
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Back toFloorplan
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [btnGoToFloorplan]
			When waited for 0.01 min

Scenario: 9 Initialize {I}=1 {T}=a {N}=0
#Action: 1 Initialize {I}=1 {T}=a {N}=0
			Then set variable character {I},1
			Then set variable character {T},a
			Then set variable character {N},0

Scenario: 10 Open 520 Tabs
#Action: 1 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 2 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 3 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 4 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 5 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 6 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 7 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 8 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 9 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 10 Increment {I}
			Then incremented variable character {I},0,9
#Action: 11 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 12 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 13 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 14 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 15 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 16 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 17 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 18 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
#Action: 19 Qiuck Add Tab:{I}{N}{T}, Increment {T} (repeat 26 times of 1.8)
			When repeated 26 times Qiuck Add Tab:{I}{N}{T}, Increment {T}
			Then incremented variable character {N},0,9
