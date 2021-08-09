Feature: 1 Tabs

@ TransferTable

Scenario: 1 Open Tab - A0
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~0]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 2 Open Tab - A1
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 3 Open Tab - A2
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~2]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 4 Open Tab - A3
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~3]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 5 Open Tab - A4
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~4]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 6 Open Tab - A5
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~5]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 7 Open Tab - A6
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~6]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 8 Open Tab - A7
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~7]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 9 Open Tab - A8
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~8]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 10 Open Tab - A9
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~a]
	Then clicked [EnterTabNameKeyboard~9]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 11 Open Tab - B0
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~0]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 12 Open Tab - B1
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 13 Open Tab - B2
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~2]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 14 Open Tab - B3
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~3]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 15 Open Tab - B4
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~4]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 16 Open Tab - B5
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~5]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 17 Open Tab - B6
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~6]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 18 Open Tab - B7
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~7]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 19 Open Tab - B8
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~8]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 20 Open Tab - B9
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~b]
	Then clicked [EnterTabNameKeyboard~9]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 21 Open Tab - C0
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~0]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 22 Open Tab - C1
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 23 Open Tab - C2
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~2]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 24 Open Tab - C3
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~3]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 25 Open Tab - C4
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~4]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 26 Open Tab - C5
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~5]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 27 Open Tab - C6
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~6]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 28 Open Tab - C7
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~7]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 29 Open Tab - C8
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~8]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 30 Open Tab - C9
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~c]
	Then clicked [EnterTabNameKeyboard~9]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 31 Open Tab - D0
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~0]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 32 Open Tab - D1
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 33 Open Tab - D2
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~2]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 34 Open Tab - D3
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~3]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 35 Open Tab - D4
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~4]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 36 Open Tab - D5
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~5]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 37 Open Tab - D6
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~6]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 38 Open Tab - D7
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~7]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 39 Open Tab - D8
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~8]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 40 Open Tab - D9
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~d]
	Then clicked [EnterTabNameKeyboard~9]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 41 Open Tab - E0
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~0]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 42 Open Tab - E1
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 43 Open Tab - E2
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~2]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 44 Open Tab - E3
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~3]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 45 Open Tab - E4
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~4]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 46 Open Tab - E5
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~5]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 47 Open Tab - E6
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~6]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 48 Open Tab - E7
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~7]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 49 Open Tab - E8
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~8]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 50 Open Tab - E9
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~e]
	Then clicked [EnterTabNameKeyboard~9]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 51 Open Tab - F0
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~0]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 52 Open Tab - F1
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 53 Open Tab - F2
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~2]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 54 Open Tab - F3
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~3]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 55 Open Tab - F4
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~4]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 56 Open Tab - F5
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~5]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 57 Open Tab - F6
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~6]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 58 Open Tab - F7
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~7]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 59 Open Tab - F8
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~8]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]

Scenario: 60 Open Tab - F9
# 1 Select WWT Screen
	Given screen state [FloorPlanScreen~Exit]
	Then clicked [WWT\Screen]
# 2 Select Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [btnSetTabEntry]
# 3 Open Tab
	Given screen state [TopRightButtons~Exit]
	Then clicked [TopRightButtons~btnHideOrShowKeyboard]
	Then clicked [EnterTabNameKeyboard~f]
	Then clicked [EnterTabNameKeyboard~9]
	Then clicked [EnterTabNameKeyboard~Ok]
# 4 Enter Guest Count 1
	Given screen state [TopRightButtons~Exit]
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 5 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 7 Go To WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
