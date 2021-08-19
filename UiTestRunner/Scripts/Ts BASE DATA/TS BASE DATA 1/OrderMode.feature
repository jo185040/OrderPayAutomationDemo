Feature: 14 OrderMode


Scenario: 1 Dine-In Order Mode
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
#Action: 6 Add Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 7 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","COKE","2.00","PORK NACHOS","5.00","MILLER LITE","3.00"
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.31","Total","10.31",/Tenders/,"Balance Due","$10.31"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /Tenders/,"CASH","10.31","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 ToGO Indicator Mode
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
#Action: 4 Add Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 5 Apply TOGO Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS","5.00"
			Then clicked [TO GO]
#Action: 6 Select Pork Nachos Ordermode
			Then verify presence of /ItemSelectionDialog/,"Select items to order",/DialogSeparator/,^SELECT ALL^,"SELECT ALL",/Items/,"Check 1",^PORK NACHOS^,"PORK NACHOS",[Cancel],[OK*]
			Then clicked /Items/,^PORK NACHOS^
			Then clicked /Items/,[OK]
#Action: 7 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","-> PORK NACHOS","5.00"
			Then clicked [$]
#Action: 8 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","-> PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31"
			Then clicked [Exact]
#Action: 9 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","-> PORK NACHOS","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31","Change","$0.00","CASH"
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Order Pork Chop Mods
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
#Action: 5 Select Pork Chop Mods
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\CHOP MODS"
#Action: 6 Select Meat Temp on Pork Chop Mods
			Then verify presence of /RightModifierButtons/,[BLACK & BLUE]
			Then clicked /RightModifierButtons/,[MEDIUM]
#Action: 7 Select Baked Potato on Starch Submenu
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[CUP],[HOUSE\SALAD]
			Then clicked [CUP]
#Action: 9 On Oatmeal, select Add Modifiers
			Then verify presence of /RightModifierButtons/,[ADD\BRWN SUGAR]
			Then clicked /RightModifierButtons/,[ADD\BRWN SUGAR]
			Then clicked /RightModifierButtons/,[ADD\RAISIN]
			Then clicked /RightModifierButtons/,[ADD\GRANOLA]
#Action: 10 On Bagel Croissant select
			Then verify presence of /RightModifierButtons/,[ON\BAGEL]
			Then clicked /RightModifierButtons/,[ON\CROISSANT]
#Action: 11 On Sub Hshbrwn select Sub Hashbrown
			Then verify presence of /RightModifierButtons/,[SUB\HASHBROWNS]
			Then clicked /RightModifierButtons/,[SUB\HASHBROWNS]
#Action: 12 On Quiche select Veggie
			Then verify presence of /RightModifierButtons/,[VEGGIE]
			Then clicked /RightModifierButtons/,[VEGGIE]
#Action: 13 On Toast select White
			Then verify presence of /RightModifierButtons/,[WHITE],[RYE]
			Then clicked /RightModifierButtons/,[WHITE]
#Action: 14 On Dressing select Ranch
			Then verify presence of /RightModifierButtons/,[RANCH],[1000\ISLAND]
			When swiped up on /CenterCategoryButtons/
			Then clicked /RightModifierButtons/,[RANCH]
#Action: 15 On Fish Fry select Sweet Potatoe Fries
			Then verify presence of /RightModifierButtons/,[FRIES],[NO SIDE]
			Then clicked /RightModifierButtons/,[SWT POT\FRIES]
#Action: 16 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK CHOP MODS\ MEDIUM\ Baked Potato\ CUP\ ADD BRWN SUGAR\ ADD RAISIN\ ADD GRANOLA\ ON CROISSANT\ SUB HASHBROWNS\ VEGGIE\ WHITE\ RANCH\ SWT POT FRIES","0.00\\\\\\\\1.50\\\\1.00"
			Then clicked [$]
#Action: 17 Exact Payment
			Then verify presence of /ItemEntries/,"PORK CHOP MODS\ MEDIUM\ Baked Potato\ CUP\ ADD BRWN SUGAR\ ADD RAISIN\ ADD GRANOLA\ ON CROISSANT\ SUB HASHBROWNS\ VEGGIE\ WHITE\ RANCH\ SWT POT FRIES","0.00\\\\\\\\1.50\\\\1.00",/Comps/,"Sub Total","2.50",/Taxes/,"Tax","0.15"
			Then clicked [Exact]
#Action: 18 Click Close
			Then verify presence of /ItemEntries/,"PORK CHOP MODS\ MEDIUM\ Baked Potato\ CUP\ ADD BRWN SUGAR\ ADD RAISIN\ ADD GRANOLA\ ON CROISSANT\ SUB HASHBROWNS\ VEGGIE\ WHITE\ RANCH\ SWT POT FRIES","0.00\\\\\\\\1.50\\\\1.00",/Comps/,"Sub Total","2.50",/Taxes/,"Tax","0.15"
			Then clicked /MidButtons/,[Close]
#Action: 19 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
