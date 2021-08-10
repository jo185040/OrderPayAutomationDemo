Feature: 5 Combos

@ combos

Scenario: 1 Verify you can add combo
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
	And clicked [OK]
# 4 Select Entrees Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	When swiped up on CenterMenuButtons~
	Then clicked [CenterMenuButtons~Combos]
# 5 Order Combo 3
	Given screen state "MenuOrModButtons~COMBO 3"
	Then clicked "COMBO 3"
# 6 On Combo Page, Click Tilpia
	Given screen state [CenterCategoryButtons~COMBO 3],[RightModifierButtons~TILAPIA],[RightModifierButtons~GRILLED\CHCKEN],[RightModifierButtons~ROASTED\CHCKEN]
	Then clicked [TILAPIA]
# 7 On Combo Page, Click Fries
	Given screen state [CenterCategoryButtons~Sides],[CenterCategoryButtons~Drink Combo],[RightModifierButtons~FRIES],[RightModifierButtons~Black Beans]
	Then clicked [FRIES]
# 8 On Combo Page, Click Pepsi
	Given screen state {120}
	Then clicked [PEPSI]
# 9 On Combo Page, Click Grilled Chicken
	Given screen state {121}
	Then clicked [GRILLED\CHCKEN]
# 10 On Combo Page, Click Fries
	Given screen state {122}
	Then clicked [FRIES]
# 11 On Combo Page, Click Pepsi
	Given screen state {123}
	Then clicked [PEPSI]
# 12 On Combo Page, Click Roasted Chicken
	Given screen state {124}
	Then clicked [ROASTED\CHCKEN]
# 13 On Combo Page, Click Fries
	Given screen state {125}
	Then clicked [FRIES]
# 14 On Combo Page, Click Pepsi
	Given screen state {126}
	Then clicked [PEPSI]
# 15 Apply HERE Ordermode
	Given screen state {127}
	Then clicked [HERE]
# 16 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1", "EntriesBySeat~COMBO 3\ TILAPIA\  FRIES\  PEPSI\ GRILLED CHCKEN\  FRIES\  PEPSI\ ROASTED CHCKEN\  FRIES\  PEPSI","EntriesBySeat~10.00"
	Then clicked [$]
# 17 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61"
	Then clicked [Exact]
# 18 Click Close
	Given screen state "Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61"
	Then clicked [MidButtons~Close]
# 19 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
