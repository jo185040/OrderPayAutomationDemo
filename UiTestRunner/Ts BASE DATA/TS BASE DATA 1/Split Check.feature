Feature: 27 Split Check

@ TSSmokeTest

Scenario: 1 Verify that you can split checks with unordered items using the �Split Button�
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
# 5 Add 7Up
	Given screen state {164}
	Then clicked [Seats~+]
	Then clicked "7 UP"
# 6 Add Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Split Check]
# 7 Select "7Up"
	Given screen state {056}
	Then clicked "7 UP"
# 8 Add Check
	Given screen state {056}
	Then clicked [Add]
# 9 Add Check
	Given screen state {057}
	Then clicked [Close]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~7 UP","EntriesBySeat~2.00"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~7 UP","EntriesBySeat~2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~7 UP","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~7 UP","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify that you can split checks with ordered items using the �Split Button�
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
# 5 Add 7Up
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Seats~+]
	Then clicked "7 UP"
# 6 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 7 Add Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Split Check]
# 8 Select "7Up"
	Given screen state {056}
	Then clicked "7 UP"
# 9 Add Check
	Given screen state {056}
	Then clicked [Add]
# 10 Add Check
	Given screen state {057}
	Then clicked [Close]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~7 UP","EntriesBySeat~2.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~7 UP","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~7 UP","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify that you can split checks with the “+” sign
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
# 5 Add Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TableAndChecks~+]
# 6 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 7 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~COKE","EntriesBySeat~2.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Verify you can split seats with items with modifiers
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
	Given screen state [RightModifierButtons~1/2 RACK]
	Then clicked [1/2 RACK]
# 7 On Ribs Submenu order 1/2 Rack
	Given screen state [RightModifierButtons~1/2 RACK]
	Then clicked [1/2 RACK]
# 8 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 9 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 10 Order Pork Chop
	Given screen state {108}
	Then clicked "PORK\CHOP"
# 11 On Meat Temp Press OK
	Given screen state [RightModifierButtons~BLACK & BLUE]
	Then clicked [MEDIUM]
# 12 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 13 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 14 Split Seat
	Given screen state {034}
	Then clicked [TopLeftButtons~Split Seat]
# 15 Select "Pork Chop"
	Given screen state {058}
	Then clicked "CheckOrSeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP"
# 16 Add Check
	Given screen state {058}
	Then clicked [BottomCenterButtons~Add]
# 17 Close Check
	Given screen state {059}
	Then clicked [BottomCenterButtons~Close]
# 18 Apply HERE Ordermode
	Given screen state "EntriesBySeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","EntriesBySeat~11.99"
	Then clicked [HERE]
# 19 Select $ on Payment Screen
	Given screen state "EntriesBySeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","EntriesBySeat~11.99"
	Then clicked [$]
# 20 Exact Payment
	Given screen state "Comps~Sub Total","Comps~53.88","Taxes~Tax","Taxes~3.29","Taxes~Total","Taxes~57.17","Tenders~Balance Due","Tenders~$57.17"
	Then clicked [Exact]
# 21 Click Close
	Given screen state "Comps~Sub Total","Comps~53.88","Taxes~Tax","Taxes~3.29","Taxes~Total","Taxes~57.17","Tenders~CASH","Tenders~57.17","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 22 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Verify you can split seat and put it to split check without leaving the split menu.
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
	Given screen state [RightModifierButtons~1/2 RACK]
	Then clicked [1/2 RACK]
# 7 On Ribs Submenu order 1/2 Rack
	Given screen state [RightModifierButtons~1/2 RACK]
	Then clicked [1/2 RACK]
# 8 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 9 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 10 Order Pork Chop
	Given screen state {108}
	Then clicked "PORK\CHOP"
# 11 On Meat Temp Press OK
	Given screen state [RightModifierButtons~BLACK & BLUE]
	Then clicked [MEDIUM]
# 12 On Starch press Baked Potato OK
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 13 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 14 Split Seat
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Split Seat]
# 15 Select "Pork Chop"
	Given screen state {058}
	Then clicked "CheckOrSeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP"
# 16 Add Check
	Given screen state {058}
	Then clicked [BottomCenterButtons~Add]
# 17 Split Check
	Given screen state {059}
	Then clicked [BottomCenterButtons~Split check]
# 18 Select "Pork Chop"
	Given screen state {060}
	Then clicked "CheckOrSeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP"
# 19 Add Check
	Given screen state {060}
	Then clicked [BottomCenterButtons~Add]
# 20 Close Check
	Given screen state {061}
	Then clicked [BottomCenterButtons~Close]
# 21 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","EntriesBySeat~11.99"
	Then clicked [HERE]
# 22 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","EntriesBySeat~11.99"
	Then clicked [$]
# 23 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","ItemEntries~41.89","Comps~Sub Total","Comps~41.89","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.45","Tenders~Balance Due","Tenders~$44.45"
	Then clicked [Exact]
# 24 Click Close
	Given screen state "ItemEntries~BBQ RIBS\ 1/2 RACK\ 1/2 RACK\ Baked Potato\ CUP","ItemEntries~41.89","Comps~Sub Total","Comps~41.89","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.45","Tenders~CASH","Tenders~44.45","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 25 Exact Payment
	Given screen state "ItemEntries~Seat 2","ItemEntries~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","ItemEntries~11.99","Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72"
	Then clicked [Exact]
# 26 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~PORK CHOP\ MEDIUM\ Baked Potato\ CUP","ItemEntries~11.99","Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~CASH","Tenders~12.72","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 27 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 6 Verify if you have more than 5 checks on split check screen you get an arrows to change the checks
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
	Then clicked [CenterMenuButtons~DRINKS]
# 5 Order Water on Seat 1
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "WATER"
# 6 Order Coke on Seat 2
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Seats~+]
	Then clicked "COKE"
# 7 Order Coke on Seat 3
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Seats~+]
	Then clicked "DIET COKE"
# 8 Order Coke on Seat 4
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Seats~+]
	Then clicked "DIET 7UP"
# 9 Order Coke on Seat 5
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Seats~+]
	Then clicked "ICED TEA"
# 10 Split Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Split Check]
# 11 Add Check "Coke"
	Given screen state {062}
	Then clicked "CheckOrSeat~COKE"
	Then clicked [BottomCenterButtons~Add]
# 12 Add Check "Diet Coke"
	Given screen state {063}
	Then clicked "CheckOrSeat~DIET COKE"
	Then clicked [BottomCenterButtons~Add]
# 13 Add Check "Diet 7Up"
	Given screen state {064}
	Then clicked "CheckOrSeat~DIET 7UP"
	Then clicked [BottomCenterButtons~Add]
# 14 Add Check "Iced Tea"
	Given screen state {065}
	Then clicked "CheckOrSeat~ICED TEA"
	Then clicked [BottomCenterButtons~Add]
# 15 Scroll Back to First Screen
	Given screen state {066}
	Then clicked [CheckOrSeat~<]
# 16 Close Check
	Given screen state {067}
	Then clicked [BottomCenterButtons~Close]
# 17 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 5","EntriesBySeat~ICED TEA","EntriesBySeat~2.00"
	Then clicked [HERE]
# 18 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 5","EntriesBySeat~ICED TEA","EntriesBySeat~2.00"
	Then clicked [$]
# 19 Close Check 1
	Given screen state "ItemEntries~Seat 1","ItemEntries~WATER","ItemEntries~0.00","Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 20 Exact Payment - Check 2
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 21 Click Close - Check 2
	Given screen state "ItemEntries~Seat 2","ItemEntries~COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 22 Exact Payment - Check 3
	Given screen state "ItemEntries~Seat 3","ItemEntries~DIET COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 23 Click Close - Check 3
	Given screen state "ItemEntries~Seat 3","ItemEntries~DIET COKE","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 24 Exact Payment - Check 4
	Given screen state "ItemEntries~Seat 4","ItemEntries~DIET 7UP","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 25 Click Close - Check 4
	Given screen state "ItemEntries~Seat 4","ItemEntries~DIET 7UP","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 26 Exact Payment - Check 5
	Given screen state "ItemEntries~Seat 5","ItemEntries~ICED TEA","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 27 Click Close - Check 5
	Given screen state "ItemEntries~Seat 5","ItemEntries~ICED TEA","ItemEntries~2.00","Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~CASH","Tenders~2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 28 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
