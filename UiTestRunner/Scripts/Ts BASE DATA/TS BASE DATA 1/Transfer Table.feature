#TODO ALOHAP-32783 blocking this section from working
#TODO ALOHAP-33013 OK button showing prematurely
Feature: 33 Transfer Table


Scenario: 1 Transfer Table to Server
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Click DONE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Done]
#Action: 7 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 8 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 9 Transfer Table
			Given screen state: 036
			Then clicked [Transfer Table]
#Action: 10 Select Manager Jeffrey
			Given screen state: 024
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 11 Select "Table 1" on Transfer Screen
			Given screen state: 024
			Then clicked /TransferTables/,"1"
#Action: 12 Select "Lebron James" on Transfer Screen
			Given screen state: 024
			Then clicked /ReceiveEmployees/,"LEBRON JAMES"
#Action: 13 Select OK
			Given screen state: 024
			Then clicked [OK]
#Action: 14 Exit WWT Screen
			Given screen state: 036
			Then clicked /TopRightButtons/,[Exit]
#Action: 15 Login as Server 100
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 16 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 17 Select Table 1
			Given screen state: 103
			Then clicked /Tables/,"1"
#Action: 18 Select Table 1 on Transfer Tables
			Given screen state: 014
			Then clicked "1"
#Action: 19 Select Ok Button
			Given screen state: 015
			Then clicked [OK]
#Action: 20 Select Table 1
			Given screen state: 103
			Then clicked /Tables/,"1"
#Action: 21 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Table","COKE","2.00"
			Then clicked [$]
#Action: 22 Exact Payment
			Then verify presence of /ItemEntries/,"Table","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 23 Click Close
			Given screen state: 117
			Then clicked /MidButtons/,[Close]
#Action: 24 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify you can transfer table with OK
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Go to the WWT Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 7 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 8 Transfer Table
			Given screen state: 036
			Then clicked [Transfer Table]
#Action: 9 Select Manager Jeffrey
			Given screen state: 024
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 10 Select "Table 1" on Transfer Screen
			Given screen state: 024
			Then clicked /TransferTables/,"1"
#Action: 11 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 024
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 12 Select OK
			Given screen state: 012
			Then clicked [OK]
#Action: 13 Exit WWT Screen
			Given screen state: 036
			Then clicked /TopRightButtons/,[Exit]
#Action: 14 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 15 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 16 Select Table 1
			Given screen state: 104
			Then clicked /Tables/,"1"
#Action: 17 Select Table 1 on Transfer Tables
			Given screen state: 017
			Then clicked "1"
#Action: 18 Select Ok Button
			Given screen state: 013
			Then clicked [OK]
#Action: 19 Select Table 1
			Given screen state: 104
			Then clicked /Tables/,"1"
#Action: 20 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 21 Exact Payment
			Then verify presence of /ItemEntries/,"COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 22 Click Close
			Given screen state: 208
			Then clicked /MidButtons/,[Close]
#Action: 23 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you can transfer tab with OK
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Open Tab
			Given screen state: 038
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 7 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 8 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 9 Transfer Table
			Given screen state: 251
			Then clicked [Transfer Table]
#Action: 10 Select Manager Jeffrey
			Given screen state: 011
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 11 Select "Table 1" on Transfer Screen
			Given screen state: 011
			Then clicked /TransferTables/,"j1"
#Action: 12 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 011
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 13 Select OK
			Given screen state: 020
			Then clicked [OK]
#Action: 14 Exit WWT Screen
			Given screen state: 251
			Then clicked /TopRightButtons/,[Exit]
#Action: 15 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 16 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 17 Select Tab
			Given screen state: 109
			Then clicked /Tabs/,"j1"
#Action: 18 Select Tab j1 on Transfer Tables
			Given screen state: 118
			Then clicked "j1"
#Action: 19 Select Ok Button
			Given screen state: 118
			Then clicked [OK]
#Action: 20 Select Tab "j1"
			Given screen state: 109
			Then clicked /Tabs/,"j1"
#Action: 21 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 22 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 23 Click Close
			Given screen state: 018
			Then clicked /MidButtons/,[Close]
#Action: 24 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify you can transfer table with merge table
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Go to the WWT Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 7 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 8 Transfer Table
			Given screen state: 036
			Then clicked [Transfer Table]
#Action: 9 Select Manager Jeffrey
			Given screen state: 024
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 10 Select "Table 1" on Transfer Screen
			Given screen state: 024
			Then clicked /TransferTables/,"1"
#Action: 11 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 024
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 12 Select OK
			Given screen state: 012
			Then clicked [OK]
#Action: 13 Exit WWT Screen
			Given screen state: 036
			Then clicked /TopRightButtons/,[Exit]
#Action: 14 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 15 Floor Plan select Table 2
			Given screen state: 558
			Then clicked [2]
#Action: 16 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 17 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 18 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [HERE]
#Action: 19 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 20 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 21 Select Table 1
			Given screen state: 110
			Then clicked /Tables/,"1"
#Action: 22 Select Table 1 on Transfer Tables
			Given screen state: 013
			Then clicked "1"
#Action: 23 Select Ok Button
			Given screen state: 013
			Then clicked /RightCommands/,[Merge Table]
#Action: 24 Merge Table 2
			Given screen state: 027
			Then clicked /ExistingTables/,"2"
#Action: 25 Select Table 2
			Given screen state: 111
			Then clicked /Tables/,"2"
#Action: 26 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [$]
#Action: 27 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31"
			Then clicked [Exact]
#Action: 28 Click Close
			Given screen state: 249
			Then clicked /MidButtons/,[Close]
#Action: 29 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 30 Click Close
			Given screen state: 250
			Then clicked /MidButtons/,[Close]
#Action: 31 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify you can transfer tab with merge tab
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Open Tab
			Given screen state: 038
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 7 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 8 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 9 Transfer Table
			Given screen state: 251
			Then clicked [Transfer Table]
#Action: 10 Select Manager Jeffrey
			Given screen state: 011
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 11 Select "Table 1" on Transfer Screen
			Given screen state: 011
			Then clicked /TransferTables/,"j1"
#Action: 12 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 011
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 13 Select OK
			Given screen state: 020
			Then clicked [OK]
#Action: 14 Exit WWT Screen
			Given screen state: 251
			Then clicked /TopRightButtons/,[Exit]
#Action: 15 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 16 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 17 Open Tab
			Given screen state: 109
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[Ok]
#Action: 18 Enter Guest Count 1
			Given screen state: 112
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 19 Add Pork Nachos
			Then verify presence of /TableAndChecks/,"j2"
			Then clicked "PORK\NACHOS"
#Action: 20 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [HERE]
#Action: 21 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 22 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 23 Select Tab J1
			Given screen state: 113
			Then clicked /Tabs/,"j1"
#Action: 24 Select Tab J1 on Transfer Tables
			Given screen state: 033
			Then clicked "j1"
#Action: 25 Select Ok Button
			Given screen state: 033
			Then clicked /RightCommands/,[Merge Tab]
#Action: 26 Merge Table 2
			Given screen state: 037
			Then clicked /ExistingTables/,"j2"
#Action: 27 Select Table 2
			Given screen state: 026
			Then clicked /Tabs/,"j2"
#Action: 28 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [$]
#Action: 29 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31"
			Then clicked [Exact]
#Action: 30 Click Close
			Given screen state: 252
			Then clicked /MidButtons/,[Close]
#Action: 31 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 32 Click Close
			Given screen state: 253
			Then clicked /MidButtons/,[Close]
#Action: 33 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify you can transfer table with new table
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Go to the WWT Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 7 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 8 Transfer Table
			Given screen state: 036
			Then clicked [Transfer Table]
#Action: 9 Select Manager Jeffrey
			Given screen state: 024
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 10 Select "Table 1" on Transfer Screen
			Given screen state: 024
			Then clicked /TransferTables/,"1"
#Action: 11 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 024
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 12 Select OK
			Given screen state: 012
			Then clicked [OK]
#Action: 13 Exit WWT Screen
			Given screen state: 036
			Then clicked /TopRightButtons/,[Exit]
#Action: 14 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 15 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 16 Select Table 1
			Given screen state: 104
			Then clicked /Tables/,"1"
#Action: 17 Select Table 1 on Transfer Tables
			Given screen state: 040
			Then clicked "1"
#Action: 18 Select Ok Button
			Given screen state: 040
			Then clicked [New Table]
#Action: 19 Enter Table 2
			Given screen state: 041
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[OK]
#Action: 20 Select Table 2
			Given screen state: 111
			Then clicked /Tables/,"2"
#Action: 21 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 22 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 23 Click Close
			Given screen state: 254
			Then clicked /MidButtons/,[Close]
#Action: 24 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Verify you can transfer tab with new tab.
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Open Tab
			Given screen state: 038
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 7 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 8 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 9 Transfer Table
			Given screen state: 251
			Then clicked [Transfer Table]
#Action: 10 Select Manager Jeffrey
			Given screen state: 011
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 11 Select "Table 1" on Transfer Screen
			Given screen state: 011
			Then clicked /TransferTables/,"j1"
#Action: 12 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 011
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 13 Select OK
			Given screen state: 020
			Then clicked [OK]
#Action: 14 Exit WWT Screen
			Given screen state: 251
			Then clicked /TopRightButtons/,[Exit]
#Action: 15 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 16 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 17 Select Tab
			Given screen state: 109
			Then clicked /Tabs/,"j1"
#Action: 18 Select Tab j1 on Transfer Tables
			Given screen state: 037
			Then clicked "j1"
#Action: 19 Select New Tab Button
			Given screen state: 037
			Then clicked [New Tab]
#Action: 20 Enter Tab Name J2
			Given screen state: 042
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[Ok]
#Action: 21 Select Tab "j2"
			Given screen state: 026
			Then clicked /Tabs/,"j2"
#Action: 22 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 23 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 24 Click Close
			Given screen state: 106
			Then clicked /MidButtons/,[Close]
#Action: 25 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 8 Verify you can transfer table with merge tab
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Go to the WWT Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 7 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 8 Transfer Table
			Given screen state: 036
			Then clicked [Transfer Table]
#Action: 9 Select Manager Jeffrey
			Given screen state: 024
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 10 Select "Table 1" on Transfer Screen
			Given screen state: 024
			Then clicked /TransferTables/,"1"
#Action: 11 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 024
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 12 Select OK
			Given screen state: 012
			Then clicked [OK]
#Action: 13 Exit WWT Screen
			Given screen state: 036
			Then clicked /TopRightButtons/,[Exit]
#Action: 14 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 15 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 16 Open Tab
			Given screen state: 104
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 17 Enter Guest Count 1
			Given screen state: 029
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 18 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 19 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [HERE]
#Action: 20 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 21 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 22 Select Table 1
			Given screen state: 030
			Then clicked /Tables/,"1"
#Action: 23 Select Table 1 on Transfer Tables
			Given screen state: 040
			Then clicked "1"
#Action: 24 Select Ok Button
			Given screen state: 040
			Then clicked /RightCommands/,[Merge Tab]
#Action: 25 Merge Tab j1
			Given screen state: 047
			Then clicked /ExistingTables/,"j1"
#Action: 26 Select Tab j1
			Given screen state: 109
			Then clicked /Tabs/,"j1"
#Action: 27 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [$]
#Action: 28 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31"
			Then clicked [Exact]
#Action: 29 Click Close
			Given screen state: 281
			Then clicked /MidButtons/,[Close]
#Action: 30 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 31 Click Close
			Given screen state: 282
			Then clicked /MidButtons/,[Close]
#Action: 32 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 9 Verify you can transfer tab with merge table
#Action: 1 Login as manager 200
			#TODO ALOHAP-33210 Tabs showing duplicate on accept transfer screen.
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Open Tab
			Given screen state: 038
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 7 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 8 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 9 Transfer Table
			Given screen state: 251
			Then clicked [Transfer Table]
#Action: 10 Select Manager Jeffrey
			Given screen state: 024
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 11 Select "Table 1" on Transfer Screen
			Given screen state: 011
			Then clicked /TransferTables/,"j1"
#Action: 12 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 011
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 13 Select OK
			Given screen state: 020
			Then clicked [OK]
#Action: 14 Exit WWT Screen
			Given screen state: 251
			Then clicked /TopRightButtons/,[Exit]
#Action: 15 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 16 Floor Plan select Table 2
			Given screen state: 558
			Then clicked [2]
#Action: 17 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 18 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 19 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [HERE]
#Action: 20 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 21 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 22 Select Tab j1
			Given screen state: 031
			Then clicked /Tabs/,"j1"
#Action: 23 Select Tab j1 on Transfer Tables
			Given screen state: 050
			Then clicked "j1"
#Action: 24 Select Merge Table Button
			Given screen state: 050
			Then clicked /RightCommands/,[Merge Table]
#Action: 25 Merge Table 2
			Given screen state: 033
			Then clicked /ExistingTables/,"2"
#Action: 26 Select Table 2
			Given screen state: 111
			Then clicked /Tables/,"2"
#Action: 27 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [$]
#Action: 28 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31"
			Then clicked [Exact]
#Action: 29 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"CASH","$5.31","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 30 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 31 Click Close
			Then verify presence of /ItemEntries/,"Seat 2","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","$2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 32 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 10 Verify you can transfer table with new tab
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 558
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Go to the WWT Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 7 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 8 Transfer Table
			Given screen state: 036
			Then clicked [Transfer Table]
#Action: 9 Select Manager Jeffrey
			Given screen state: 024
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 10 Select "Table 1" on Transfer Screen
			Given screen state: 024
			Then clicked /TransferTables/,"1"
#Action: 11 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 024
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 12 Select OK
			Given screen state: 012
			Then clicked [OK]
#Action: 13 Exit WWT Screen
			Given screen state: 036
			Then clicked /TopRightButtons/,[Exit]
#Action: 14 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 15 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 16 Select Table 1
			Given screen state: 104
			Then clicked /Tables/,"1"
#Action: 17 Select Table 1 on Transfer Tables
			Given screen state: 047
			Then clicked "1"
#Action: 18 Select Ok Button
			Given screen state: 047
			Then clicked [New Tab]
#Action: 19 Enter Tab j1
			Given screen state: 283
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 20 Select Tab j1
			Given screen state: 109
			Then clicked /Tabs/,"j1"
#Action: 21 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [$]
#Action: 22 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 23 Click Close
			Given screen state: 018
			Then clicked /MidButtons/,[Close]
#Action: 24 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 11 Verify you can transfer tab with new tab.
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Open Tab
			Given screen state: 038
			Then clicked [New Tab]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 4 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 5 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 7 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 8 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 9 Transfer Table
			Given screen state: 251
			Then clicked [Transfer Table]
#Action: 10 Select Manager Jeffrey
			Given screen state: 011
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 11 Select "Table 1" on Transfer Screen
			Given screen state: 011
			Then clicked /TransferTables/,"j1"
#Action: 12 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 011
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 13 Select OK
			Given screen state: 020
			Then clicked [OK]
#Action: 14 Exit WWT Screen
			Given screen state: 251
			Then clicked /TopRightButtons/,[Exit]
#Action: 15 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 16 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 17 Select Tab
			Given screen state: 109
			Then clicked /Tabs/,"j1"
#Action: 18 Select Tab j1 on Transfer Tables
			Given screen state: 118
			Then clicked "j1"
#Action: 19 Select New Tab Button
			Given screen state: 118
			Then clicked [New Table]
#Action: 20 Enter Table 1
			Given screen state: 119
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[OK]
#Action: 21 Select Table 1
			Given screen state: 104
			Then clicked /Tables/,"1"
#Action: 22 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 23 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 24 Click Close
			Then verify presence of /ItemEntries/,"COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","$2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 25 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 12 Verify you can transfer tab with new table.
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 3 Select Tab
			Given screen state: 038
			Then clicked [btnSetTabEntry]
#Action: 4 Open Tab
			Given screen state: 038
			Then clicked /TopRightButtons/,[New Order]
			When waited for 0.01 min
			Then clicked /DialogSeparator/,[j]
			Then clicked /DialogSeparator/,[1]
			Then clicked /DialogSeparator/,[Ok]
#Action: 5 Enter Guest Count 1
			Given screen state: 055
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 6 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked [HERE]
#Action: 8 Go to the WWT Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00"
			Then clicked /TopLeftButtons/,[btnGoToFloorplan]
#Action: 9 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 10 Transfer Table
			Given screen state: 251
			Then clicked [Transfer Table]
#Action: 11 Select Manager Jeffrey
			Given screen state: 020
			Then clicked /TransferFromEmployees/,"JEFFREY OYENEYE"
#Action: 12 Select "Table 1" on Transfer Screen
			Given screen state: 020
			Then clicked /TransferTables/,"j1"
#Action: 13 Select "Miguel Saavedra" on Transfer Screen
			Given screen state: 020
			Then clicked /ReceiveEmployees/,"MIGUEL SAAVEDRA"
#Action: 14 Select OK
			Given screen state: 020
			Then clicked [OK]
#Action: 15 Exit WWT Screen
			Given screen state: 251
			Then clicked /TopRightButtons/,[Exit]
#Action: 16 Login as Manager 201
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[1]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 17 Select WWT Screen
			Given screen state: 558
			Then clicked [WWT\Screen]
#Action: 18 Select Tab
			Given screen state: 109
			Then clicked /Tabs/,"j1"
#Action: 19 Select Tab j1 on Transfer Tables
			Given screen state: 118
			Then clicked "j1"
#Action: 20 Select New Table Button
			Given screen state: 118
			Then clicked [New Table]
#Action: 21 Enter Table 2
			Given screen state: 119
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[OK]
#Action: 22 Select Table 2
			Given screen state: 111
			Then clicked /Tables/,"2"
#Action: 23 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 24 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 25 Click Close
			Then verify presence of /ItemEntries/,"COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","$2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 26 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
