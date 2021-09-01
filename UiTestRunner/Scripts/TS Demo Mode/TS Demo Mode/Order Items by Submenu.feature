Feature: 36 Order Items by Submenu


Scenario: 1 Verify you can order items from Soup & Salad Menu (Server)
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Soup & Salad Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[SOUP & SALADS]
#Action: 5 Add Chopped Salad
			Given screen state: 479
			Then clicked "CHOPPED\SALAD"
#Action: 6 Add Caesar Salad
			Given screen state: 480
			Then clicked "CAESAR\SALAD"
			Then clicked /RightModifierButtons/,[ADD\CHICKEN]
#Action: 7 Add House Salad
			Given screen state: 481
			Then clicked "HOUSE\SALAD"
			Then clicked /RightModifierButtons/,[RANCH]
			Then clicked /RightModifierButtons/,[ADD\CHICKEN]
#Action: 8 Add Chicken Caesar Salad
			Given screen state: 482
			Then clicked "CHICKEN\CAESAR"
#Action: 9 Add Soup of the Day
			Given screen state: 483
			Then clicked "SOUP\OF DAY"
			Then clicked /RightModifierButtons/,[CUP]
#Action: 10 Apply HERE Ordermode
			Given screen state: 484
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 485
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 486
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 487
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify you can order items from Desserts Menu (Server)
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Dessert Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[DESSERT]
#Action: 5 Add Carrot Cake
			Given screen state: 488
			Then clicked "CARROT\CAKE"
#Action: 6 Add Chocolate Cake
			Given screen state: 489
			Then clicked "CHOCOLATE\CAKE"
#Action: 7 Add CheeseCake
			Given screen state: 490
			Then clicked "CHEESECAKE"
#Action: 8 Apply HERE Ordermode
			Given screen state: 491
			Then clicked [HERE]
#Action: 9 Select $ on Payment Screen
			Given screen state: 491
			Then clicked [$]
#Action: 10 Exact Payment
			Given screen state: 492
			Then clicked [Exact]
#Action: 11 Click Close
			Given screen state: 493
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you can order items from Sandwiches Menu (Server)
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Sandwiches Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[SANDWICHES]
#Action: 5 Add Buff Chix
			Given screen state: 494
			Then clicked "BUFF CHIX\WRAP"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 6 Add Veggie Chix
			Given screen state: 495
			Then clicked "VEGGIE\WRAP"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 7 Add Chix SLD Chix
			Given screen state: 496
			Then clicked "CHIX SLD\SAND"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 8 Add Ham Sandwich
			Given screen state: 497
			Then clicked "HAM\SANDWICH"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 9 Add Cali Chx Sandwich
			Given screen state: 498
			Then clicked "CALI CHIX\WRAP"
			Then clicked /RightModifierButtons/,[FRIES]
#Action: 10 Apply HERE Ordermode
			Given screen state: 499
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 500
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 501
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 502
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify you can order items from Beer Menu (Server)
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
			And clicked [OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[BEER]
#Action: 5 Add Miller Lite
			Given screen state: 503
			Then clicked "MILLER\LITE"
#Action: 6 Add Blue Moon
			Given screen state: 504
			Then clicked "BLUE\MOON"
#Action: 7 Add Corona
			Given screen state: 505
			Then clicked "CORONA"
#Action: 8 Add High Life
			Given screen state: 506
			Then clicked "HIGH\LIFE"
#Action: 9 Apply HERE Ordermode
			Given screen state: 507
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 507
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 508
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 509
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
