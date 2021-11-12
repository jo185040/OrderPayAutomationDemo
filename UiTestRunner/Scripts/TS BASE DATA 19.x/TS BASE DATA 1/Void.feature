Feature: 32 Void


Scenario: 1 Verify you can void items with no issues
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
#Action: 6 Select Coke on Check
			Given screen state: 164
			Then clicked /EntriesBySeat/,"COKE"
#Action: 7 Void COKE
			Given screen state: 164
			Then clicked /BottomButtons/,[Void]
#Action: 8 Select COKE on Void Screen
			Given screen state: 019
			Then clicked /Items/,^COKE^
#Action: 9 Select OK on Void Screen
			Given screen state: 023
			Then clicked /Items/,[OK]
#Action: 10 Select Void Reason on Void Screen
			Given screen state: 461
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE"
			Then clicked [$]
#Action: 12 Select Close on Payment Screen
			Then verify presence of /ItemEntries/,"Seat 1","COKE",/Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify you can clear (delete) unordered an item
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
#Action: 5 Select Coke on Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TableAndChecks/,[Clear]
#Action: 6 Select OK
			Given screen state: 056
			Then clicked /Dialog/,[OK]
#Action: 7 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]

Scenario: 3 Verify JIT screen displays when trying to void item
#Action: 1 Login as manager 200
			#TODO ALOHAP-34259 JIT casuing Orderpay to crash
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
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
#Action: 6 Void COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /BottomButtons/,[Void]
#Action: 7 Enter manager 20 on JIT Screen
			Then verify presence of /NumpadButtons/,"Enter manager password"
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 8 Select COKE on Void Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,^COKE^
#Action: 9 Select OK on Void Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,[OK]
#Action: 10 Select Void Reason on Void Screen
			Then verify presence of /SelectEntityDialog/,"Select Void Reason",/DialogSeparator/,[TESTING],[OVERRING],[MISRING],[*86*],[X],[Cancel]
			Then clicked /DialogSeparator/,[OVERRING]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Table","COKE"
			Then clicked [$]
#Action: 12 Select Close on Payment Screen
			Then verify presence of /ItemEntries/,"Table","COKE",/Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
