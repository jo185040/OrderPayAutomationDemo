Feature: 12 Modifiers Flow


Scenario: 1 Verify modifier flow for Pork Chop (Entree Menu)
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
#Action: 5 Order Pork Chop
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\CHOP"
#Action: 6 On Pork Chop, Meat Temp
			Given screen state: 134
			Then clicked [BLACK & BLUE]
#Action: 7 On Starch Menu, Select Baked Potato
			Given screen state: 267
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 169
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 386
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 386
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Add item with Forced Modifier
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Quick Burger
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Quick Burger"
#Action: 6 Apply HERE Ordermode
			Given screen state: 360
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Given screen state: 360
			Then clicked [$]
#Action: 8 Exact Payment
			Then verify presence of /Comps/,"Sub Total","5.99",/Taxes/,"Tax","0.37","Total","6.36",/Tenders/,"Balance Due","$6.36"
			Then clicked [Exact]
#Action: 9 Click Close
			Then verify presence of /Comps/,"Sub Total","5.99",/Taxes/,"Tax","0.37","Total","6.36",/Tenders/,"Balance Due","$6.36","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify Combo Scenario
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
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Delete Modifier
#Action: 1 Login as manager 200
			#TODO ALOHAP-35651
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
#Action: 5 Order Ribeye
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "RIBEYE"
#Action: 6 On Ribeye Screen, Meat Temp
			Given screen state: 172
			Then clicked [BLACK & BLUE]
#Action: 7 On Starch Menu, Select Baked Potato
			Given screen state: 173
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Ceaser Salad
			Given screen state: 175
			Then clicked [CAESAR\SALAD]
#Action: 9 On Add Chicken Mod add Chicken
			Given screen state: 176
			Then clicked [ADD\CHICKEN]
#Action: 10 On Modify Item
			Given screen state: 387
			Then clicked "-  - ADD CHICKEN"
			Then clicked /BottomLeftButtons/,[Modify]
#Action: 11 On Delete Chicken
			Given screen state: 387
			Then clicked "-  - ADD CHICKEN"
			Then clicked [Delete Modifier]
			Then clicked [OK]
#Action: 12 Apply HERE Ordermode
			Given screen state: 388
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Given screen state: 388
			Then clicked [$]
#Action: 14 Exact Payment
			Then verify presence of /Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify Bread Scenario
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Bread
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Bread"
#Action: 6 On Select Bread on Guest Check and Modify
			Then verify presence of /EntriesBySeat/,"Seat 1","Bread","1.99"
			Then clicked /EntriesBySeat/,"Bread"
#Action: 7 Modify Bread
			Then verify presence of /EntriesBySeat/,"Seat 1","Bread","1.99"
			Then clicked /FixedBottomButtons/,[Modify]
#Action: 8 On Bread Spreads Select Garlic Spread
			Given screen state: 178
			Then clicked [Garlic Spread]
#Action: 9 Press OK
			Given screen state: 179
			Then clicked [OK]
#Action: 10 Modify Bread
			Given screen state: 389
			Then clicked /FixedBottomButtons/,[Modify]
#Action: 11 On Bread Spreads Select Chive Spread
			Given screen state: 180
			Then clicked [Chive Spread]
#Action: 12 Press OK
			Given screen state: 181
			Then clicked [OK]
#Action: 13 Dismiss Error Message
			Given screen state: 182
			Then clicked /Dialog/,[OK]
#Action: 14 On Spread Light Modscreen Select Bacon
			Given screen state: 181
			Then clicked [BACON]
#Action: 15 Apply HERE Ordermode
			Given screen state: 390
			Then clicked [HERE]
#Action: 16 Select $ on Payment Screen
			Given screen state: 390
			Then clicked [$]
#Action: 17 Exact Payment
			Then verify presence of /Comps/,"Sub Total","2.99",/Taxes/,"Tax","0.18","Total","3.17",/Tenders/,"Balance Due","$3.17"
			Then clicked [Exact]
#Action: 18 Click Close
			Then verify presence of /Comps/,"Sub Total","2.99",/Taxes/,"Tax","0.18","Total","3.17",/Tenders/,"Balance Due","$3.17","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 19 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify adding separate modifier on panel
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
#Action: 4 Add 7-Up
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "7 UP"
#Action: 5 Add Mod Menu Items
			Then verify presence of /EntriesBySeat/,"Seat 1","7 UP","2.00"
			Then clicked [Mod Menu\Items]
#Action: 6 Add Ice Items
			Then verify presence of /EntriesBySeat/,"Seat 1","7 UP","2.00"
			Then clicked [Add Ice Mod]
#Action: 7 Apply HERE Ordermode
			Given screen state: 391
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Given screen state: 391
			Then clicked [$]
#Action: 9 Exact Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 10 Click Close
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Burrito Persona Modifier Flow
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Burrito Persona
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Burrito Persona"
#Action: 6 On Burrito Rice R, Chili Rice
			Given screen state: 184
			Then clicked /RightModifierButtons/,[Chili Rice]
			Then clicked /RightModifierButtons/,[Chili Rice]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 7 On Burrito Beans R, White Beans
			Given screen state: 186
			Then clicked /RightModifierButtons/,[White Beans]
#Action: 8 On Burrito Meat R, Select Chicken
			Given screen state: 187
			Then clicked /RightModifierButtons/,[Chicken]
			Then clicked /RightModifierButtons/,[Chicken]
#Action: 9 On Burrito Salsa R, Verde
			Given screen state: 188
			Then clicked /RightModifierButtons/,[Verde]
#Action: 10 On Burrito Vege R, Tomato
			Given screen state: 189
			Then clicked /RightModifierButtons/,[Tomato]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 11 Apply HERE Ordermode
			Given screen state: 392
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 392
			Then clicked [$]
#Action: 13 Exact Payment
			Then verify presence of /Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67"
			Then clicked [Exact]
#Action: 14 Click Close
			Then verify presence of /Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67",/Tenders/,"CASH","11.67"
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 8 Burrito Classic Modifier Flow
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Burrito Classic
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Burrito Classic"
#Action: 6 On Burrito Salsa , Verde
			Given screen state: 190
			Then clicked /RightModifierButtons/,[Verde]
#Action: 7 On Burrito Vege, Tomato
			Given screen state: 191
			Then clicked /RightModifierButtons/,[Tomato]
			Then clicked /RightModifierButtons/,[Tomato]
#Action: 8 Apply HERE Ordermode
			Given screen state: 393
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 393
			Then clicked [$]
#Action: 10 Exact Payment
			Then verify presence of /Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67",/Tenders/,"Balance Due","$11.67"
			Then clicked [Exact]
#Action: 11 Click Close
			Then verify presence of /Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67",/Tenders/,"Balance Due","$11.67","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 9 Wrap Modifier Flow
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Order Wrap
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Wrap"
#Action: 6 On R. General MOD
			Given screen state: 192
			Then clicked /RightModifierButtons/,[3 Bowl]
			Then clicked /RightModifierButtons/,[NO Onion]
			Then clicked /RightModifierButtons/,[Less Spicy]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 7 On Dessert Mod Group
			Given screen state: 193
			Then clicked /RightModifierButtons/,[Pastries]
#Action: 8 On Add On Bagel
			Given screen state: 504
			Then clicked /RightModifierButtons/,[ON\BAGEL]
#Action: 9 Apply HERE Ordermode
			Given screen state: 394
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 394
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 403
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 404
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 10 pcDarkBrstr Modifier Flow
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 pcDarkBrstr Wrap
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "3pcDrkBrstr"
#Action: 6 On 3C Starter
			Given screen state: 195
			Then clicked /RightModifierButtons/,[SP\Bean C]
#Action: 7 On Farmhouse SD select Carrots
			Given screen state: 196
			Then clicked /RightModifierButtons/,[Carrots]
#Action: 8 On Breads select Cherry Bread
			Given screen state: 197
			Then clicked /RightModifierButtons/,[Cherry\Bread]
#Action: 9 On 3C Dessert
			Given screen state: 198
			Then clicked /RightModifierButtons/,[Carml\Sundae]
			Then clicked /RightModifierButtons/,[Coco\CrmPie]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 10 Apply HERE Ordermode
			Given screen state: 405
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 405
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /Comps/,"Sub Total","10.99",/Taxes/,"Tax","0.67","Total","11.66",/Tenders/,"Balance Due","$11.66"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /Comps/,"Sub Total","10.99",/Taxes/,"Tax","0.67","Total","11.66",/Tenders/,"Balance Due","$11.66","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 11 Platter Scenario - Stand Canapes
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Select Platter
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Platter"
#Action: 6 On Stand Canapes
			Given screen state: 213
			Then clicked /RightModifierButtons/,[Stand canapes]
#Action: 7 On Canapes, Select Cheese Canapes
			Given screen state: 214
			Then clicked /RightModifierButtons/,[Cheese Canapes]
#Action: 8 Apply HERE Ordermode
			Given screen state: 215
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 215
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 217
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 218
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 12 Platter Scenario - Special Canapes
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
			Then clicked /CenterMenuButtons/,[Combos]
#Action: 5 Select Platter
			Then verify presence of /MenuOrModButtons/,"COMBO 3"
			Then clicked "Platter"
#Action: 6 On Special Canapes
			Given screen state: 213
			Then clicked /RightModifierButtons/,[Special canapes]
#Action: 7 On Vegetar/Vegan, Select Vegetarian
			Given screen state: 219
			Then clicked /RightModifierButtons/,[Vegetarian]
			Then clicked /RightModifierButtons/,[Vegan]
#Action: 8 On Canapes, select Cheese Canapes
			Given screen state: 220
			Then clicked /RightModifierButtons/,[Ham Canapes]
#Action: 9 Apply HERE Ordermode
			Given screen state: 221
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 221
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 222
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 223
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
