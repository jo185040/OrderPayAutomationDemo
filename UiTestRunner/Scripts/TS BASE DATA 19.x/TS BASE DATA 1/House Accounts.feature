Feature: 26 House Accounts


Scenario: 1 Pay with House Account & No Tip
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Given screen state: 164
			Then clicked [HERE]
#Action: 6 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 7 Add House Account Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [House Acc]
#Action: 8 Select OK on Dialog
			Then verify presence of /CurrencyInputDialog/,"Enter amount","$","2.00",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Skip Tip on Dialog
			Given screen state: 247
			Then clicked /BaseToolbarButtons/,[Skip]
#Action: 10 Add House Account 78
			Then verify presence of /KeyboardEntryDialog/,"Enter Account Name/Number"
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[8]
			Then clicked /DialogSeparator/,[Ok]
#Action: 11 Confirm Yes on Dialog
			Then verify presence of /ConfirmDialog/,"Confirm","Found account for TECH \Is this correct?"
			Then clicked /ConfirmDialog/,[Yes]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"TECH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Pay with House Account & 15% Tip
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 6 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 7 Add House Account Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [House Acc]
#Action: 8 Select OK on Dialog
			Then verify presence of /CurrencyInputDialog/,"Enter amount","$","2.00",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Skip Tip on Dialog
			Given screen state: 247
			Then clicked /TipChoice/,"15%"
#Action: 10 Add House Account 78
			Then verify presence of /KeyboardEntryDialog/,"Enter Account Name/Number"
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[8]
			Then clicked /DialogSeparator/,[Ok]
#Action: 11 Confirm Yes on Dialog
			Then verify presence of /ConfirmDialog/,"Confirm","Found account for TECH \Is this correct?"
			Then clicked /ConfirmDialog/,[Yes]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"TECH","2.00",/Tips/,"TIP","0.30","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
