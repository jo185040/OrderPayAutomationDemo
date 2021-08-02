Feature: 11 Modifiers

@ modifiers

Scenario: 1 Modifier Weight 2
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
# 5 Order BBQ Ribs
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "BBQ\RIBS"
# 6 On Ribs Submenu order 1/2 Rack
	Given screen state [RightModifierButtons~1/2 RACK],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~BBQ RIBS","Modifer~11.99"
	Then clicked [1/2 RACK]
# 7 On Ribs Submenu order 1/2 Rack
	Given screen state "Modifer~ - 1/2 RACK",[RightModifierButtons~1/2 RACK],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~BBQ RIBS","Modifer~11.99"
	Then clicked [1/2 RACK]
# 8 On Starch press Baked Potato OK
	Given screen state "Modifer~ - 1/2 RACK",[RightModifierButtons~Baked Potato],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~BBQ RIBS","Modifer~11.99"
	Then clicked [Baked Potato]
# 9 On Soup Mod, select Cup
	Given screen state "Modifer~ - 1/2 RACK",[RightModifierButtons~HOUSE\SALAD],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~BBQ RIBS","Modifer~11.99"
	Then clicked [CUP]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","EntriesBySeat~41.89"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","EntriesBySeat~41.89"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "Comps~Sub Total","Comps~41.89","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.45","Tenders~Balance Due","Tenders~$44.45"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "Comps~Sub Total","Comps~41.89","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.45","Tenders~Balance Due","Tenders~$44.45","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Modifier Weight 1
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
# 5 Order Pork Chop
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\CHOP"
# 6 On Meat Temp Press OK
	Given screen state "Modifer~PORK CHOP","Modifer~11.99",[CenterCategoryButtons~MEAT TEMP],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],[RightModifierButtons~BLACK & BLUE]
	Then clicked [MEDIUM]
# 7 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","EntriesBySeat~11.99"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","EntriesBySeat~11.99"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72","Tenders~CASH","Tenders~Change"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify Apps submenu items contains exceptional mod group Pizza.
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
# 4 Select Apps Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~APPS]
# 5 Order Quesidilla
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "QUESADILLA"
# 6 Select Quesidilla on Guest Check
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~QUESADILLA","EntriesBySeat~5.00"
	Then clicked "EntriesBySeat~QUESADILLA"
# 7 Modify Quesidilla
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~QUESADILLA","EntriesBySeat~5.00"
	Then clicked [BottomButtons~Modify]
# 8 Add Avacado Modifier on Special Menu
	Given screen state [RightModifierButtons~ADD\AVOCADO]
	Then clicked [ADD\AVOCADO]
# 9 Select OK Button
	Given screen state "Modifer~QUESADILLA"," Modifer~5.00","Modifer~ - ADD AVOCADO"
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~QUESADILLA\ ADD AVOCADO","EntriesBySeat~5.00\0.80"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~QUESADILLA\ ADD AVOCADO","EntriesBySeat~5.00\0.80"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~QUESADILLA\ ADD AVOCADO","ItemEntries~5.00\0.80","Comps~5.80","Taxes~0.35","Taxes~6.15"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~QUESADILLA\ ADD AVOCADO","ItemEntries~5.00\0.80","Comps~5.80","Taxes~0.35","Taxes~6.15","Tenders~CASH","Tenders~6.15","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Forced Modifier
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
	When swiped up on CenterMenuButtons~
	Then clicked [CenterMenuButtons~Combos]
# 5 Order Quick Burger
	Given screen state "MenuOrModButtons~COMBO 3"
	Then clicked "Quick Burger"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1", "EntriesBySeat~Quick Burger\ CUP\ CHEESECAKE","EntriesBySeat~5.99"
	Then clicked [HERE]
# 7 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1", "EntriesBySeat~Quick Burger\ CUP\ CHEESECAKE","EntriesBySeat~5.99"
	Then clicked [$]
# 8 Exact Payment
	Given screen state "Comps~Sub Total","Comps~5.99","Taxes~Tax","Taxes~0.37","Taxes~Total","Taxes~6.36","Tenders~Balance Due","Tenders~$6.36"
	When waited for 0.2 min
	Then clicked [Exact]
# 9 Click Close
	Given screen state "Comps~Sub Total","Comps~5.99","Taxes~Tax","Taxes~0.37","Taxes~Total","Taxes~6.36","Tenders~6.36","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Refill Drink
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
# 6 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 7 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 8 Add Coke Modifier
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00"
	Then clicked [COKE]
# 9 Press OK on modifier screen
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00","Modifer~ - COKE"
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked [HERE]
# 11 Select Coke
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ COKE","ItemEntries~2.00"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ COKE","ItemEntries~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 6 Verify refill do not go to other items
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
# 4 Add 7-UP
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "7 UP"
# 5 Add COKE
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~7 UP","EntriesBySeat~2.00"
	Then clicked "COKE"
# 6 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 7 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 8 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 9 Add Coke Modifier
	Given screen state "Modifer~COKE","Modifer~2.00",[CenterCategoryButtons~Drink Refill],[RightModifierButtons~COKE]
	Then clicked [COKE]
# 10 Press OK on modifier screen
	Given screen state "Modifer~COKE","Modifer~2.00","Modifer~ - COKE",[CenterCategoryButtons~Drink Refill],[RightModifierButtons~COKE]
	Then clicked [OK]
# 11 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~7 UP","EntriesBySeat~2.00","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked [HERE]
# 12 Select Coke
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~7 UP","EntriesBySeat~2.00","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked [$]
# 13 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~7 UP","ItemEntries~2.00","ItemEntries~COKE\ COKE","ItemEntries~2.00","Comps~4.00","Taxes~4.00"
	Then clicked [Exact]
# 14 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~7 UP","ItemEntries~2.00","ItemEntries~COKE\ COKE","ItemEntries~2.00","Comps~4.00","Taxes~4.00","Tenders~4.00"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 7 Verify refill can be deleted
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
# 5 Apply HERE Ordermodejio
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 6 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 7 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 8 Add Coke Modifier
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00"
	Then clicked [COKE]
# 9 Press OK on modifier screen
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00","Modifer~ - COKE"
	Then clicked [OK]
# 10 Select Coke with refill
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE\ COKE\"
# 11 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 12 Select Coke with refill
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE\","EntriesBySeat~2.00"
	Then clicked " - COKE"
# 13 Delete Modifier Coke
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00","Modifer~ - COKE"
	Then clicked [Delete Modifier]
# 14 OK Modifier Coke
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00"
	Then clicked [OK]
# 15 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 16 Exact Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 17 Click Close
	Given screen state "Tenders~CASH", "Tenders~2.00", "Tenders~Change", "Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 18 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 8 Verify refilled item can be voided
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
# 6 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 7 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 8 Add Coke Modifier
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00"
	Then clicked [COKE]
# 9 Press OK on modifier screen
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00","Modifer~ - COKE"
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 11 Select Coke on Check
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked "COKE\ COKE"
# 12 Void COKE
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked [BottomButtons~Void]
# 13 Select COKE on Void Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked (Items~COKE\ COKE)
# 14 Select OK on Void Screen
	Given screen state "ItemSelectionDialog~Select items to void"
	Then clicked [Items~OK]
# 15 Select Void Reason on Void Screen
	Given screen state "SelectEntityDialog~Select Void Reason",[DialogSeparator~TESTING],[DialogSeparator~OVERRING],[DialogSeparator~MISRING],[DialogSeparator~*86*],[DialogSeparator~X],[DialogSeparator~Cancel]
	Then clicked [DialogSeparator~OVERRING]
# 16 Select Payment
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE"
	Then clicked [$]
# 17 Click Close
	Given screen state "Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 18 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 9 Verify you cannot refill a voided item
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
# 6 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 7 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 8 Add Coke Modifier
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00"
	Then clicked [COKE]
# 9 Press OK on modifier screen
	Given screen state [RightModifierButtons~COKE],[CenterCategoryButtons~Drink Refill],"Modifer~COKE","Modifer~2.00","Modifer~ - COKE"
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 11 Select Coke on Check
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked "COKE\ COKE"
# 12 Void COKE
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked [BottomButtons~Void]
# 13 Select COKE on Void Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE","EntriesBySeat~2.00"
	Then clicked (Items~COKE\ COKE)
# 14 Select OK on Void Screen
	Given screen state "ItemSelectionDialog~Select items to void"
	Then clicked [Items~OK]
# 15 Select Void Reason on Void Screen
	Given screen state "SelectEntityDialog~Select Void Reason",[DialogSeparator~TESTING],[DialogSeparator~OVERRING],[DialogSeparator~MISRING],[DialogSeparator~*86*],[DialogSeparator~X],[DialogSeparator~Cancel]
	Then clicked [DialogSeparator~OVERRING]
# 16 Select COKE refill on Guest Check
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE"
	Then clicked "COKE\ COKE"
# 17 Modify Coke
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE"
	Then clicked [Modify]
# 18 Select OK
	Given screen state "MessageDialog~Modify Error","DialogSeparator~Select an unordered item to modify before pressing the modify button.",[DialogSeparator~X],[DialogSeparator~OK]
	Then clicked [OK]
# 19 Select Payment
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ COKE"
	Then clicked [$]
# 20 Click Close
	Given screen state "Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 21 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 10 Verify Weighted Modifiers work with no issue
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
# 5 Order BBQ Ribs
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "BBQ\RIBS"
# 6 On Ribs Submenu order 1/2 Rack
	Given screen state [RightModifierButtons~1/2 RACK],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~BBQ RIBS","Modifer~11.99"
	Then clicked [FULL RACK]
# 7 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~- FULL RACK","Modifer~11.99","Modifer~BBQ RIBS"
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~CUP],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~- Baked Potato","Modifer~11.99","Modifer~- FULL RACK","Modifer~BBQ RIBS"
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~CASH","Tenders~44.50","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 11 Verify Tenderlin Wraps item contains exceptional mod group Pizza right after required Starch mod group
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
# 4 Select Apps Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~APPS]
# 5 Order Tenderlin wraps
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "TENDERLN\WRAPS"
# 6 Select Baked Potatoe
	Given screen state [RightModifierButtons~Baked Potato],[RightModifierButtons~BUFFET],[RightModifierButtons~No Starch]
	Then clicked [Baked Potato]
# 7 Select Tenderlin Wrap
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~TENDERLN WRAPS\ Baked Potato"
# 8 Modify Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [BottomButtons~Modify]
# 9 Select Special Button
	Given screen state "Modifer~TENDERLN WRAPS","Modifer~5.00","Modifer~ - Baked Potato",[CenterCategoryButtons~STARCH],[RightModifierButtons~Baked Potato],[RightModifierButtons~BUFFET],[RightModifierButtons~No Starch]
	Then clicked [Special]
# 10 On Starch Modgroup, Select Avocado
	Given screen state "Modifer~TENDERLN WRAPS","Modifer~5.00","Modifer~ - Baked Potato",[CenterCategoryButtons~STARCH],[RightModifierButtons~Baked Potato],[RightModifierButtons~1000\ISLAND],[RightModifierButtons~ADD\AVOCADO]
	Then clicked [ADD\AVOCADO]
# 11 Verify AVOCADO added, exit mods by "OK"
	Given screen state "Modifer~TENDERLN WRAPS","Modifer~5.00","Modifer~ - Baked Potato","Modifer~- ADD AVOCADO"
	Then clicked [OK]
# 12 Verify prices, order items HERE
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TENDERLN WRAPS\ Baked Potato\ ADD AVOCADO","EntriesBySeat~5.00\\0.80"
	Then clicked [HERE]
# 13 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~TENDERLN WRAPS\ Baked Potato\ ADD AVOCADO","EntriesBySeat~5.00\\0.80"
	Then clicked [$]
# 14 Exact Payment
	Given screen state "Comps~Sub Total","Comps~5.80","Taxes~Tax","Taxes~0.35","Taxes~Total","Taxes~6.15","Tenders~Balance Due","Tenders~$6.15"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "Comps~Sub Total","Comps~5.80","Taxes~Tax","Taxes~0.35","Taxes~Total","Taxes~6.15","Tenders~Balance Due","Tenders~$6.15","Tenders~CASH","Tenders~Change"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 12 Verify adding mod with NO mod code is indicated by NO prefix on check
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
# 5 Select Coke on Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 6 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 7 Add Coke Modifier
	Given screen state "Modifer~COKE","Modifer~2.00",[CenterCategoryButtons~Drink Mods],[RightModifierButtons~Ice],[RightModifierButtons~Sugar]
	Then clicked [No]
	Then clicked [Ice]
# 8 Press OK on modifier screen
	Given screen state "Modifer~COKE","Modifer~2.00","- NO Ice",[CenterCategoryButtons~Drink Mods],[RightModifierButtons~Ice],[RightModifierButtons~Sugar]
	Then clicked [OK]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ NO Ice","EntriesBySeat~2.00"
	Then clicked [HERE]
# 10 Select Coke
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ NO Ice","EntriesBySeat~2.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ NO Ice","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ NO Ice","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 13 Verify adding mod with Extra mod code is indicated by XT prefix on check
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
# 5 Select Coke on Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 6 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 7 Add "Extra" Modifier
	Given screen state "Modifer~COKE","Modifer~2.00",[CenterCategoryButtons~Drink Mods],[RightModifierButtons~Ice],[RightModifierButtons~Sugar]
	Then clicked [Extra]
	Then clicked [Ice]
# 8 Press OK on modifier screen
	Given screen state "Modifer~COKE","Modifer~2.00","Modifer~- XT Ice",[CenterCategoryButtons~Drink Mods],[RightModifierButtons~Ice],[RightModifierButtons~Sugar]
	Then clicked [OK]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ XT Ice","EntriesBySeat~2.00"
	Then clicked [HERE]
# 10 Select Payemnts Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\ XT Ice","EntriesBySeat~2.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ XT Ice","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\ XT Ice","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 14 Verify price is combined on Porkchop item with Red Beans modifier
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
# 5 Order Pork Chop
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\CHOP"
# 6 On Meat Temp Press OK
	Given screen state "Modifer~PORK CHOP","Modifer~11.99",[CenterCategoryButtons~MEAT TEMP],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],[RightModifierButtons~BLACK & BLUE]
	Then clicked [MEDIUM]
# 7 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Red Beans]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ MEDIUM\ Red Beans\ CUP","EntriesBySeat~12.99"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ MEDIUM\ Red Beans\ CUP","EntriesBySeat~12.99"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK CHOP\ MEDIUM\ Red Beans\ CUP","ItemEntries~12.99","Comps~Sub Total","Comps~12.99","Taxes~Tax","Taxes~0.79","Taxes~Total","Taxes~13.78","Tenders~Balance Due","Tenders~$13.78"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK CHOP\ MEDIUM\ Red Beans\ CUP","ItemEntries~12.99","Comps~Sub Total","Comps~12.99","Taxes~Tax","Taxes~0.79","Taxes~Total","Taxes~13.78","Tenders~Balance Due","Tenders~$13.78","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 15 Verify price is combined on Porkchop item with Black Beans modifier
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
# 5 Order Pork Chop
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\CHOP"
# 6 On Meat Temp Press OK
	Given screen state "Modifer~PORK CHOP","Modifer~11.99",[CenterCategoryButtons~MEAT TEMP],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],[RightModifierButtons~BLACK & BLUE]
	Then clicked [MEDIUM]
# 7 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Black Beans]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ MEDIUM\ Black Beans\ CUP","EntriesBySeat~11.99\\1.00"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ MEDIUM\ Black Beans\ CUP","EntriesBySeat~11.99\\1.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK CHOP\ MEDIUM\ Black Beans\ CUP","ItemEntries~11.99\\1.00","Comps~Sub Total","Comps~12.99","Taxes~Tax","Taxes~0.79","Taxes~Total","Taxes~13.78","Tenders~Balance Due","Tenders~$13.78"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~PORK CHOP\ MEDIUM\ Black Beans\ CUP","ItemEntries~11.99\\1.00","Comps~Sub Total","Comps~12.99","Taxes~Tax","Taxes~0.79","Taxes~Total","Taxes~13.78","Tenders~Balance Due","Tenders~$13.78","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 16 Typed Modifier
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
# 5 Select Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "EntriesBySeat~COKE"
# 6 Modify Coke
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Modify]
# 7 Add Typed Modifier
	Given screen state "Modifer~COKE","Modifer~2.00",[CenterCategoryButtons~Drink Mods],[RightModifierButtons~Ice],[RightModifierButtons~Sugar]
	Then clicked [BottomLeftButtons~btnPrinter]
# 8 Add Typed Modifier Message
	Given screen state [RightModifierButtons~Ice],[RightModifierButtons~Sugar],[CenterCategoryButtons~Drink Mods]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 9 Press OK on modifier screen
	Given screen state "Modifer~COKE","Modifer~2.00","Modifer~test",[RightModifierButtons~Ice],[RightModifierButtons~Sugar],[CenterCategoryButtons~Drink Mods]
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\test","EntriesBySeat~2.00"
	Then clicked [HERE]
# 11 Select Coke
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~COKE\test","EntriesBySeat~2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\test","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE\test","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 17 Verify ordering items with mods on panel is working without issue
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
# 4 Select Mod Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Mod Menu\Items]
# 5 Order Special Burger
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Special\Burger"
# 6 Select Rare Temp
	Given screen state "Modifer~Special Burger","Modifer~5.50",[CenterCategoryButtons~Special Burger],[RightPanelButtons~Special\Message],[RightPanelButtons~No],[RightPanelButtons~Actual\Count]
	Then clicked [RightPanelButtons~RARE]
# 7 On Starch press Baked Potato OK
	Given screen state "Modifer~Special Burger","Modifer~5.50",[CenterCategoryButtons~Special Burger],[RightPanelButtons~Special\Message],[RightPanelButtons~No],[RightPanelButtons~Actual\Count]
	Then clicked [RightPanelButtons~BACON]
# 8 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Special Burger\ RARE\ BACON","EntriesBySeat~6.50"
	Then clicked [HERE]
# 9 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Special Burger\ RARE\ BACON","EntriesBySeat~6.50"
	Then clicked [$]
# 10 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Special Burger\ RARE\ BACON","ItemEntries~6.50","Comps~Sub Total","Comps~6.50","Taxes~Tax","Taxes~0.40","Taxes~Total","Taxes~6.90","Tenders~Balance Due","Tenders~$6.90"
	Then clicked [Exact]
# 11 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~Special Burger\ RARE\ BACON","ItemEntries~6.50","Comps~Sub Total","Comps~6.50","Taxes~Tax","Taxes~0.40","Taxes~Total","Taxes~6.90","Tenders~Balance Due","Tenders~$6.90","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 18 Verify modifier panel is working on Special burger item (submenu Combos).
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
# 4 Select Mod Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Mod Menu\Items]
# 5 Order Special Burger
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Special\Burger"
# 6 Select Rare Temp
	Given screen state "Modifer~Special Burger","Modifer~5.50",[CenterCategoryButtons~Special Burger],[RightPanelButtons~Special\Message],[RightPanelButtons~No],[RightPanelButtons~Actual\Count]
	Then clicked [RightPanelButtons~RARE]
# 7 Select Clear Temp
	Given screen state "Modifer~Special Burger","Modifer~5.50",[CenterCategoryButtons~Special Burger],[RightPanelButtons~Special\Message],[RightPanelButtons~No],[RightPanelButtons~Actual\Count]
	Then clicked [RightPanelButtons~Clear\modifiers]
# 8 On Starch press Baked Potato OK
	Given screen state "Modifer~Special Burger","Modifer~5.50",[CenterCategoryButtons~Special Burger],[RightPanelButtons~Special\Message],[RightPanelButtons~No],[RightPanelButtons~Actual\Count]
	Then clicked [RightPanelButtons~BACON]
# 9 On Starch press Baked Potato OK
	Given screen state "Modifer~Special Burger","Modifer~5.50",[CenterCategoryButtons~Special Burger],[RightPanelButtons~Special\Message],[RightPanelButtons~No],[RightPanelButtons~Actual\Count]
	Then clicked [RightPanelButtons~BACON]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Special Burger\ BACON\ BACON","EntriesBySeat~7.50"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Special Burger\ BACON\ BACON","EntriesBySeat~7.50"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Special Burger\ BACON\ BACON","ItemEntries~7.50","Comps~Sub Total","Comps~7.50","Taxes~Tax","Taxes~0.46","Taxes~Total","Taxes~7.96","Tenders~Balance Due","Tenders~$7.96"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~Special Burger\ BACON\ BACON","ItemEntries~7.50","Comps~Sub Total","Comps~7.50","Taxes~Tax","Taxes~0.46","Taxes~Total","Taxes~7.96","Tenders~Balance Due","Tenders~$7.96","Tenders~Change","Tenders~$0.00","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
