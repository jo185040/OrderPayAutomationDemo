Feature: 5 Combos


Scenario: 1 Verify you can add Order 3 Combo
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 511
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Combo 3
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "COMBO 3"
#Action: 6 On Combo Page, Click Tilpia
			Then verify presence of /CenterCategoryButtons/,[COMBO 3],/RightModifierButtons/,[TILAPIA],[GRILLED\CHCKEN],[ROASTED\CHCKEN]
			Then clicked [TILAPIA]
#Action: 7 On Combo Page, Click Fries
			Then verify presence of /CenterCategoryButtons/,[Sides],[Drink Combo],/RightModifierButtons/,[FRIES],[Black Beans]
			Then clicked [FRIES]
#Action: 8 On Combo Page, Click Pepsi
			Given screen state: 120
			Then clicked [PEPSI]
#Action: 9 On Combo Page, Click Grilled Chicken
			Given screen state: 121
			Then clicked [GRILLED\CHCKEN]
#Action: 10 On Combo Page, Click Fries
			Given screen state: 122
			Then clicked [FRIES]
#Action: 11 On Combo Page, Click Pepsi
			Given screen state: 123
			Then clicked [PEPSI]
#Action: 12 On Combo Page, Click Roasted Chicken
			Given screen state: 124
			Then clicked [ROASTED\CHCKEN]
#Action: 13 On Combo Page, Click Fries
			Given screen state: 125
			Then clicked [FRIES]
#Action: 14 On Combo Page, Click Pepsi
			Given screen state: 126
			Then clicked [PEPSI]
#Action: 15 Apply HERE Ordermode
			Given screen state: 127
			Then clicked [HERE]
#Action: 16 Select $ on Payment Screen
			Given screen state: 127
			Then clicked [$]
#Action: 17 Exact Payment
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61"
			Then clicked [Exact]
#Action: 18 Click Close
			Then verify presence of /Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61"
			Then clicked /MidButtons/,[Close]
#Action: 19 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
