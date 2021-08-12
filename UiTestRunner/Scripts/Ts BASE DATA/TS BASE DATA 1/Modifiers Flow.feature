Feature: 12 Modifiers Flow


Scenario: 1 Verify modifier flow for Pork Chop (Entree Menu)
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
# 6 On Pork Chop, Meat Temp
	Given screen state {134}
	Then clicked [BLACK & BLUE]
# 7 On Starch Menu, Select Baked Potato
	Given screen state {169}
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state {171}
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ BLACK & BLUE\ NO MEDIUM\ Baked Potato\ CUP"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK CHOP\ BLACK & BLUE\ NO MEDIUM\ Baked Potato\ CUP"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Forced Modifier
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
	Then clicked [Exact]
# 9 Click Close
	Given screen state "Comps~Sub Total","Comps~5.99","Taxes~Tax","Taxes~0.37","Taxes~Total","Taxes~6.36","Tenders~Balance Due","Tenders~$6.36","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify Combo Scenario
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
	Given screen state "EntriesBySeat~Seat 1", "EntriesBySeat~COMBO 3\ TILAPIA\  FRIES\  PEPSI\ GRILLED CHCKEN\  FRIES\  PEPSI\ ROASTED CHCKEN\  FRIES\  PEPSI","EntriesBySeat~10.00"
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

Scenario: 4 Delete Modifier
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
# 5 Order Ribeye
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "RIBEYE"
# 6 On Ribeye Screen, Meat Temp
	Given screen state {172}
	Then clicked [BLACK & BLUE]
# 7 On Starch Menu, Select Baked Potato
	Given screen state {173}
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state {175}
	Then clicked [CAESAR\SALAD]
# 9 On Add Chicken Mod add Chicken
	Given screen state {176}
	Then clicked [ADD\CHICKEN]
# 10 On Modify Item
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~RIBEYE\ BLACK & BLUE\ Baked Potato\ CAESAR SALAD\  ADD CHICKEN","EntriesBySeat~11.99\\\\3.00"
	Then clicked "EntriesBySeat~RIBEYE\ BLACK & BLUE\ Baked Potato\ CAESAR SALAD\  ADD CHICKEN"
	Then clicked [BottomButtons~Modify]
# 11 On Delete Chicken
	Given screen state {177}
	Then clicked " -  - ADD CHICKEN"
	Then clicked [Delete Modifier]
	Then clicked [OK]
# 12 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~RIBEYE\ BLACK & BLUE\ Baked Potato\ CAESAR SALAD","EntriesBySeat~11.99"
	Then clicked [HERE]
# 13 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~RIBEYE\ BLACK & BLUE\ Baked Potato\ CAESAR SALAD","EntriesBySeat~11.99"
	Then clicked [$]
# 14 Exact Payment
	Given screen state "Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Verify Bread Scenario
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
# 5 Order Bread
	Given screen state "MenuOrModButtons~COMBO 3"
	Then clicked "Bread"
# 6 On Select Bread on Guest Check and Modify
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Bread","EntriesBySeat~1.99"
	Then clicked "EntriesBySeat~Bread"
# 7 Modify Bread
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Bread","EntriesBySeat~1.99"
	Then clicked [BottomButtons~Modify]
# 8 On Bread Spreads Select Garlic Spread
	Given screen state {178}
	Then clicked [Garlic Spread]
# 9 Press OK
	Given screen state {179}
	Then clicked [OK]
# 10 Modify Bread
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Bread\ Garlic Spread","EntriesBySeat~1.99"
	Then clicked [BottomButtons~Modify]
# 11 On Bread Spreads Select Chive Spread
	Given screen state {180}
	Then clicked [Chive Spread]
# 12 Press OK
	Given screen state {181}
	Then clicked [OK]
# 13 Dismiss Error Message
	Given screen state {182}
	Then clicked [DialogSeparator~OK]
# 14 On Spread Light Modscreen Select Bacon
	Given screen state {181}
	Then clicked [BACON]
# 15 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Bread\ Chive Spread\  BACON","EntriesBySeat~2.99"
	Then clicked [HERE]
# 16 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Bread\ Chive Spread\  BACON","EntriesBySeat~2.99"
	Then clicked [$]
# 17 Exact Payment
	Given screen state "Comps~Sub Total","Comps~2.99","Taxes~Tax","Taxes~0.18","Taxes~Total","Taxes~3.17","Tenders~Balance Due","Tenders~$3.17"
	Then clicked [Exact]
# 18 Click Close
	Given screen state "Comps~Sub Total","Comps~2.99","Taxes~Tax","Taxes~0.18","Taxes~Total","Taxes~3.17","Tenders~Balance Due","Tenders~$3.17","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 19 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 6 Verify adding separate modifier on panel
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
# 4 Add 7-Up
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "7 UP"
# 5 Add Mod Menu Items
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~7 UP","EntriesBySeat~2.00"
	Then clicked [Mod Menu\Items]
# 6 Add Ice Items
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~7 UP","EntriesBySeat~2.00"
	Then clicked [Add Ice Mod]
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~7 UP\ Ice","EntriesBySeat~2.00"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~7 UP\ Ice","EntriesBySeat~2.00"
	Then clicked [$]
# 9 Exact Payment
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00"
	Then clicked [Exact]
# 10 Click Close
	Given screen state "Comps~Sub Total","Comps~2.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~2.00","Tenders~Balance Due","Tenders~$2.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 11 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 7 Burrito Persona Modifier Flow
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
# 5 Order Burrito Persona
	Given screen state "MenuOrModButtons~COMBO 3"
	Then clicked "Burrito Persona"
# 6 On Burrito Rice R, Chili Rice
	Given screen state {184}
	Then clicked [RightModifierButtons~Chili Rice]
	Then clicked [RightModifierButtons~Chili Rice]
	Then clicked [BottomLeftButtons~OK]
# 7 On Burrito Beans R, White Beans
	Given screen state {186}
	Then clicked [RightModifierButtons~White Beans]
# 8 On Burrito Meat R, Select Chicken
	Given screen state {187}
	Then clicked [RightModifierButtons~Chicken]
	Then clicked [RightModifierButtons~Chicken]
# 9 On Burrito Salsa R, Verde
	Given screen state {188}
	Then clicked [RightModifierButtons~Verde]
# 10 On Burrito Vege R, Tomato
	Given screen state {189}
	Then clicked [RightModifierButtons~Tomato]
	Then clicked [BottomLeftButtons~OK]
# 11 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1", "EntriesBySeat~Burrito Persona\ Chili Rice\ Chili Rice\ White Beans\ Chicken\ Chicken\ Verde\ Tomato","EntriesBySeat~11.00"
	Then clicked [HERE]
# 12 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1", "EntriesBySeat~Burrito Persona\ Chili Rice\ Chili Rice\ White Beans\ Chicken\ Chicken\ Verde\ Tomato","EntriesBySeat~11.00"
	Then clicked [$]
# 13 Exact Payment
	Given screen state "Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67"
	Then clicked [Exact]
# 14 Click Close
	Given screen state "Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67","Tenders~CASH","Tenders~11.67"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 8 Burrito Classic Modifier Flow
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
# 5 Order Burrito Classic
	Given screen state "MenuOrModButtons~COMBO 3"
	Then clicked "Burrito Classic"
# 6 On Burrito Salsa , Verde
	Given screen state {190}
	Then clicked [RightModifierButtons~Verde]
# 7 On Burrito Vege, Tomato
	Given screen state {191}
	Then clicked [RightModifierButtons~Tomato]
	Then clicked [RightModifierButtons~Tomato]
# 8 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Burrito Classic\ Verde\ Tomato\ Tomato","EntriesBySeat~11.00"
	Then clicked [HERE]
# 9 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Burrito Classic\ Verde\ Tomato\ Tomato","EntriesBySeat~11.00"
	Then clicked [$]
# 10 Exact Payment
	Given screen state "Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67","Tenders~Balance Due","Tenders~$11.67"
	Then clicked [Exact]
# 11 Click Close
	Given screen state "Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67","Tenders~Balance Due","Tenders~$11.67","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 12 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 9 Wrap Modifier Flow
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
# 5 Order Wrap
	Given screen state "MenuOrModButtons~COMBO 3"
	Then clicked "Wrap"
# 6 On R. General MOD
	Given screen state {192}
	Then clicked [RightModifierButtons~3 Bowl]
	Then clicked [RightModifierButtons~NO Onion]
	Then clicked [RightModifierButtons~Less Spicy]
	Then clicked [BottomLeftButtons~OK]
# 7 On Dessert Mod Group
	Given screen state {193}
	Then clicked [RightModifierButtons~Pastries]
# 8 On Add On Bagel
	Given screen state {194}
	Then clicked [RightModifierButtons~ON\BAGEL]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Wrap\ 3 Bowl\ NO Onion\ Less Spicy\ Pastries\  ON BAGEL","EntriesBySeat~5.50"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Wrap\ 3 Bowl\ NO Onion\ Less Spicy\ Pastries\  ON BAGEL","EntriesBySeat~5.50"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Wrap\ 3 Bowl\ NO Onion\ Less Spicy\ Pastries\  ON BAGEL","ItemEntries~5.50","Comps~Sub Total","Comps~5.50","Taxes~Tax","Taxes~0.34","Taxes~Total","Taxes~5.84","Tenders~Balance Due","Tenders~$5.84"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Wrap\ 3 Bowl\ NO Onion\ Less Spicy\ Pastries\  ON BAGEL","ItemEntries~5.50","Comps~Sub Total","Comps~5.50","Taxes~Tax","Taxes~0.34","Taxes~Total","Taxes~5.84","Tenders~CASH","Tenders~5.84","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 10 pcDarkBrstr Modifier Flow
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
# 5 pcDarkBrstr Wrap
	Given screen state "MenuOrModButtons~COMBO 3"
	Then clicked "3pcDrkBrstr"
# 6 On 3C Starter
	Given screen state {195}
	Then clicked [RightModifierButtons~SP\Bean C]
# 7 On Farmhouse SD select Carrots
	Given screen state {196}
	Then clicked [RightModifierButtons~Carrots]
# 8 On Breads select Cherry Bread
	Given screen state {197}
	Then clicked [RightModifierButtons~Cherry\Bread]
# 9 On 3C Dessert
	Given screen state {198}
	Then clicked [RightModifierButtons~Carml\Sundae]
	Then clicked [RightModifierButtons~Coco\CrmPie]
	Then clicked [BottomLeftButtons~OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~3pcDrkBrstr\ SP Bean C\ Carrots\ Cherry Bread\ Carml Sundae\ Coco CrmPie","EntriesBySeat~9.99\\\\\1.00"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~3pcDrkBrstr\ SP Bean C\ Carrots\ Cherry Bread\ Carml Sundae\ Coco CrmPie","EntriesBySeat~9.99\\\\\1.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "Comps~Sub Total","Comps~10.99","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.66","Tenders~Balance Due","Tenders~$11.66"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "Comps~Sub Total","Comps~10.99","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.66","Tenders~Balance Due","Tenders~$11.66","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
