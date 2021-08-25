#TODO fix moving items on split check
Feature: 27 Split Check


Scenario: 1 Verify that you can split checks with unordered items using the �Split Button�
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
#Action: 5 Add 7Up
			Given screen state: 164
			Then clicked /Seats/,[+]
			Then clicked "7 UP"
#Action: 6 Add Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Split Check]
#Action: 7 Select "7Up"
			Given screen state: 056
			Then clicked "7 UP"
#Action: 8 Tap 'Add' to move 7UP to new Check 2
			Given screen state: 056
			Then clicked [Add]
#Action: 9 Tap 'Add' to create Check 3
			Given screen state: 057
			Then clicked [Add]
#Action: 10 Select "COKE"
			Given screen state: 243
			Then clicked "COKE"
#Action: 11 Tap 'Check 3' area to move All Seat 1 Items to Check 3
			Given screen state: 243
			Then clicked /CheckOrSeat.3/
#Action: 12 Close Add Check Screen
			Given screen state: 244
			Then clicked [Close]
#Action: 13 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 2","7 UP","2.00"
			Then clicked [HERE]
#Action: 14 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 2","7 UP","2.00"
			Then clicked [$]
#Action: 15 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","7 UP","2.00",
			Then clicked [Exact]
#Action: 16 Click Close
			Then verify presence of /Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 17 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00"
			Then clicked [Exact]
#Action: 18 Click Close
			Then verify presence of /Tenders/,"CASH","2.00","Change","$0.00",
			Then clicked /MidButtons/,[Close]
#Action: 19 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify that you can split checks with ordered items using the �Split Button�
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
#Action: 5 Add 7Up
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Seats/,[+]
			Then clicked "7 UP"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 7 Add Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Split Check]
#Action: 8 Select "7Up"
			Given screen state: 056
			Then clicked "7 UP"
#Action: 9 Add Check
			Given screen state: 056
			Then clicked [Add]
#Action: 10 Add Check
			Given screen state: 057
			Then clicked [Close]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 2","7 UP","2.00"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /ItemEntries/,"COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","7 UP","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /ItemEntries/,"Seat 2","7 UP","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify that you can split checks with the “+” sign
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
#Action: 5 Add Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TableAndChecks/,[+]
#Action: 6 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 2","COKE","2.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /ItemEntries/,"COKE","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /ItemEntries/,"Seat 2","2.00",/Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify you can split seats with items with modifiers
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
#Action: 10 Order Pork Chop
			Given screen state: 108
			Then clicked "PORK\CHOP"
#Action: 11 On Meat Temp Press OK
			Then verify presence of /RightModifierButtons/,[BLACK & BLUE]
			Then clicked [MEDIUM]
#Action: 12 On Starch press Baked Potato OK
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Baked Potato]
#Action: 13 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 14 Split Seat
			Given screen state: 034
			Then clicked /TopLeftButtons/,[Split Seat]
#Action: 15 Select "Pork Chop"
			Given screen state: 058
			Then clicked /CheckOrSeat/,"PORK CHOP\ MEDIUM\ Baked Potato\ CUP"
#Action: 16 Add Check
			Given screen state: 058
			Then clicked /BottomCenterButtons/,[Add]
#Action: 17 Close Check
			Given screen state: 059
			Then clicked /BottomCenterButtons/,[Close]
#Action: 18 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"PORK CHOP\ MEDIUM\ Baked Potato\ CUP","11.99"
			Then clicked [HERE]
#Action: 19 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"PORK CHOP\ MEDIUM\ Baked Potato\ CUP","11.99"
			Then clicked [$]
#Action: 20 Exact Payment
			Then verify presence of /Comps/,"Sub Total","53.88",/Taxes/,"Tax","3.29","Total","57.17",/Tenders/,"Balance Due","$57.17"
			Then clicked [Exact]
#Action: 21 Click Close
			Then verify presence of /Comps/,"Sub Total","53.88",/Taxes/,"Tax","3.29","Total","57.17",/Tenders/,"CASH","57.17","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 22 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify you can split seat and put it to split check without leaving the split menu.
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
#Action: 10 Order Pork Chop
			Given screen state: 108
			Then clicked "PORK\CHOP"
#Action: 11 On Meat Temp Press OK
			Then verify presence of /RightModifierButtons/,[BLACK & BLUE]
			Then clicked [MEDIUM]
#Action: 12 On Starch press Baked Potato OK
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Baked Potato]
#Action: 13 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 14 Split Seat
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Split Seat]
#Action: 15 Select "Pork Chop"
			Given screen state: 058
			Then clicked /CheckOrSeat/,"PORK CHOP\ MEDIUM\ Baked Potato\ CUP"
#Action: 16 Add Check
			Given screen state: 058
			Then clicked /BottomCenterButtons/,[Add]
#Action: 17 Split Check
			Given screen state: 059
			Then clicked /BottomCenterButtons/,[Split check]
#Action: 18 Select "Pork Chop"
			Given screen state: 060
			Then clicked /CheckOrSeat/,"PORK CHOP\ MEDIUM\ Baked Potato\ CUP"
#Action: 19 Add Check
			Given screen state: 060
			Then clicked /BottomCenterButtons/,[Add]
#Action: 20 Close Check
			Given screen state: 061
			Then clicked /BottomCenterButtons/,[Close]
#Action: 21 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 2","PORK CHOP\ MEDIUM\ Baked Potato\ CUP","11.99"
			Then clicked [HERE]
#Action: 22 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 2","PORK CHOP\ MEDIUM\ Baked Potato\ CUP","11.99"
			Then clicked [$]
#Action: 23 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","41.89",/Comps/,"Sub Total","41.89",/Taxes/,"Tax","2.56","Total","44.45",/Tenders/,"Balance Due","$44.45"
			Then clicked [Exact]
#Action: 24 Click Close
			Then verify presence of /ItemEntries/,"BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","41.89",/Comps/,"Sub Total","41.89",/Taxes/,"Tax","2.56","Total","44.45",/Tenders/,"CASH","44.45","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 25 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 2","PORK CHOP\ MEDIUM\ Baked Potato\ CUP","11.99",/Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72"
			Then clicked [Exact]
#Action: 26 Click Close
			Then verify presence of /ItemEntries/,"Seat 2","PORK CHOP\ MEDIUM\ Baked Potato\ CUP","11.99",/Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"CASH","12.72","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 27 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify if you have more than 5 checks on split check screen you get an arrows to change the checks
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
			Then clicked /CenterMenuButtons/,[DRINKS]
#Action: 5 Order Water on Seat 1
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "WATER"
#Action: 6 Order Coke on Seat 2
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Seats/,[+]
			Then clicked "COKE"
#Action: 7 Order Coke on Seat 3
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Seats/,[+]
			Then clicked "DIET COKE"
#Action: 8 Order Coke on Seat 4
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Seats/,[+]
			Then clicked "DIET 7UP"
#Action: 9 Order Coke on Seat 5
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /Seats/,[+]
			Then clicked "ICED TEA"
#Action: 10 Split Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Split Check]
#Action: 11 Add Check "Coke"
			Given screen state: 062
			Then clicked /CheckOrSeat/,"COKE"
			Then clicked /BottomCenterButtons/,[Add]
#Action: 12 Add Check "Diet Coke"
			Given screen state: 063
			Then clicked /CheckOrSeat/,"DIET COKE"
			Then clicked /BottomCenterButtons/,[Add]
#Action: 13 Add Check "Diet 7Up"
			Given screen state: 064
			Then clicked /CheckOrSeat/,"DIET 7UP"
			Then clicked /BottomCenterButtons/,[Add]
#Action: 14 Add Check "Iced Tea"
			Given screen state: 065
			Then clicked /CheckOrSeat/,"ICED TEA"
			Then clicked /BottomCenterButtons/,[Add]
#Action: 15 Scroll Back to First Screen
			Given screen state: 066
			Then clicked /CheckOrSeat/,[<]
#Action: 16 Close Check
			Given screen state: 067
			Then clicked /BottomCenterButtons/,[Close]
#Action: 17 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 5","ICED TEA","2.00"
			Then clicked [HERE]
#Action: 18 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 5","ICED TEA","2.00"
			Then clicked [$]
#Action: 19 Close Check 1
			Given screen state: 225
			Then clicked /MidButtons/,[Close]
#Action: 20 Exact Payment - Check 2
			Given screen state: 226
			Then clicked [Exact]
#Action: 21 Click Close - Check 2
			Given screen state: 227
			Then clicked /MidButtons/,[Close]
#Action: 22 Exact Payment - Check 3
			Given screen state: 228
			Then clicked [Exact]
#Action: 23 Click Close - Check 3
			Given screen state: 229
			Then clicked /MidButtons/,[Close]
#Action: 24 Exact Payment - Check 4
			Given screen state: 230
			Then clicked [Exact]
#Action: 25 Click Close - Check 4
			Given screen state: 231
			Then clicked /MidButtons/,[Close]
#Action: 26 Exact Payment - Check 5
			Given screen state: 232
			Then clicked [Exact]
#Action: 27 Click Close - Check 5
			Given screen state: 233
			Then clicked /MidButtons/,[Close]
#Action: 28 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
