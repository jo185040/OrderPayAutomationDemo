Feature: 16 Pizza

@ TSSmokeTest

Scenario: 1 Verify order item from Pizza Menu
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {400}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {401}
	Then clicked [Pan]
# 8 Select Sausage
	Given screen state {402}
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 9 Select OK on Pizza Menu
	Given screen state {006}
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~Balance Due","Tenders~$10.61"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Verify you can order an item from Pizza Menu in Lunch menu
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
# 4 Select Pizza Menu on Lunch Panel
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Pizza Menu]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {002}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {003}
	Then clicked [Pan]
# 8 Select Sausage
	Given screen state {004}
	Then clicked [Chicken]
# 9 Select OK on Pizza Menu
	Given screen state {005}
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Chicken","EntriesBySeat~5.00"
	Then clicked [HERE]
# 11 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Chicken","EntriesBySeat~5.00"
	Then clicked [$]
# 12 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Large\ Pan\ Chicken","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31"
	Then clicked [Exact]
# 13 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Large\ Pan\ Chicken","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 14 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Verify you cannot order more than 3 toppings on a pizza
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
# 4 Select Pizza Menu on Lunch Panel
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Pizza Menu]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {002}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {003}
	Then clicked [Pan]
# 8 Select Chicken
	Given screen state {004}
	Then clicked [Chicken]
# 9 Select Cheese
	Given screen state {005}
	Then clicked [Cheese]
# 10 Select Beef
	# 16.3.11 Select Sausage
	Given screen state {140}
	Then clicked [Beef]
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 11 Dismiss Error Message
	Given screen state {144}
	Then clicked [DialogSeparator~OK]
# 12 Select OK on Pizza Menu
	Given screen state {145}
	Then clicked [OK]
# 13 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","EntriesBySeat~6.00"
	Then clicked [HERE]
# 14 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","EntriesBySeat~6.00"
	Then clicked [$]
# 15 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","ItemEntries~6.00","Comps~Sub Total","Comps~6.00","Taxes~Tax","Taxes~0.37","Taxes~Total","Taxes~6.37","Tenders~Balance Due","Tenders~$6.37"
	Then clicked [Exact]
# 16 Click Close
	Given screen state "ItemEntries~Sausage Pizza\ Large\ Pan\ Chicken\ Cheese\ Beef","ItemEntries~6.00","Comps~Sub Total","Comps~6.00","Taxes~Tax","Taxes~0.37","Taxes~Total","Taxes~6.37","Tenders~CASH","Tenders~6.37","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 17 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 Verify you can order a pizza with 5 modifier groups
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Veg 7\Thin"
# 6 Select Pizza Size
	Given screen state {151}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {152}
	Then clicked [Pan]
# 8 Order 4 Toppings with error
	Given screen state {156}
	Then clicked [Cheese]
	Then clicked [Chicken]
	Then clicked [Beef]
	Then clicked [Beef]
# 9 Dismiss Error Message
	Given screen state {157}
	Then clicked [DialogSeparator~OK]
# 10 Select Quiche Group
	Given screen state {158}
	Then clicked [AdditionalModGroupButtons~QUICHE]
# 11 Add Veggie Topping
	Given screen state {161}
	Then clicked [VEGGIE]
	Then clicked [VEGGIE]
# 12 Dismiss Error Message
	Given screen state {163}
	Then clicked [DialogSeparator~OK]
# 13 Select Cheese Group
	Given screen state {170}
	Then clicked [AdditionalModGroupButtons~CHEESE]
# 14 Add Cheddar Topping
	Given screen state {174}
	Then clicked [CHEDDAR]
	Then clicked [CHEDDAR]
# 15 Dismiss Error Message
	Given screen state {183}
	Then clicked [DialogSeparator~OK]
# 16 Select OK on Pizza Menu
	Given screen state {185}
	Then clicked [OK]
# 17 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","EntriesBySeat~11.00"
	Then clicked [HERE]
# 18 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","EntriesBySeat~11.00"
	Then clicked [$]
# 19 Exact Payment
	Given screen state "ItemEntries~Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","ItemEntries~11.00","Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67"
	Then clicked [Exact]
# 20 Click Close
	Given screen state "ItemEntries~Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","ItemEntries~11.00","Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67","Tenders~CASH","Tenders~11.67"
	Then clicked [MidButtons~Close]
# 21 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Verify you can order a pizza without selecting a pizza size
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Crust
	Given screen state {400}
	Then clicked [Pan]
# 7 Select Sausage
	Given screen state {204}
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 8 Select OK on Pizza Menu
	Given screen state {216}
	Then clicked [OK]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [$]
# 11 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~Balance Due","Tenders~$10.61"
	Then clicked [Exact]
# 12 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 13 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 6 Verify you cannot order a pizza without selecting a pizza crust
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {400}
	Then clicked [Large]
# 7 Select Sausage
	Given screen state {401}
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 8 Select OK on Pizza Menu
	Given screen state {258}
	Then clicked [OK]
# 9 Dismiss Error Message
	Given screen state {264}
	Then clicked [DialogSeparator~OK]
# 10 Select Pizza Crust
	Given screen state {258}
	Then clicked [Pan]
# 11 Select OK on Pizza Menu
	Given screen state {006}
	Then clicked [OK]
# 12 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [HERE]
# 13 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [$]
# 14 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~Balance Due","Tenders~$10.61"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 7 Verify you cannot order a pizza without selecting a pizza topping
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
# 4 Select Pizza Menu on Lunch Panel
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Pizza Menu]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Cheese\Pizza"
# 6 Select Pizza Size
	Given screen state {265}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {268}
	Then clicked [Pan]
# 8 Select OK on Pizza Menu
	Given screen state {270}
	Then clicked [OK]
# 9 Dismiss Error Message
	Given screen state {272}
	Then clicked [DialogSeparator~OK]
# 10 Select Chicken
	Given screen state {270}
	Then clicked [Chicken]
# 11 Select Cheese
	Given screen state {274}
	Then clicked [Cheese]
# 12 Select OK on Pizza Menu
	Given screen state {275}
	Then clicked [OK]
# 13 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","EntriesBySeat~5.00"
	Then clicked [HERE]
# 14 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","EntriesBySeat~5.00"
	Then clicked [$]
# 15 Exact Payment
	Given screen state "ItemEntries~Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","ItemEntries~5.00","ItemEntries~Seat 1","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~Balance Due","Tenders~$5.31"
	Then clicked [Exact]
# 16 Click Close
	Given screen state "ItemEntries~Cheese Pizza\ Large\ Pan\ Chicken\ Cheese","ItemEntries~5.00","Comps~Sub Total","Comps~5.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~5.31","Tenders~CASH","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 17 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 8 Verify you add a pizza to a split check
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {400}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {401}
	Then clicked [Pan]
# 8 Select Sausage
	Given screen state {402}
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 9 Select OK on Pizza Menu
	Given screen state {006}
	Then clicked [OK]
# 10 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 11 Order Sausage Pizza
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked "Veg 7\Thin"
# 12 Select Pizza Size
	Given screen state {151}
	Then clicked [Large]
# 13 Select Pizza Crust
	Given screen state {152}
	Then clicked [Pan]
# 14 Order 4 Toppings with error
	Given screen state {156}
	Then clicked [Cheese]
	Then clicked [Chicken]
	Then clicked [Beef]
# 15 Select Quiche Group
	Given screen state {158}
	Then clicked [AdditionalModGroupButtons~QUICHE]
# 16 Add Veggie Topping
	Given screen state {161}
	Then clicked [VEGGIE]
# 17 Select Cheese Group
	Given screen state {170}
	Then clicked [AdditionalModGroupButtons~CHEESE]
# 18 Add Cheddar Topping
	Given screen state {174}
	Then clicked [CHEDDAR]
# 19 Select OK on Pizza Menu
	Given screen state {185}
	Then clicked [OK]
# 20 Add Check
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [TopLeftButtons~Split Seat]
# 21 Select "Sausage Pizza"
	Given screen state {284}
	Then clicked "Sausage Pizza\ Large\ Pan\ Sausage"
# 22 Add Check
	Given screen state {284}
	Then clicked [Add]
# 23 Split Check
	Given screen state {294}
	Then clicked [Split check]
# 24 Select "Sausage Pizza"
	Given screen state {297}
	Then clicked "Sausage Pizza\ Large\ Pan\ Sausage"
# 25 Add Check
	Given screen state {297}
	Then clicked [Add]
# 26 Close Check
	Given screen state {298}
	Then clicked [Close]
# 27 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [HERE]
# 28 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 2","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [$]
# 29 Exact Payment
	Given screen state "ItemEntries~Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","ItemEntries~11.00","Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67"
	Then clicked [Exact]
# 30 Click Close
	Given screen state "ItemEntries~Veg 7 Thin\ Large\ Pan\ Cheese\ Chicken\ Beef\ VEGGIE\ CHEDDAR","ItemEntries~11.00","Comps~Sub Total","Comps~11.00","Taxes~Tax","Taxes~0.67","Taxes~Total","Taxes~11.67","Tenders~CASH","Tenders~11.67"
	Then clicked [MidButtons~Close]
# 31 Exact Payment
	Given screen state "ItemEntries~Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~Balance Due","Tenders~$10.61"
	Then clicked [Exact]
# 32 Click Close
	Given screen state "ItemEntries~Seat 2","ItemEntries~Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 33 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 9 Verify Repeat works on pizza items
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {400}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {401}
	Then clicked [Pan]
# 8 Select Sausage
	Given screen state {402}
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 9 Select OK on Pizza Menu
	Given screen state {006}
	Then clicked [OK]
# 10 Repeat Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Repeat]
# 11 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~10.00","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [HERE]
# 12 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~2 Sausage Pizza\ Large\ Pan\ Sausage","EntriesBySeat~20.00"
	Then clicked [$]
# 13 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~2 Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~20.00","Comps~Sub Total","Comps~20.00","Taxes~Tax","Taxes~1.22","Taxes~Total","Taxes~21.22","Tenders~Balance Due","Tenders~$21.22"
	Then clicked [Exact]
# 14 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~2 Sausage Pizza\ Large\ Pan\ Sausage","ItemEntries~20.00","Comps~Sub Total","Comps~20.00","Taxes~Tax","Taxes~1.22","Taxes~Total","Taxes~21.22","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 10 Verify you can void a pizza item
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {400}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {401}
	Then clicked [Pan]
# 8 Select Sausage
	Given screen state {402}
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 9 Select OK on Pizza Menu
	Given screen state {006}
	Then clicked [OK]
# 10 Apply HERE Ordermode
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [HERE]
# 11 Repeat Item
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [Void]
# 12 Select Sausage Pizza on Void Screen
	Given screen state "ItemSelectionDialog~Select items to void"
	Then clicked (Items~Sausage Pizza\ Large\ Pan\ Sausage)
	Then clicked [Items~OK]
# 13 Select Misring
	Given screen state "SelectEntityDialog~Select Void Reason"
	Then clicked [DialogSeparator~MISRING]
# 14 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~Sausage Pizza\ Large\ Pan\ Sausage"
	Then clicked [$]
# 15 Click Close
	Given screen state "Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 11 Verify you can order pizza on both left and right halves
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Peperoni\Pizza"
# 6 Select Pizza Size
	Given screen state {395}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {396}
	Then clicked [Pan]
# 8 Select Left side
	Given screen state {397}
	Then clicked [Left]
# 9 Select Beef
	Given screen state {397}
	Then clicked [Beef]
# 10 Select Right
	Given screen state {398}
	Then clicked [Right]
# 11 Select Chicken
	Given screen state {398}
	Then clicked [Chicken]
# 12 Select OK on Pizza Menu
	Given screen state {399}
	Then clicked [OK]
# 13 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","EntriesBySeat~10.00"
	Then clicked [HERE]
# 14 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","EntriesBySeat~10.00"
	Then clicked [$]
# 15 Exact Payment
	Given screen state "ItemEntries~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~Balance Due","Tenders~$10.61"
	Then clicked [Exact]
# 16 Click Close
	Given screen state "ItemEntries~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ 1/2\ Chicken","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~CASH"
	Then clicked [MidButtons~Close]
# 17 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 12 Verify you can only order 3 toppings with pizza halves
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Peperoni\Pizza"
# 6 Select Pizza Size
	Given screen state {395}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {396}
	Then clicked [Pan]
# 8 Select Left side
	Given screen state {397}
	Then clicked [Left]
# 9 Select Beef
	Given screen state {397}
	Then clicked [Beef]
	Then clicked [Beef]
	Then clicked [Beef]
# 10 Select Right
	Given screen state {406}
	Then clicked [Right]
# 11 Select Chicken
	Given screen state {406}
	Then clicked [Chicken]
	Then clicked [Chicken]
	Then clicked [Chicken]
	Then clicked [Chicken]
# 12 Dismiss the OK button
	Given screen state {407}
	Then clicked [DialogSeparator~OK]
# 13 Select OK on Pizza Menu
	Given screen state {408}
	Then clicked [OK]
# 14 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","EntriesBySeat~12.00"
	Then clicked [HERE]
# 15 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","EntriesBySeat~12.00"
	Then clicked [$]
# 16 Exact Payment
	Given screen state "ItemEntries~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","ItemEntries~12.00","Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.73"
	Then clicked [Exact]
# 17 Click Close
	Given screen state "ItemEntries~Peperoni Pizza\ Large\ Pan\ 1/2\ Beef\ Beef\ Beef\ 1/2\ Chicken\ Chicken\ Chicken","ItemEntries~12.00","Comps~Sub Total","Comps~12.00","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.73"
	Then clicked [MidButtons~Close]
# 18 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 13 Verify you can add a typed modifier to a pizza item
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
# 4 Select Pizza Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~PIZZA]
# 5 Order Sausage Pizza
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "Sausage\Pizza"
# 6 Select Pizza Size
	Given screen state {400}
	Then clicked [Large]
# 7 Select Pizza Crust
	Given screen state {401}
	Then clicked [Pan]
# 8 Select Sausage
	Given screen state {402}
	When swiped left on CenterModButtons~0.5
	Then clicked [Sausage]
# 9 Select Typewriter icon
	Given screen state {006}
	Then clicked [BottomRightButtons~btnMessage]
# 10 Add Typewriter Message
	Given screen state {007}
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~e]
	Then clicked [DialogSeparator~s]
	Then clicked [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 11 Select OK on Pizza Menu
	Given screen state {412}
	Then clicked [OK]
# 12 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Sausage Pizza\test\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [HERE]
# 13 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Sausage Pizza\test\ Large\ Pan\ Sausage","EntriesBySeat~10.00"
	Then clicked [$]
# 14 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~Sausage Pizza\test\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~Balance Due","Tenders~$10.61"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "ItemEntries~Sausage Pizza\test\ Large\ Pan\ Sausage","ItemEntries~10.00","Comps~Sub Total","Comps~10.00","Taxes~Tax","Taxes~0.61","Taxes~Total","Taxes~10.61","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
