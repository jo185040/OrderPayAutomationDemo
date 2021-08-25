Feature: 16 Pizza


Scenario: 1 Verify order item from Pizza Menu
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
			Given screen state: 401
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 402
			When swiped left on /CenterModButtons(size 0.5)/
			Then clicked [Sausage]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"Balance Due","$10.61"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Verify you can order an item from Pizza Menu in Lunch menu
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
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Large\ Pan\ Chicken","5.00"
			Then clicked [HERE]
#Action: 11 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Large\ Pan\ Chicken","5.00"
			Then clicked [$]
#Action: 12 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Large\ Pan\ Chicken","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31"
			Then clicked [Exact]
#Action: 13 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Large\ Pan\ Chicken","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 14 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Verify you cannot order more than 3 toppings on a pizza
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
			When swiped left on /CenterModButtons(size 0.5)/
			Then clicked [Sausage]
#Action: 11 Dismiss Error Message
			Given screen state: 144
			Then clicked /DialogSeparator/,[OK]
#Action: 12 Select OK on Pizza Menu
			Given screen state: 145
			Then clicked [OK]
#Action: 13 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","6.00"
			Then clicked [HERE]
#Action: 14 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","6.00"
			Then clicked [$]
#Action: 15 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","6.00",/Comps/,"Sub Total","6.00",/Taxes/,"Tax","0.37","Total","6.37",/Tenders/,"Balance Due","$6.37"
			Then clicked [Exact]
#Action: 16 Click Close
			Then verify presence of /ItemEntries/,"Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","6.00",/Comps/,"Sub Total","6.00",/Taxes/,"Tax","0.37","Total","6.37",/Tenders/,"CASH","6.37","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 4 Verify you can order a pizza with 5 modifier groups
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
			Given screen state: 157
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Select Quiche Group
			Given screen state: 158
			Then clicked /AdditionalModGroupButtons/,[QUICHE]
#Action: 11 Add Veggie Topping
			Given screen state: 161
			Then clicked [VEGGIE]
			Then clicked [VEGGIE]
#Action: 12 Dismiss Error Message
			Given screen state: 163
			Then clicked /DialogSeparator/,[OK]
#Action: 13 Select Cheese Group
			Given screen state: 170
			Then clicked /AdditionalModGroupButtons/,[CHEESE]
#Action: 14 Add Cheddar Topping
			Given screen state: 174
			Then clicked [CHEDDAR]
			Then clicked [CHEDDAR]
#Action: 15 Dismiss Error Message
			Given screen state: 183
			Then clicked /DialogSeparator/,[OK]
#Action: 16 Select OK on Pizza Menu
			Given screen state: 185
			Then clicked [OK]
#Action: 17 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","11.00"
			Then clicked [HERE]
#Action: 18 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","11.00"
			Then clicked [$]
#Action: 19 Exact Payment
			Then verify presence of /ItemEntries/,"Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","11.00",/Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67"
			Then clicked [Exact]
#Action: 20 Click Close
			Then verify presence of /ItemEntries/,"Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","11.00",/Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67",/Tenders/,"CASH","11.67"
			Then clicked /MidButtons/,[Close]
#Action: 21 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 5 Verify you can order a pizza without selecting a pizza size
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
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Crust: Pan
			#NOTE on emulator if this is run right after 16.4 " Pan" is clicked but the action did not happen.
			#actually all "Pizza Size" and "Pizza Crust" do not produce action. no matter howlong is wait or if done by hand.
			#same 16.5 run by itself again works fine. Slow device can handle 16.4 16.5 combination too.
			Given screen state: 400
			Then clicked [Pan]
#Action: 7 Select Sausage
			Given screen state: 204
			When swiped left on /CenterModButtons(size 0.5)/
			Then clicked [Sausage]
#Action: 8 Select OK on Pizza Menu
			Given screen state: 216
			Then clicked [OK]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Pan\ Sausage","10.00"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Pan\ Sausage","10.00"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"Balance Due","$10.61"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 6 Verify you cannot order a pizza without selecting a pizza crust
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
			Given screen state: 401
			When swiped left on /CenterModButtons(size 0.5)/
			Then clicked [Sausage]
#Action: 8 Select OK on Pizza Menu
			Given screen state: 258
			Then clicked [OK]
#Action: 9 Dismiss Error Message
			Given screen state: 264
			Then clicked /DialogSeparator/,[OK]
#Action: 10 Select Pizza Crust
			Given screen state: 258
			Then clicked [Pan]
#Action: 11 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 12 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00"
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00"
			Then clicked [$]
#Action: 14 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"Balance Due","$10.61"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 7 Verify you cannot order a pizza without selecting a pizza topping
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
			Given screen state: 272
			Then clicked /DialogSeparator/,[OK]
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
			Then verify presence of /EntriesBySeat/,"Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","5.00"
			Then clicked [HERE]
#Action: 14 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","5.00"
			Then clicked [$]
#Action: 15 Exact Payment
			Then verify presence of /ItemEntries/,"Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","5.00","Seat 1",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"Balance Due","$5.31"
			Then clicked [Exact]
#Action: 16 Click Close
			Then verify presence of /ItemEntries/,"Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","5.00",/Comps/,"Sub Total","5.00",/Taxes/,"Tax","0.31","Total","5.31",/Tenders/,"CASH","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			#TODO ALOHAP-32844 cannot move items via split seat.
			Given screen state: 558
			When clicked [Exit]

#TODO fix moving items
Scenario: 8 Verify you add a pizza to a split check
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
			Given screen state: 401
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 402
			When swiped left on /CenterModButtons(size 0.5)/
			Then clicked [Sausage]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 10 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 11 Order Sausage Pizza
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00"
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
			Then clicked "Sausage Pizza\ Large\ Pan\ Sausage"
#Action: 22 Add Check
			Given screen state: 284
			Then clicked [Add]
#Action: 23 Select Seat 2
			Given screen state: 224
			Then clicked /CheckOrSeat/,"Seat 2"
#Action: 24 Split Check
			Given screen state: 294
			Then clicked [Split check]
#Action: 25 Select "Sausage Pizza"
			Given screen state: 297
			Then clicked "Sausage Pizza\ Large\ Pan\ Sausage"
#Action: 26 Add Check
			Given screen state: 297
			Then clicked [Add]
#Action: 27 Close Check
			Given screen state: 298
			Then clicked [Close]
#Action: 28 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 2","Sausage Pizza\ Large\ Pan\ Sausage","10.00"
			Then clicked [HERE]
#Action: 29 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 2","Sausage Pizza\ Large\ Pan\ Sausage","10.00"
			Then clicked [$]
#Action: 30 Exact Payment
			Then verify presence of /ItemEntries/,"Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","11.00",/Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67"
			Then clicked [Exact]
#Action: 31 Click Close
			Then verify presence of /ItemEntries/,"Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","11.00",/Comps/,"Sub Total","11.00",/Taxes/,"Tax","0.67","Total","11.67",/Tenders/,"CASH","11.67"
			Then clicked /MidButtons/,[Close]
#Action: 32 Exact Payment
			Then verify presence of /ItemEntries/,"Sausage Pizza\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"Balance Due","$10.61"
			Then clicked [Exact]
#Action: 33 Click Close
			Then verify presence of /ItemEntries/,"Seat 2","Sausage Pizza\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 34 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 9 Verify Repeat works on pizza items
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
#Action: 4 Select Pizza Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[PIZZA]
#Action: 5 Order Sausage Pizza
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "Sausage\Pizza"
#Action: 6 Select Pizza Size
			#NOTE same problem on emulator as with NOTE on 16.5  now size "Large" is clicked but does not apply.
			Given screen state: 400
			Then clicked [Large]
#Action: 7 Select Pizza Crust
			Given screen state: 401
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 402
			When swiped left on /CenterModButtons(size 0.5)/
			Then clicked [Sausage]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 10 Repeat Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Repeat]
#Action: 11 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage","10.00","Sausage Pizza\ Large\ Pan\ Sausage","10.00"
			Then clicked [HERE]
#Action: 12 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","2 Sausage Pizza\ Large\ Pan\ Sausage","20.00"
			Then clicked [$]
#Action: 13 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","2 Sausage Pizza\ Large\ Pan\ Sausage","20.00",/Comps/,"Sub Total","20.00",/Taxes/,"Tax","1.22","Total","21.22",/Tenders/,"Balance Due","$21.22"
			Then clicked [Exact]
#Action: 14 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","2 Sausage Pizza\ Large\ Pan\ Sausage","20.00",/Comps/,"Sub Total","20.00",/Taxes/,"Tax","1.22","Total","21.22",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 10 Verify you can void a pizza item
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
			Given screen state: 401
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 402
			When swiped left on /CenterModButtons(size 0.5)/
			Then clicked [Sausage]
#Action: 9 Select OK on Pizza Menu
			Given screen state: 006
			Then clicked [OK]
#Action: 10 Apply HERE Ordermode
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [HERE]
#Action: 11 Repeat Item
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked [Void]
#Action: 12 Select Sausage Pizza on Void Screen
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,^Sausage Pizza\ Large\ Pan\ Sausage^
			Then clicked /Items/,[OK]
#Action: 13 Select Misring
			Then verify presence of /SelectEntityDialog/,"Select Void Reason"
			Then clicked /DialogSeparator/,[MISRING]
#Action: 14 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","Sausage Pizza\ Large\ Pan\ Sausage"
			Then clicked [$]
#Action: 15 Click Close
			Then verify presence of /Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 11 Verify you can order pizza on both left and right halves
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
			Then verify presence of /EntriesBySeat/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","10.00"
			Then clicked [HERE]
#Action: 14 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","10.00"
			Then clicked [$]
#Action: 15 Exact Payment
			Then verify presence of /ItemEntries/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"Balance Due","$10.61"
			Then clicked [Exact]
#Action: 16 Click Close
			Then verify presence of /ItemEntries/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"CASH"
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 12 Verify you can only order 3 toppings with pizza halves
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
			Given screen state: 407
			Then clicked /DialogSeparator/,[OK]
#Action: 13 Select OK on Pizza Menu
			Given screen state: 408
			Then clicked [OK]
#Action: 14 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","12.00"
			Then clicked [HERE]
#Action: 15 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","12.00"
			Then clicked [$]
#Action: 16 Exact Payment
			Then verify presence of /ItemEntries/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","12.00",/Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.73","Total","12.73"
			Then clicked [Exact]
#Action: 17 Click Close
			Then verify presence of /ItemEntries/,"Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","12.00",/Comps/,"Sub Total","12.00",/Taxes/,"Tax","0.73","Total","12.73"
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 13 Verify you can add a typed modifier to a pizza item
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
			Given screen state: 401
			Then clicked [Pan]
#Action: 8 Select Sausage
			Given screen state: 402
			When swiped left on /CenterModButtons(size 0.5)/
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
			Then verify presence of /EntriesBySeat/,"Sausage Pizza\test\ Large\ Pan\ Sausage","10.00"
			Then clicked [HERE]
#Action: 13 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Sausage Pizza\test\ Large\ Pan\ Sausage","10.00"
			Then clicked [$]
#Action: 14 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","Sausage Pizza\test\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"Balance Due","$10.61"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /ItemEntries/,"Sausage Pizza\test\ Large\ Pan\ Sausage","10.00",/Comps/,"Sub Total","10.00",/Taxes/,"Tax","0.61","Total","10.61",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
