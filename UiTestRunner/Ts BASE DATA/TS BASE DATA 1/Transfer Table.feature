Feature: 33 Transfer Table

@ TransferTable

Scenario: 1 Transfer Table to Server
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
# 6 Click DONE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Done]
# 7 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 8 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 9 Transfer Table
	Given screen state {079}
	Then clicked [Transfer Table]
# 10 Select Manager Jeffrey
	Given screen state {011}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 11 Select "Table 1" on Transfer Screen
	Given screen state {011}
	Then clicked "TransferTables~1"
# 12 Select "Lebron James" on Transfer Screen
	Given screen state {012}
	Then clicked "ReceiveEmployees~LEBRON JAMES"
# 13 Select OK
	Given screen state {012}
	Then clicked [OK]
# 14 Exit WWT Screen
	Given screen state {079}
	Then clicked [TopRightButtons~Exit]
# 15 Login as Server 100
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [1],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 16 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 17 Select Table 1
	Given screen state {013}
	Then clicked "Tables~1"
# 18 Select Table 1 on Transfer Tables
	Given screen state {014}
	Then clicked "1"
# 19 Select Ok Button
	Given screen state {015}
	Then clicked [OK]
# 20 Select Table 1
	Given screen state {013}
	Then clicked "Tables~1"
# 21 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Table","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 22 Exact Payment
	Given screen state "ItemEntries~Table","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 23 Click Close
	Given screen state "ItemEntries~Table","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 24 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify you can transfer table with OK
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
# 6 Go to the WWT Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 7 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 8 Transfer Table
	Given screen state {079}
	Then clicked [Transfer Table]
# 9 Select Manager Jeffrey
	Given screen state {011}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 10 Select "Table 1" on Transfer Screen
	Given screen state {012}
	Then clicked "TransferTables~1"
# 11 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {012}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 12 Select OK
	Given screen state {012}
	Then clicked [OK]
# 13 Exit WWT Screen
	Given screen state {079}
	Then clicked [TopRightButtons~Exit]
# 14 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 15 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 16 Select Table 1
	Given screen state {016}
	Then clicked "Tables~1"
# 17 Select Table 1 on Transfer Tables
	Given screen state {017}
	Then clicked "1"
# 18 Select Ok Button
	Given screen state {018}
	Then clicked [OK]
# 19 Select Table 1
	Given screen state {016}
	Then clicked "Tables~1"
# 20 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 21 Exact Payment
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 22 Click Close
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 23 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify you can transfer tab with OK
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {086}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {009}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 9 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 10 Transfer Table
	Given screen state {093}
	Then clicked [Transfer Table]
# 11 Select Manager Jeffrey
	Given screen state {011}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 12 Select "Table 1" on Transfer Screen
	Given screen state {020}
	Then clicked "TransferTables~j1"
# 13 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {020}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 14 Select OK
	Given screen state {020}
	Then clicked [OK]
# 15 Exit WWT Screen
	Given screen state {093}
	Then clicked [TopRightButtons~Exit]
# 16 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 17 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 18 Select Tab
	Given screen state {021}
	Then clicked "Tabs~j1"
# 19 Select Tab j1 on Transfer Tables
	Given screen state {022}
	Then clicked "j1"
# 20 Select Ok Button
	Given screen state {022}
	Then clicked [OK]
# 21 Select Tab "j1"
	Given screen state {021}
	Then clicked "Tabs~j1"
# 22 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 23 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 24 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 25 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Verify you can transfer table with merge table
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
# 6 Go to the WWT Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 7 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 8 Transfer Table
	Given screen state {079}
	Then clicked [Transfer Table]
# 9 Select Manager Jeffrey
	Given screen state {024}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 10 Select "Table 1" on Transfer Screen
	Given screen state {012}
	Then clicked "TransferTables~1"
# 11 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {012}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 12 Select OK
	Given screen state {012}
	Then clicked [OK]
# 13 Exit WWT Screen
	Given screen state {079}
	Then clicked [TopRightButtons~Exit]
# 14 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 15 Floor Plan select Table 2
	Given screen state {558}
	Then clicked [2]
# 16 Enter Guest Count 1
	Given screen state {025}
	When clicked [DialogSeparator~1]
	And clicked [DialogSeparator~OK]
	Then verify absence of "Enter Guest Count"
# 17 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 18 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [HERE]
# 19 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 20 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 21 Select Table 1
	Given screen state {026}
	Then clicked "Tables~1"
# 22 Select Table 1 on Transfer Tables
	Given screen state {018}
	Then clicked "1"
# 23 Select Ok Button
	Given screen state {018}
	Then clicked [RightCommands~Merge Table]
# 24 Merge Table 2
	Given screen state {027}
	Then clicked "ExistingTables~2"
# 25 Select Table 2
	Given screen state {028}
	Then clicked "Tables~2"
# 26 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [$]
# 27 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31"
	Then clicked [Exact]
# 28 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~CASH","Tenders~$5.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 29 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 30 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 31 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Verify you can transfer tab with merge tab
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {086}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {009}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [DialogSeparator~OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 9 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 10 Transfer Table
	Given screen state {093}
	Then clicked [Transfer Table]
# 11 Select Manager Jeffrey
	Given screen state {024}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 12 Select "Table 1" on Transfer Screen
	Given screen state {024}
	Then clicked "TransferTables~j1"
# 13 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {020}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 14 Select OK
	Given screen state {020}
	Then clicked [OK]
# 15 Exit WWT Screen
	Given screen state {093}
	Then clicked [TopRightButtons~Exit]
# 16 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 17 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 18 Select Tab
	Given screen state {021}
	Then clicked [btnSetTabEntry]
# 19 Open Tab
	Given screen state {029}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~2]
	Then clicked [EnterTabNameKeyboard~Ok]
# 20 Enter Guest Count 1
	Given screen state {030}
	When clicked [DialogSeparator~1]
	And clicked [DialogSeparator~OK]
	Then verify absence of "Enter Guest Count"
# 21 Add Pork Nachos
	Given screen state "TableAndChecks~j2"
	Then clicked "PORK\NACHOS"
# 22 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [HERE]
# 23 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 24 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 25 Select Table 1
	Given screen state {031}
	Then clicked "Tabs~j1"
# 26 Select Table 1 on Transfer Tables
	Given screen state {037}
	Then clicked "j1"
# 27 Select Ok Button
	Given screen state {037}
	Then clicked [RightCommands~Merge Tab]
# 28 Merge Table 2
	Given screen state {037}
	Then clicked "ExistingTables~j2"
# 29 Select Table 2
	Given screen state {039}
	Then clicked "Tabs~j2"
# 30 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [$]
# 31 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31"
	Then clicked [Exact]
# 32 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~CASH","Tenders~$5.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 33 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 34 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 35 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 6 Verify you can transfer table with new table
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
# 6 Go to the WWT Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 7 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 8 Transfer Table
	Given screen state {079}
	Then clicked [Transfer Table]
# 9 Select Manager Jeffrey
	Given screen state {024}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 10 Select "Table 1" on Transfer Screen
	Given screen state {011}
	Then clicked "TransferTables~1"
# 11 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {012}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 12 Select OK
	Given screen state {012}
	Then clicked [OK]
# 13 Exit WWT Screen
	Given screen state {079}
	Then clicked [TopRightButtons~Exit]
# 14 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 15 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 16 Select Table 1
	Given screen state {016}
	Then clicked "Tables~1"
# 17 Select Table 1 on Transfer Tables
	Given screen state {040}
	Then clicked "1"
# 18 Select Ok Button
	Given screen state {040}
	Then clicked [New Table]
# 19 Enter Table 2
	Given screen state {041}
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~OK]
# 20 Select Table 2
	Given screen state {028}
	Then clicked "Tables~2"
# 21 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 22 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 23 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 24 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 7 Verify you can transfer tab with new tab.
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {086}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {009}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 9 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 10 Transfer Table
	Given screen state {093}
	Then clicked [Transfer Table]
# 11 Select Manager Jeffrey
	Given screen state {011}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 12 Select "Table 1" on Transfer Screen
	Given screen state {024}
	Then clicked "TransferTables~j1"
# 13 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {020}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 14 Select OK
	Given screen state {020}
	Then clicked [OK]
# 15 Exit WWT Screen
	Given screen state {093}
	Then clicked [TopRightButtons~Exit]
# 16 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 17 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 18 Select Tab
	Given screen state {021}
	Then clicked "Tabs~j1"
# 19 Select Tab j1 on Transfer Tables
	Given screen state {037}
	Then clicked "j1"
# 20 Select New Tab Button
	Given screen state {037}
	Then clicked [New Tab]
# 21 Enter Tab Name J2
	Given screen state {042}
	Then clicked [DialogSeparator~j]
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~Ok]
# 22 Select Tab "j2"
	Given screen state {039}
	Then clicked "Tabs~j2"
# 23 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 24 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 25 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 26 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 8 Verify you can transfer table with merge tab
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
# 6 Go to the WWT Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 7 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 8 Transfer Table
	Given screen state {079}
	Then clicked [Transfer Table]
# 9 Select Manager Jeffrey
	Given screen state {024}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 10 Select "Table 1" on Transfer Screen
	Given screen state {012}
	Then clicked "TransferTables~1"
# 11 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {012}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 12 Select OK
	Given screen state {012}
	Then clicked [OK]
# 13 Exit WWT Screen
	Given screen state {079}
	Then clicked [TopRightButtons~Exit]
# 14 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 15 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 16 Select Tab
	Given screen state {016}
	Then clicked [btnSetTabEntry]
# 17 Open Tab
	Given screen state {044}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 18 Enter Guest Count 1
	Given screen state {045}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 19 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 20 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [HERE]
# 21 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 22 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 23 Select Table 1
	Given screen state {046}
	Then clicked "Tables~1"
# 24 Select Table 1 on Transfer Tables
	Given screen state {040}
	Then clicked "1"
# 25 Select Ok Button
	Given screen state {040}
	Then clicked [RightCommands~Merge Tab]
# 26 Merge Tab j1
	Given screen state {047}
	Then clicked "ExistingTables~j1"
# 27 Select Tab j1
	Given screen state {021}
	Then clicked "Tabs~j1"
# 28 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [$]
# 29 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31"
	Then clicked [Exact]
# 30 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~CASH","Tenders~$5.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 31 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 32 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 33 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 9 Verify you can transfer tab with merge table
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {086}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {009}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 9 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 10 Transfer Table
	Given screen state {093}
	Then clicked [Transfer Table]
# 11 Select Manager Jeffrey
	Given screen state {011}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 12 Select "Table 1" on Transfer Screen
	Given screen state {024}
	Then clicked "TransferTables~j1"
# 13 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {020}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 14 Select OK
	Given screen state {020}
	Then clicked [OK]
# 15 Exit WWT Screen
	Given screen state {093}
	Then clicked [TopRightButtons~Exit]
# 16 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 17 Floor Plan select Table 2
	Given screen state {558}
	Then clicked [2]
# 18 Enter Guest Count 1
	Given screen state {025}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 19 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 20 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [HERE]
# 21 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 22 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 23 Select Tab j1
	Given screen state {049}
	Then clicked "Tabs~j1"
# 24 Select Tab j1 on Transfer Tables
	Given screen state {050}
	Then clicked "j1"
# 25 Select Merge Table Button
	Given screen state {050}
	Then clicked [RightCommands~Merge Table]
# 26 Merge Table 2
	Given screen state {033}
	Then clicked "ExistingTables~2"
# 27 Select Table 2
	Given screen state {028}
	Then clicked "Tables~2"
# 28 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [$]
# 29 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31"
	Then clicked [Exact]
# 30 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~CASH","Tenders~$5.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 31 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 32 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 33 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 10 Verify you can transfer table with new tab
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
# 6 Go to the WWT Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 7 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 8 Transfer Table
	Given screen state {079}
	Then clicked [Transfer Table]
# 9 Select Manager Jeffrey
	Given screen state {024}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 10 Select "Table 1" on Transfer Screen
	Given screen state {011}
	Then clicked "TransferTables~1"
# 11 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {012}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 12 Select OK
	Given screen state {012}
	Then clicked [OK]
# 13 Exit WWT Screen
	Given screen state {079}
	Then clicked [TopRightButtons~Exit]
# 14 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 15 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 16 Select Table 1
	Given screen state {016}
	Then clicked "Tables~1"
# 17 Select Table 1 on Transfer Tables
	Given screen state {027}
	Then clicked "1"
# 18 Select Ok Button
	Given screen state {027}
	Then clicked [New Tab]
# 19 Enter Tab j1
	Given screen state {051}
	Then clicked [DialogSeparator~j]
	Then clicked [DialogSeparator~1]
	Then clicked [DialogSeparator~Ok]
# 20 Select Tab j1
	Given screen state {021}
	Then clicked "Tabs~j1"
# 21 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 22 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 23 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 24 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 11 Verify you can transfer tab with new tab.
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {086}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {009}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 9 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 10 Transfer Table
	Given screen state {093}
	Then clicked [Transfer Table]
# 11 Select Manager Jeffrey
	Given screen state {011}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 12 Select "Table 1" on Transfer Screen
	Given screen state {024}
	Then clicked "TransferTables~j1"
# 13 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {020}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 14 Select OK
	Given screen state {020}
	Then clicked [OK]
# 15 Exit WWT Screen
	Given screen state {093}
	Then clicked [TopRightButtons~Exit]
# 16 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 17 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 18 Select Tab
	Given screen state {021}
	Then clicked "Tabs~j1"
# 19 Select Tab j1 on Transfer Tables
	Given screen state {033}
	Then clicked "j1"
# 20 Select New Tab Button
	Given screen state {033}
	Then clicked [New Table]
# 21 Enter Table 1
	Given screen state {054}
	Then clicked [DialogSeparator~1]
	Then clicked [DialogSeparator~OK]
# 22 Select Table 1
	Given screen state {016}
	Then clicked "Tables~1"
# 23 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 24 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 25 Click Close
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 26 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 12 Verify you can transfer tab with new table.
# 1 Login as manager 200
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[0]
	And clicked [Login]
	Then verify absence of [Login]
# 2 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 3 Select Tab
	Given screen state {086}
	Then clicked [btnSetTabEntry]
# 4 Open Tab
	Given screen state {009}
	Then clicked [EnterTabNameKeyboard~j]
	Then clicked [EnterTabNameKeyboard~1]
	Then clicked [EnterTabNameKeyboard~Ok]
# 5 Enter Guest Count 1
	Given screen state {055}
	When clicked [DialogSeparator~1]
	And clicked [OK]
	Then verify absence of "Enter Guest Count"
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Go to the WWT Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [TopLeftButtons~btnGoToFloorplan]
# 9 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 10 Transfer Table
	Given screen state {093}
	Then clicked [Transfer Table]
# 11 Select Manager Jeffrey
	Given screen state {024}
	Then clicked "TransferFromEmployees~JEFFREY OYENEYE"
# 12 Select "Table 1" on Transfer Screen
	Given screen state {024}
	Then clicked "TransferTables~j1"
# 13 Select "Miguel Saavedra" on Transfer Screen
	Given screen state {020}
	Then clicked "ReceiveEmployees~MIGUEL SAAVEDRA"
# 14 Select OK
	Given screen state {020}
	Then clicked [OK]
# 15 Exit WWT Screen
	Given screen state {093}
	Then clicked [TopRightButtons~Exit]
# 16 Login as Manager 201
	Given screen state "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
	When clicked [2],[0],[1]
	And clicked [Login]
	Then verify absence of [Login]
# 17 Select WWT Screen
	Given screen state {558}
	Then clicked [WWT\Screen]
# 18 Select Tab
	Given screen state {021}
	Then clicked "Tabs~j1"
# 19 Select Tab j1 on Transfer Tables
	Given screen state {033}
	Then clicked "j1"
# 20 Select New Table Button
	Given screen state {033}
	Then clicked [New Table]
# 21 Enter Table 2
	Given screen state {054}
	Then clicked [DialogSeparator~2]
	Then clicked [DialogSeparator~OK]
# 22 Select Table 2
	Given screen state {028}
	Then clicked "Tables~2"
# 23 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 24 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 25 Click Close
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 26 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
