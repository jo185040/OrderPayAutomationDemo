Feature: 17 Promo


Scenario: 1 BOGO
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
# 5 Order Lobster Mac
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "LOBSTR\MAC CHZ"
# 6 Order Tilapia
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "TILAPIA"
# 7 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~LOBSTR MAC CHZ","EntriesBySeat~11.99","EntriesBySeat~TILAPIA","EntriesBySeat~11.99"
	Then clicked [HERE]
# 8 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~LOBSTR MAC CHZ","EntriesBySeat~11.99","EntriesBySeat~TILAPIA","EntriesBySeat~11.99"
	Then clicked [$]
# 9 Goto Promo Screen
	Given screen state "Comps~Sub Total","Comps~23.98","Taxes~Tax","Taxes~1.46","Taxes~Total","Taxes~25.44","Tenders~Balance Due","Tenders~$25.44"
	Then clicked [TopLeftButtons~Promo]
# 10 Select Buy 1 Get 1 Free
	Given screen state [MidLeftButtons~BUY 1 GET 1 FREE],[MidLeftButtons~Lunch Combo]
	Then clicked [MidLeftButtons~BUY 1 GET 1 FREE]
# 11 Select Tilaipa
	Given screen state "ItemSelectionDialog~Please select 1 required promo item."
	Then clicked (Items~TILAPIA)
# 12 Select OK
	Given screen state "ItemSelectionDialog~Please select 1 required promo item."
	Then clicked [Items~OK]
# 13 Select Lobster Mac Cheeze
	Given screen state "ItemSelectionDialog~Please select the item to discount."
	Then clicked (Items~LOBSTR MAC CHZ)
# 14 Select OK
	Given screen state "ItemSelectionDialog~Please select the item to discount."
	Then clicked [Items~OK]
# 15 Select Payment
	Given screen state [MidLeftButtons~BUY 1 GET 1 FREE],[MidLeftButtons~Lunch Combo]
	Then clicked [TopLeftButtons~Payment]
# 16 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~LOBSTR MAC CHZ","ItemEntries~11.99","ItemEntries~TILAPIA","ItemEntries~11.99","Promos~BUY 1 GET 1 FREE","Promos~-11.99","Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~Balance Due","Tenders~$12.72"
	Then clicked [Exact]
# 17 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~LOBSTR MAC CHZ","ItemEntries~11.99","ItemEntries~TILAPIA","ItemEntries~11.99","Promos~BUY 1 GET 1 FREE","Promos~-11.99","Comps~Sub Total","Comps~11.99","Taxes~Tax","Taxes~0.73","Taxes~Total","Taxes~12.72","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 18 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Lunch Combo
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
# 4 Add COKE
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "COKE"
# 5 Order Pork Nachos
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "PORK\NACHOS"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS"
	Then clicked [HERE]
# 7 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~PORK NACHOS"
	Then clicked [$]
# 8 Goto Promo Screen
	Given screen state "Comps~Sub Total","Tenders~Balance Due","Tenders~$7.31"
	Then clicked [TopLeftButtons~Promo]
# 9 Select Lunch Combo
	Given screen state [MidLeftButtons~BUY 1 GET 1 FREE],[MidLeftButtons~Lunch Combo]
	Then clicked [MidLeftButtons~Lunch Combo]
# 10 Select Pork Nachos
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","Comps~Sub Total","Comps~7.00","Taxes~Tax","Taxes~0.31","Taxes~Total","Taxes~7.31","Tenders~Balance Due","Tenders~$7.31"
	Then clicked (Items~PORK NACHOS)
# 11 Select OK
	Given screen state "ItemSelectionDialog~Please select the required promo items."
	Then clicked [Items~OK]
# 12 Select Coke
	Given screen state "ItemSelectionDialog~Please select the required promo items."
	Then clicked (Items~COKE)
# 13 Select OK
	Given screen state "ItemSelectionDialog~Please select the required promo items."
	Then clicked [Items~OK]
# 14 Select Payment
	Given screen state "Promos~Lunch Combo","Promos~-1.50",[MidLeftButtons~BUY 1 GET 1 FREE]
	Then clicked [TopLeftButtons~Payment]
# 15 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","Promos~Lunch Combo","Promos~-1.50","Comps~Sub Total","Comps~5.50","Taxes~Tax","Taxes~0.24","Taxes~Total","Taxes~5.74","Tenders~Balance Due","Tenders~$5.74"
	Then clicked [Exact]
# 16 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~COKE","ItemEntries~2.00","ItemEntries~PORK NACHOS","ItemEntries~5.00","Promos~Lunch Combo","Promos~-1.50","Comps~Sub Total","Comps~5.50","Taxes~Tax","Taxes~0.24","Taxes~Total","Taxes~5.74","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 17 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 3 Free Dessert
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
# 4 Select Dessert Menu
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked [CenterMenuButtons~DESSERT]
# 5 Order Carrot Cake
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "CARROT\CAKE"
# 6 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~CARROT CAKE","EntriesBySeat~2.50"
	Then clicked [HERE]
# 7 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~CARROT CAKE","EntriesBySeat~2.50"
	Then clicked [$]
# 8 Goto Promo Screen
	Given screen state "ItemEntries~Seat 1","ItemEntries~CARROT CAKE","ItemEntries~2.50","Comps~Sub Total","Comps~2.50","Taxes~Tax","Taxes~0.15","Taxes~Total","Taxes~2.65","Tenders~Balance Due","Tenders~$2.65"
	Then clicked [TopLeftButtons~Promo]
# 9 Select $1 Dessert
	Given screen state [MidLeftButtons~BUY 1 GET 1 FREE],[MidLeftButtons~Lunch Combo]
	Then clicked [MidLeftButtons~$1 Dessert]
# 10 Select Carrot Cake
	Given screen state "ItemSelectionDialog~Select items"
	Then clicked (Items~CARROT CAKE)
# 11 Select OK
	Given screen state "ItemSelectionDialog~Select items"
	Then clicked [Items~OK]
# 12 Select Payment
	Given screen state "Promos~$1 Dessert","Promos~-1.50","Comps~Sub Total","Comps~1.00","Taxes~Tax","Taxes~0.06","Taxes~Total","Taxes~1.06","Tenders~Balance Due","Tenders~$1.06"
	Then clicked [TopLeftButtons~Payment]
# 13 Exact Payment
	Given screen state "Promos~$1 Dessert","Promos~-1.50","Comps~Sub Total","Comps~1.00","Taxes~Tax","Taxes~0.06","Taxes~Total","Taxes~1.06","Tenders~Balance Due","Tenders~$1.06",[MidLeftButtons~CASH]
	Then clicked [$10]
# 14 Click Close
	Given screen state "Promos~$1 Dessert","Promos~-1.50","Comps~Sub Total","Comps~1.00","Taxes~Tax","Taxes~0.06","Taxes~Total","Taxes~1.06","Tenders~CASH","Tenders~Change","Tenders~$8.94"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 4 off $20 Dollars
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
# 5 Order BBQ Ribs
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "BBQ\RIBS"
# 6 Select Full Rack on Ribs Submenu
	Given screen state [RightModifierButtons~1/2 RACK]
	Then clicked [FULL RACK]
# 7 Select Baked Potato on Starch Submenu
	Given screen state [RightModifierButtons~Baked Potato]
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~CUP]
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [$]
# 11 Goto Promo Screen
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [TopLeftButtons~Promo]
# 12 Select $5 off $20 Off
	Given screen state [MidLeftButtons~BUY 1 GET 1 FREE],[MidLeftButtons~Lunch Combo]
	Then clicked [MidLeftButtons~$5 Off $20 Dollars]
# 13 Select Payment
	Given screen state "Promos~$5 Off $20 Dollars","Promos~-5.00"
	Then clicked [TopLeftButtons~Payment]
# 14 Exact Payment
	Given screen state "Promos~$5 Off $20 Dollars","Promos~-5.00","Comps~Sub Total","Comps~36.94","Taxes~Tax","Taxes~2.25","Taxes~Total","Taxes~39.19","Tenders~Balance Due","Tenders~$39.19"
	Then clicked [Exact]
# 15 Click Close
	Given screen state "Promos~$5 Off $20 Dollars","Promos~-5.00","Comps~Sub Total","Comps~36.94","Taxes~Tax","Taxes~2.25","Taxes~Total","Taxes~39.19","Tenders~CASH","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 16 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 5 Coupon Type
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
# 4 Order Miller Lite
	Given screen state [CenterMenuButtons~LUNCH MENU]
	Then clicked "MILLER\LITE"
# 5 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [HERE]
# 6 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~MILLER LITE","EntriesBySeat~3.00"
	Then clicked [$]
# 7 Goto Promo Screen
	Given screen state "Comps~Sub Total","Comps~3.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~3.00","Tenders~Balance Due","Tenders~$3.00"
	Then clicked [TopLeftButtons~Promo]
# 8 Select Free Beer
	Given screen state [MidLeftButtons~BUY 1 GET 1 FREE]
	Then clicked [MidLeftButtons~Free Beer]
# 9 Click Close
	Given screen state "Promos~Free Beer","Promos~-3.00","Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 10 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
