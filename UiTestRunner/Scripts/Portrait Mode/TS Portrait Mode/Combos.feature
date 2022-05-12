Feature: 5 Combos


Scenario: 1 Verify you can add Order 3 Combo
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked /AddTableBtn/
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 536
			Then clicked [Menu]
#Action: 6 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 7 Order Combo 3
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "COMBO 3"
#Action: 8 On Combo Page, Click Tilpia
			Then verify presence of /CenterCategoryButtons/,[COMBO 3],/RightModifierButtons/,[TILAPIA],[GRILLED\CHCKEN],[ROASTED\CHCKEN]
			Then clicked [TILAPIA]
#Action: 9 On Combo Page, Click Fries
			Then verify presence of /CenterCategoryButtons/,[Sides],[Drink Combo],/RightModifierButtons/,[FRIES],[Black Beans]
			Then clicked [FRIES]
#Action: 10 On Combo Page, Click Pepsi
			Given screen state: 120
			Then clicked [PEPSI]
#Action: 11 On Combo Page, Click Grilled Chicken
			Given screen state: 121
			Then clicked [GRILLED\CHCKEN]
#Action: 12 On Combo Page, Click Fries
			Given screen state: 122
			Then clicked [FRIES]
#Action: 13 On Combo Page, Click Pepsi
			Given screen state: 123
			Then clicked [PEPSI]
#Action: 14 On Combo Page, Click Roasted Chicken
			Given screen state: 124
			Then clicked [ROASTED\CHCKEN]
#Action: 15 On Combo Page, Click Fries
			Given screen state: 125
			Then clicked [FRIES]
#Action: 16 On Combo Page, Click Pepsi
			Given screen state: 126
			Then clicked [PEPSI]
#Action: 17 Apply HERE Ordermode
			Given screen state: 127
			Then clicked [HERE]
#Action: 18 Select $ on Payment Screen
			Given screen state: 127
			Then clicked [$]
#Action: 19 Exact Payment
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61"
			Then clicked [Exact]
#Action: 20 Click Close
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61"
			Then clicked /MidButtons/,[Close]
#Action: 21 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
