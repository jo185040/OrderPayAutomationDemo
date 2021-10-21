Feature: 23 Repeat


Scenario: 1 Verify Repeat works on unordered items
#Action: 1 Login as manager 200
			#TODO ALOHAP-33876 Cannot refill items
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
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Repeat Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /BottomButtons/,[Repeat]
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","2 PORK NACHOS","10.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","2 PORK NACHOS","10.00",/Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.61","Total","12.61",/Tenders/,"Balance Due","$12.61"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","2 PORK NACHOS","10.00",/Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.61","Total","12.61",/Tenders/,"CASH","12.61","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify Repeat works on ordered items
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
#Action: 5 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 7 Repeat Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /BottomButtons/,[Repeat]
#Action: 8 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","2 PORK NACHOS","10.00"
			Then clicked [$]
#Action: 10 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","2 PORK NACHOS","10.00",/Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.61","Total","12.61",/Tenders/,"Balance Due","$12.61"
			Then clicked [Exact]
#Action: 11 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","2 PORK NACHOS","10.00",/Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.61","Total","12.61",/Tenders/,"CASH","12.61","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify Repeat works on items with modifiers
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 On Ribs Submenu order 1/2 Rack
			Then verify presence of /RightModifierButtons/,[1/2 RACK]
			Then clicked [1/2 RACK]
#Action: 7 On Ribs Submenu order 1/2 Rack
			Then verify presence of /RightModifierButtons/,[1/2 RACK]
			Then clicked [1/2 RACK]
#Action: 8 On Starch press Baked Potato OK
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Baked Potato]
#Action: 9 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 10 Repeat Item
			Given screen state: 108
			Then clicked /BottomButtons/,[Repeat]
#Action: 11 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","2 BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","83.78"
			Then clicked [$]
#Action: 13 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","2 BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","83.78",/Comps/,"Sub Total","83.78",/Taxes/,"Tax","5.11","Total","88.89",/Tenders/,"Balance Due","$88.89"
			Then clicked [Exact]
#Action: 14 Click Close
			Then verify presence of /ItemEntries/,"2 BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","83.78",/Comps/,"Sub Total","83.78",/Taxes/,"Tax","5.11","Total","88.89",/Tenders/,"CASH","88.89","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify Repeat works on Smart Select items
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[Smart Beer]
#Action: 5 Order Pint Miller
			Then verify presence of /CenterMenuButtons/,[BEER]
			Then clicked [PINT]
			Then clicked "Miller Lite"
#Action: 6 Repeat Item
			Then verify presence of /CenterMenuButtons/,[BEER]
			Then clicked /BottomButtons/,[Repeat]
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[BEER]
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","2 PT MILLER LITE","10.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","2 PT MILLER LITE","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.00","Total","10.00",/Tenders/,"Balance Due","$10.00"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","2 PT MILLER LITE","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.00","Total","10.00",/Tenders/,"CASH","10.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify voided items cannot be repeated
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
#Action: 6 Void COKE
			Given screen state: 164
			Then clicked /BottomButtons/,[Void]
#Action: 7 Select COKE on Void Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Items/,^COKE^
#Action: 8 Select OK on Void Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Items/,[OK]
#Action: 9 Select Void Reason on Void Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /DialogSeparator/,[OVERRING]
#Action: 10 Repeat Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /BottomButtons/,[Repeat]
#Action: 11 Select OK Button
			Then verify presence of /DialogSeparator/,"Repeat is not permitted on Refillable Items:  COKE"
			Then clicked /DialogSeparator/,[OK]
#Action: 12 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE"
			Then clicked [$]
#Action: 13 Select Close on Payment Screen
			Then verify presence of /ItemEntries/,"Seat 1","COKE",/Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
