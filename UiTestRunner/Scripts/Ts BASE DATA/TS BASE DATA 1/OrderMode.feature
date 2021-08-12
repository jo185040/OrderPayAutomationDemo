Feature: 14 OrderMode


Scenario: 1 Dine-In Order Mode
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
# 5 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 6 Add Miller Lite
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "MILLER\LITE"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE","EntriesBySeat~2.00","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~10.31","Tenders~Balance Due","Tenders~$10.31"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "Tenders~CASH","Tenders~10.31","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 ToGO Indicator Mode
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
# 4 Add Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 5 Apply TOGO Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [TO GO]
# 6 Select Pork Nachos Ordermode
	Given screen state "ItemSelectionDialog~Select items to order",(DialogSeparator~SELECT ALL),"DialogSeparator~SELECT ALL","Items~Check 1",(Items~PORK NACHOS),"Items~PORK NACHOS",[Items~Cancel],[Items~OK*]
	Then clicked (Items~PORK NACHOS)
	Then clicked [Items~OK]
# 7 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~-> PORK NACHOS","EntriesBySeat~5.00"
	Then clicked [$]
# 8 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~-> PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31"
	Then clicked [Exact]
# 9 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~-> PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Order Pork Chop Mods
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
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~ENTREES]
# 5 Select Pork Chop Mods
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\CHOP MODS"
# 6 Select Meat Temp on Pork Chop Mods
	Given screen state [RightModifierButtons~BLACK & BLUE]
	Then clicked [RightModifierButtons~MEDIUM]
# 7 Select Baked Potato on Starch Submenu
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~CUP],[RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 9 On Oatmeal, select Add Modifiers
	Given screen state [RightModifierButtons~ADD\BRWN SUGAR]
	Then clicked [RightModifierButtons~ADD\BRWN SUGAR]
	Then clicked [RightModifierButtons~ADD\RAISIN]
	Then clicked [RightModifierButtons~ADD\GRANOLA]
# 10 On Bagel Croissant select
	Given screen state [RightModifierButtons~ON\BAGEL]
	Then clicked [RightModifierButtons~ON\CROISSANT]
# 11 On Sub Hshbrwn select Sub Hashbrown
	Given screen state [RightModifierButtons~SUB\HASHBROWNS]
	Then clicked [RightModifierButtons~SUB\HASHBROWNS]
# 12 On Quiche select Veggie
	Given screen state [RightModifierButtons~VEGGIE]
	Then clicked [RightModifierButtons~VEGGIE]
# 13 On Toast select White
	Given screen state [RightModifierButtons~WHITE],[RightModifierButtons~RYE]
	Then clicked [RightModifierButtons~WHITE]
# 14 On Dressing select Ranch
	Given screen state [RightModifierButtons~RANCH],[RightModifierButtons~1000\ISLAND]
	When swiped up on CenterCategoryButtons~
	Then clicked [RightModifierButtons~RANCH]
# 15 On Fish Fry select Sweet Potatoe Fries
	Given screen state [RightModifierButtons~FRIES],[RightModifierButtons~NO SIDE]
	Then clicked [RightModifierButtons~SWT POT\FRIES]
# 16 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP MODS\ MEDIUM\ Baked Potato\ CUP\ ADD BRWN SUGAR\ ADD RAISIN\ ADD GRANOLA\ ON CROISSANT\ SUB HASHBROWNS\ VEGGIE\ WHITE\ RANCH\ SWT POT FRIES","EntriesBySeat~0.00\\\\\\\\1.50\\\\1.00"
	Then clicked [$]
# 17 Exact Payment
	Given screen state "ItemEntries~PORK CHOP MODS\ MEDIUM\ Baked Potato\ CUP\ ADD BRWN SUGAR\ ADD RAISIN\ ADD GRANOLA\ ON CROISSANT\ SUB HASHBROWNS\ VEGGIE\ WHITE\ RANCH\ SWT POT FRIES","ItemEntries~0.00\\\\\\\\1.50\\\\1.00","Comps~Sub Total","Comps~2.50","Taxes~Tax","Taxes~0.15"
	Then clicked [Exact]
# 18 Click Close
	Given screen state "ItemEntries~PORK CHOP MODS\ MEDIUM\ Baked Potato\ CUP\ ADD BRWN SUGAR\ ADD RAISIN\ ADD GRANOLA\ ON CROISSANT\ SUB HASHBROWNS\ VEGGIE\ WHITE\ RANCH\ SWT POT FRIES","ItemEntries~0.00\\\\\\\\1.50\\\\1.00","Comps~Sub Total","Comps~2.50","Taxes~Tax","Taxes~0.15"
	Then clicked [MidButtons~Close]
# 19 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
