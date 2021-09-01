Feature: 12 Modifiers Flow


Scenario: 1 Verify modifier flow for Pork Chop (Entree Menu)
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 303
			Then clicked [BLACK & BLUE]
#Action: 7 On Starch Menu, Select Baked Potato
			Given screen state: 339
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 340
			Then clicked [CUP]
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 342
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 343
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 344
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 345
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Forced Modifier
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 283
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Given screen state: 285
			Then clicked [$]
#Action: 8 Exact Payment
			Given screen state: 286
			Then clicked [Exact]
#Action: 9 Click Close
			Given screen state: 287
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify Combo Scenario
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 346
			Then clicked [PEPSI]
#Action: 9 On Combo Page, Click Grilled Chicken
			Given screen state: 347
			Then clicked [GRILLED\CHCKEN]
#Action: 10 On Combo Page, Click Fries
			Given screen state: 348
			Then clicked [FRIES]
#Action: 11 On Combo Page, Click Pepsi
			Given screen state: 349
			Then clicked [PEPSI]
#Action: 12 On Combo Page, Click Roasted Chicken
			Given screen state: 350
			Then clicked [ROASTED\CHCKEN]
#Action: 13 On Combo Page, Click Fries
			Given screen state: 351
			Then clicked [FRIES]
#Action: 14 On Combo Page, Click Pepsi
			Given screen state: 352
			Then clicked [PEPSI]
#Action: 15 Apply HERE Ordermode
			Given screen state: 353
			Then clicked [HERE]
#Action: 16 Select $ on Payment Screen
			Given screen state: 354
			Then clicked [$]
#Action: 17 Exact Payment
			Given screen state: 355
			Then clicked [Exact]
#Action: 18 Click Close
			Given screen state: 356
			Then clicked /MidButtons/,[Close]
#Action: 19 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Delete Modifier
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 357
			Then clicked [BLACK & BLUE]
#Action: 7 On Starch Menu, Select Baked Potato
			Given screen state: 358
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 359
			Then clicked [CAESAR\SALAD]
#Action: 9 On Add Chicken Mod add Chicken
			Given screen state: 360
			Then clicked [ADD\CHICKEN]
#Action: 10 On Delete Chicken
			Given screen state: 361
			Then clicked " -  - ADD CHICKEN"
			Then clicked [Delete Modifier]
			Then clicked [OK]
#Action: 11 Apply HERE Ordermode
			Given screen state: 362
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 363
			Then clicked [$]
#Action: 13 Exact Payment
			Given screen state: 364
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 365
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify Bread Scenario
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 366
			Then clicked /EntriesBySeat/,"Bread"
#Action: 7 Modify Bread
			Given screen state: 366
			Then clicked /BottomButtons/,[Modify]
#Action: 8 On Bread Spreads Select Garlic Spread
			Given screen state: 367
			Then clicked [Garlic Spread]
#Action: 9 Press OK
			Given screen state: 368
			Then clicked [OK]
#Action: 10 Modify Bread
			Given screen state: 369
			Then clicked /BottomButtons/,[Modify]
#Action: 11 On Bread Spreads Select Chive Spread
			Given screen state: 370
			Then clicked [Chive Spread]
#Action: 12 Press OK
			Given screen state: 371
			Then clicked [OK]
#Action: 13 Dismiss Error Message
			Given screen state: 372
			Then clicked /DialogSeparator/,[OK]
#Action: 14 On Spread Light Modscreen Select Bacon
			Given screen state: 371
			Then clicked [BACON]
#Action: 15 Apply HERE Ordermode
			Given screen state: 373
			Then clicked [HERE]
#Action: 16 Select $ on Payment Screen
			Given screen state: 374
			Then clicked [$]
#Action: 17 Exact Payment
			Given screen state: 375
			Then clicked [Exact]
#Action: 18 Click Close
			Given screen state: 376
			Then clicked /MidButtons/,[Close]
#Action: 19 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify adding separate modifier on panel
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 377
			Then clicked [Mod Menu\Items]
#Action: 6 Add Ice Items
			Given screen state: 378
			Then clicked [Add Ice Mod]
#Action: 7 Apply HERE Ordermode
			Given screen state: 378
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Given screen state: 378
			Then clicked [$]
#Action: 9 Exact Payment
			Given screen state: 379
			Then clicked [Exact]
#Action: 10 Click Close
			Given screen state: 380
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Burrito Persona Modifier Flow
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 381
			Then clicked /RightModifierButtons/,[Chili Rice]
			Then clicked /RightModifierButtons/,[Chili Rice]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 7 On Burrito Beans R, White Beans
			Given screen state: 382
			Then clicked /RightModifierButtons/,[Verde]
#Action: 8 On Burrito Meat R, Select Chicken
			Given screen state: 383
			Then clicked /RightModifierButtons/,[Corn]
			Then clicked /RightModifierButtons/,[Corn]
#Action: 9 Apply HERE Ordermode
			Given screen state: 384
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 385
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 386
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 387
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 8 Burrito Classic Modifier Flow
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 388
			Then clicked /RightModifierButtons/,[Verde]
#Action: 7 On Burrito Vege, Tomato
			Given screen state: 389
			Then clicked /RightModifierButtons/,[Tomato]
			Then clicked /RightModifierButtons/,[Tomato]
#Action: 8 Apply HERE Ordermode
			Given screen state: 390
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 391
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 392
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 393
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 9 Wrap Modifier Flow
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 394
			Then clicked /RightModifierButtons/,[3 Bowl]
			Then clicked /RightModifierButtons/,[NO Onion]
			Then clicked /RightModifierButtons/,[Less Spicy]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 7 On Dessert Mod Group
			Given screen state: 403
			Then clicked /RightModifierButtons/,[Pastries]
#Action: 8 On Add On Bagel
			Given screen state: 404
			Then clicked /RightModifierButtons/,[ON\BAGEL]
#Action: 9 Apply HERE Ordermode
			Given screen state: 405
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 409
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 410
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 411
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 10 pcDarkBrstr Modifier Flow
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 413
			Then clicked /RightModifierButtons/,[SP\Bean C]
#Action: 7 On Farmhouse SD select Carrots
			Given screen state: 414
			Then clicked /RightModifierButtons/,[Carrots]
#Action: 8 On Breads select Cherry Bread
			Given screen state: 415
			Then clicked /RightModifierButtons/,[Cherry\Bread]
#Action: 9 On 3C Dessert
			Given screen state: 416
			Then clicked /RightModifierButtons/,[Carml\Sundae]
			Then clicked /RightModifierButtons/,[Coco\CrmPie]
			Then clicked /BottomLeftButtons/,[OK]
#Action: 10 Apply HERE Ordermode
			Given screen state: 417
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 418
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 419
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 420
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 11 Platter Scenario - Stand Canapes
#Action: 1 Login as manager 200
			Given screen state: 421
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
			Given screen state: 422
			Then clicked /RightModifierButtons/,[Stand canapes]
#Action: 7 On Canapes, Select Cheese Canapes
			Given screen state: 423
			Then clicked /RightModifierButtons/,[Cheese Canapes]
#Action: 8 Apply HERE Ordermode
			Given screen state: 424
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 425
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 426
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 427
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 12 Platter Scenario - Special Canapes
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
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
			Given screen state: 422
			Then clicked /RightModifierButtons/,[Special canapes]
#Action: 7 On Vegetar/Vegan, Select Vegetarian
			Given screen state: 428
			Then clicked /RightModifierButtons/,[Vegetarian]
			Then clicked /RightModifierButtons/,[Vegan]
#Action: 8 On Canapes, select Cheese Canapes
			Given screen state: 429
			Then clicked /RightModifierButtons/,[Ham Canapes]
#Action: 9 Apply HERE Ordermode
			Given screen state: 430
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 431
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 432
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 433
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
