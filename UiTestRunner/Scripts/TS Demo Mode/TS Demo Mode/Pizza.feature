Feature: 16 Pizza


Scenario: 1 Verify order item from Pizza Menu
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
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Crust
			Given screen state: 440
			Then clicked [Pan]
#Action: 7 Select Sausage
			Given screen state: 441
			Then clicked [Sausage]
#Action: 8 Select OK on Pizza Menu
			Given screen state: 442
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 443
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 443
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 445
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 446
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify you can order an item from Pizza Menu in Lunch menu
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
#Action: 4 Select Pizza Menu on Lunch Panel
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Pizza Menu]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Crust
			Given screen state: 447
			Then clicked [Pan]
#Action: 7 Select Sausage
			Given screen state: 448
			Then clicked [Chicken]
#Action: 8 Select OK on Pizza Menu
			Given screen state: 449
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 450
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 450
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 452
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 453
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you cannot order more than 3 toppings on a pizza
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
#Action: 4 Select Pizza Menu on Lunch Panel
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Pizza Menu]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Crust
			Given screen state: 447
			Then clicked [Pan]
#Action: 7 Select Chicken
			Given screen state: 448
			Then clicked [Chicken]
#Action: 8 Select Cheese
			Given screen state: 449
			Then clicked [Cheese]
#Action: 9 Select Beef
			# 16.3.11 Select Sausage
			Given screen state: 454
			Then clicked [Beef]
#Action: 10 Apply HERE Ordermode
			Given screen state: 455
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 455
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 457
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 458
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify you can order a pizza with 5 modifier groups
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
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Veg 7\Thin"
#Action: 6 Select Pizza Crust
			Given screen state: 459
			Then clicked [Pan]
#Action: 7 Order 4 Toppings with error
			Given screen state: 460
			Then clicked [Cheese]
			Then clicked [Chicken]
			Then clicked [Beef]
#Action: 8 Add Veggie Topping
			Given screen state: 461
			Then clicked [VEGGIE]
#Action: 9 Add Cheddar Topping
			Given screen state: 462
			Then clicked [CHEDDAR]
#Action: 10 Apply HERE Ordermode
			Given screen state: 463
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 463
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 465
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 466
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify you can add a typed modifier to a pizza item
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
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Crust
			Given screen state: 440
			Then clicked [Pan]
#Action: 7 Select Sausage
			Given screen state: 441
			Then clicked [Sausage]
#Action: 8 Select Typewriter icon
			Given screen state: 442
			Then clicked /BottomLeftButtons/,[btnKeyboard]
#Action: 9 Add Typewriter Message
			Given screen state: 467
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 10 Select OK on Pizza Menu
			Given screen state: 468
			Then clicked [OK]
#Action: 11 Apply HERE Ordermode
			Given screen state: 469
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 469
			Then clicked [$]
#Action: 13 Exact Payment
			Given screen state: 471
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 472
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
