Feature: 16 Pizza


Scenario: 1 Verify order item from Pizza Menu
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Floor Plan select Table 1
			Given screen state: 518
			Then clicked [btnAddTable]
#Action: 3 Free Tables Screen Select 1
			Given screen state: 514
			Then clicked "1"
#Action: 4 Enter Guest Count 1
			Given screen state: 535
			And clicked [OK]
#Action: 5 Select Menu
			Given screen state: 536
			Then clicked [Menu]
#Action: 6 Swipe on Entree Menu
			Given screen state: 714
			When swiped left on /SubmenuSelectors/
#Action: 7 Select Pizza Menu
			Given screen state: 596
			Then clicked "PIZZA"
#Action: 8 Order Sausage Pizza
			Given screen state: 582
			Then clicked "Sausage\Pizza"
#Action: 9 Select Pizza Size
			Given screen state: 400
			Then clicked [Large]
#Action: 10 Select Pizza Crust
			Given screen state: 449
			Then clicked [Pan]
#Action: 11 Select Sausage
			Given screen state: 445
			Then clicked [Sausage]
#Action: 12 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 13 Go Back to Guest Check
			Given screen state: 579
			Then clicked /OK/
#Action: 14 Click Send on OrderMode
			Given screen state: 580
			Then clicked [Send]
#Action: 15 Click "Here" on OrderMode
			Given screen state: 581
			Then clicked "HERE"
#Action: 16 Select Pay on Payment Screen
			Given screen state: 580
			Then clicked [Pay]
#Action: 17 Select No Receipt
			Given screen state: 619
			Then clicked [No Receipt]
#Action: 18 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 Verify you can order an item from Pizza Menu in Lunch menu
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu on Lunch Panel
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Pizza Menu]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 002
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 003
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 004
			Then clicked [Chicken]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 005
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Given screen state: 419
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Given screen state: 419
			Then clicked [$]
#Action: 12 Exact Payment
			Given screen state: 420
			Then clicked [Exact]
#Action: 13 Click Close
			Given screen state: 421
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 3 Verify you cannot order more than 3 toppings on a pizza
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu on Lunch Panel
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Pizza Menu]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 002
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 003
			Then clicked [Pan]
#Action: 8 Select Chicken
			Given screen state: 004
			Then clicked [Chicken]
#Action: 9 Select Cheese
			Given screen state: 005
			Then clicked [Cheese]
#Action: 10 Select Beef
			# 16.3.11 Select Sausage
			Given screen state: 140
			Then clicked [Beef]
			Then clicked [Sausage]
#Action: 11 Dismiss Error Message
			Then verify presence of /Dialog/,"Warning","You may not have more than 3 items from the Pizza Toppings group.",[OK]
			Then clicked /Dialog/,[OK]
#Action: 12 Select OK on Pizza Menu
			Given screen state: 145
			Then clicked [OK]
#Action: 13 Apply HERE Ordermode
			Given screen state: 422
			Then clicked [HERE]
#Action: 14 Select $ on Payment Screen
			Given screen state: 422
			Then clicked [$]
#Action: 15 Exact Payment
			Given screen state: 423
			Then clicked [Exact]
#Action: 16 Click Close
			Given screen state: 424
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 4 Verify you can order a pizza with 5 modifier groups
#Action: 1 Login as manager 200
			#TODO ALOHAP-35104
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Veg 7\Thin"
#Action: 6 Select Pizza Size
			Given screen state: 151
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 152
			Then clicked [Pan]
#Action: 8 Order 4 Toppings with error
			Given screen state: 156
			Then clicked [Cheese]
			Then clicked [Chicken]
			Then clicked [Beef]
			Then clicked [Beef]
#Action: 9 Dismiss Error Message
			Then verify presence of /Dialog/,"Warning","You may not have more than 3 items from the Pizza Toppings group.",[OK]
			Then clicked /Dialog/,[OK]
#Action: 10 Select Quiche Group
			Given screen state: 158
			Then clicked /AdditionalModGroupButtons/,[QUICHE]
#Action: 11 Add Veggie Topping
			Given screen state: 161
			Then clicked [VEGGIE]
			Then clicked [VEGGIE]
#Action: 12 Dismiss Error Message
			Then verify presence of /Dialog/,"Warning","You may not have more than 1 items from the QUICHE group.",[OK]
			Then clicked /Dialog/,[OK]
#Action: 13 Select Cheese Group
			Given screen state: 170
			Then clicked /AdditionalModGroupButtons/,[CHEESE]
#Action: 14 Add Cheddar Topping
			Given screen state: 174
			Then clicked [CHEDDAR]
			Then clicked [CHEDDAR]
#Action: 15 Dismiss Error Message
			Then verify presence of /Dialog/,"Warning","You may not have more than 1 items from the CHEESE group.",[OK]
			Then clicked /Dialog/,[OK]
#Action: 16 Select OK on Pizza Menu
			Given screen state: 185
			Then clicked [OK]
#Action: 17 Apply HERE Ordermode
			Given screen state: 425
			Then clicked [HERE]
#Action: 18 Select $ on Payment Screen
			Given screen state: 425
			Then clicked [$]
#Action: 19 Exact Payment
			Given screen state: 426
			Then clicked [Exact]
#Action: 20 Click Close
			Given screen state: 427
			Then clicked /MidButtons/,[Close]
#Action: 21 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 5 Verify you can order a pizza without selecting a pizza size
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Crust: Pan
			Given screen state: 400
			Then clicked [Pan]
#Action: 7 Select Sausage
			Given screen state: 450
			Then clicked [Sausage]
#Action: 8 Select OK on Pizza Menu
			Given screen state: 216
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 204
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 204
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 428
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 429
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 6 Verify you cannot order a pizza without selecting a pizza crust
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 400
			Then clicked [Large]
#Action: 7 Select Sausage
			Given screen state: 449
			Then clicked [Sausage]
#Action: 8 Select OK on Pizza Menu
			Given screen state: 258
			Then clicked [OK]
#Action: 9 Dismiss Error Message
			Then verify presence of /Dialog/,"Warning","You are required to enter exactly 1 item(s) from the Pizza Crust mod group.",[OK]
			Then clicked /Dialog/,[OK]
#Action: 10 Select Pizza Crust
			Given screen state: 258
			Then clicked [Pan]
#Action: 11 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 12 Apply HERE Ordermode
			Given screen state: 509
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Given screen state: 509
			Then clicked [$]
#Action: 14 Exact Payment
			Given screen state: 417
			Then clicked [Exact]
#Action: 15 Click Close
			Given screen state: 418
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 7 Verify you cannot order a pizza without selecting a pizza topping
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu on Lunch Panel
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Pizza Menu]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Cheese\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 265
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 268
			Then clicked [Pan]
#Action: 8 Select OK on Pizza Menu
			Given screen state: 270
			Then clicked [OK]
#Action: 9 Dismiss Error Message
			Then verify presence of /Dialog/,"Warning","You are required to enter between 1 and 3 item(s) from the Pizza Toppings mod group.",[OK]
			Then clicked /Dialog/,[OK]
#Action: 10 Select Chicken
			Given screen state: 270
			Then clicked [Chicken]
#Action: 11 Select Cheese
			Given screen state: 274
			Then clicked [Cheese]
#Action: 12 Select OK on Pizza Menu
			Given screen state: 275
			Then clicked [OK]
#Action: 13 Apply HERE Ordermode
			Given screen state: 431
			Then clicked [HERE]
#Action: 14 Select $ on Payment Screen
			Given screen state: 431
			Then clicked [$]
#Action: 15 Exact Payment
			Given screen state: 432
			Then clicked [Exact]
#Action: 16 Click Close
			Given screen state: 433
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 8 Verify you add a pizza to a split check
#Action: 1 Login as manager 200
			#TODO Alohap-35104
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 400
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 449
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 445
			Then clicked [Sausage]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 10 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 11 Order Sausage Pizza
			Given screen state: 509
			Then clicked "Veg 7\Thin"
#Action: 12 Select Pizza Size
			Given screen state: 151
			Then clicked [Large]
#Action: 13 Select Pizza Crust
			Given screen state: 152
			Then clicked [Pan]
#Action: 14 Order 4 Toppings with error
			Given screen state: 156
			Then clicked [Cheese]
			Then clicked [Chicken]
			Then clicked [Beef]
#Action: 15 Select Quiche Group
			Given screen state: 158
			Then clicked /AdditionalModGroupButtons/,[QUICHE]
#Action: 16 Add Veggie Topping
			Given screen state: 161
			Then clicked [VEGGIE]
#Action: 17 Select Cheese Group
			Given screen state: 170
			Then clicked /AdditionalModGroupButtons/,[CHEESE]
#Action: 18 Add Cheddar Topping
			Given screen state: 174
			Then clicked [CHEDDAR]
#Action: 19 Select OK on Pizza Menu
			Given screen state: 185
			Then clicked [OK]
#Action: 20 Add Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TopLeftButtons/,[Split Seat]
#Action: 21 Select "Sausage Pizza"
			Given screen state: 284
			Then clicked "Sausage Pizza\ Large\ Pan\ Sausage"
#Action: 22 Add Check
			Given screen state: 284
			Then clicked [Add]
#Action: 23 Select Seat 2
			Given screen state: 224
			Then clicked /CheckOrSeat.3/
#Action: 24 Split Check
			Given screen state: 294
			Then clicked [Split check]
#Action: 25 Select "Sausage Pizza"
			Given screen state: 297
			Then clicked "Sausage Pizza\ Large\ Pan\ Sausage"
#Action: 26 Add Check
			Given screen state: 297
			Then clicked [Add]
			Then clicked /CheckOrSeat.2/
#Action: 27 Close Check
			Given screen state: 298
			Then clicked [Close]
#Action: 28 Apply HERE Ordermode
			Given screen state: 280
			Then clicked [HERE]
#Action: 29 Select $ on Payment Screen
			Given screen state: 280
			Then clicked [$]
#Action: 30 Exact Payment
			Given screen state: 426
			Then clicked [Exact]
#Action: 31 Click Close
			Given screen state: 427
			Then clicked /MidButtons/,[Close]
#Action: 32 Exact Payment
			Given screen state: 434
			Then clicked [Exact]
#Action: 33 Click Close
			Given screen state: 435
			Then clicked /MidButtons/,[Close]
#Action: 34 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 9 Verify Repeat works on pizza items
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 400
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 449
			Then clicked [Pan]
#Action: 8 Select Sausage
			Then clicked [Sausage]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 10 Repeat Item
			Given screen state: 509
			Then clicked [Repeat]
#Action: 11 Apply HERE Ordermode
			Given screen state: 401
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Given screen state: 402
			Then clicked [$]
#Action: 13 Exact Payment
			Given screen state: 436
			Then clicked [Exact]
#Action: 14 Click Close
			Given screen state: 437
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 10 Verify you can void a pizza item
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 400
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 449
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 445
			Then clicked [Sausage]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
			When waited 0.1
#Action: 11 Void item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Void]
#Action: 12 Select Sausage Pizza on Void Screen
			Given screen state: 438
			Then clicked /Items/,^Sausage Pizza\ Large\ Pan\ Sausage^
			Then clicked /Items/,[OK]
#Action: 13 Select Misring
			Given screen state: 451
			Then clicked /Dialog/,^MISRING^
			Then clicked /Dialog/,[OK]
#Action: 14 Select $ on Payment Screen
			Given screen state: 509
			Then clicked [$]
#Action: 15 Click Close
			Then verify presence of /Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 11 Verify you can order pizza on both left and right halves
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Peperoni\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 395
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 396
			Then clicked [Pan]
#Action: 8 Select Left side
			Given screen state: 397
			Then clicked [Left]
#Action: 9 Select Beef
			Given screen state: 397
			Then clicked [Beef]
#Action: 10 Select Right
			Given screen state: 398
			Then clicked [Right]
#Action: 11 Select Chicken
			Given screen state: 398
			Then clicked [Chicken]
#Action: 12 Select OK on Pizza Menu
			Given screen state: 399
			Then clicked [OK]
#Action: 13 Apply HERE Ordermode
			Given screen state: 439
			Then clicked [HERE]
#Action: 14 Select $ on Payment Screen
			Given screen state: 439
			Then clicked [$]
#Action: 15 Exact Payment
			Given screen state: 440
			Then clicked [Exact]
#Action: 16 Click Close
			Given screen state: 441
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 12 Verify you can only order 3 toppings with pizza halves
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Peperoni\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 395
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 396
			Then clicked [Pan]
#Action: 8 Select Left side
			Given screen state: 397
			Then clicked [Left]
#Action: 9 Select Beef
			Given screen state: 397
			Then clicked [Beef]
			Then clicked [Beef]
			Then clicked [Beef]
#Action: 10 Select Right
			Given screen state: 406
			Then clicked [Right]
#Action: 11 Select Chicken
			Given screen state: 406
			Then clicked [Chicken]
			Then clicked [Chicken]
			Then clicked [Chicken]
			Then clicked [Chicken]
#Action: 12 Dismiss the OK button
			Then verify presence of /Dialog/,"Warning","You may not have more than 3 items from the Pizza Toppings group.",[OK]
			Then clicked /Dialog/,[OK]
#Action: 13 Select OK on Pizza Menu
			Given screen state: 408
			Then clicked [OK]
#Action: 14 Apply HERE Ordermode
			Given screen state: 442
			Then clicked [HERE]
#Action: 15 Select $ on Payment Screen
			Given screen state: 442
			Then clicked [$]
#Action: 16 Exact Payment
			Given screen state: 443
			Then clicked [Exact]
#Action: 17 Click Close
			Given screen state: 444
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]

Scenario: 13 Verify you can add a typed modifier to a pizza item
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
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			Given screen state: 400
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			#NOTE same problem on emulator as with NOTE on 16.5 and 16.9 size "Large" is clicked but does not apply.
			Given screen state: 449
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 445
			Then clicked [Sausage]
#Action: 9 Select Typewriter icon
			Given screen state: 006
			Then clicked /BottomRightButtons/,[btnMessage]
#Action: 10 Add Typewriter Message
			Given screen state: 007
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[e]
			Then clicked /DialogSeparator/,[s]
			Then clicked /DialogSeparator/,[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 11 Select OK on Pizza Menu
			Given screen state: 412
			Then clicked [OK]
#Action: 12 Apply HERE Ordermode
			Given screen state: 446
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Given screen state: 446
			Then clicked [$]
#Action: 14 Exact Payment
			Given screen state: 447
			Then clicked [Exact]
#Action: 15 Click Close
			Given screen state: 448
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 511
			When clicked [Exit]
