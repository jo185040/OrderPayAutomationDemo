Feature: 17 Promo


Scenario: 1 BOGO
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order Lobster Mac
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "LOBSTR\MAC CHZ"
#Action: 6 Order Tilapia
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "TILAPIA"
#Action: 7 Apply HERE Ordermode
			Given screen state: 002
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","LOBSTR MAC CHZ","11.99","TILAPIA","11.99"
			Then clicked [$]
#Action: 9 Goto Promo Screen
			Then verify presence of /Comps/,"Sub Total","23.98",/Taxes/,"Tax","1.46","Total","25.44",/Tenders/,"Balance Due","$25.44"
			Then clicked /TopLeftButtons/,[Promo]
#Action: 10 Select Buy 1 Get 1 Free
			Then verify presence of /MidLeftButtons/,[BUY 1 GET 1 FREE],[Lunch Combo]
			Then clicked /MidLeftButtons/,[BUY 1 GET 1 FREE]
#Action: 11 Select Tilaipa
			Then verify presence of /ItemSelectionDialog/,"Please select 1 required promo item."
			Then clicked /Items/,^TILAPIA^
#Action: 12 Select OK
			Then verify presence of /ItemSelectionDialog/,"Please select 1 required promo item."
			Then clicked /Items/,[OK]
#Action: 13 Select Lobster Mac Cheeze
			Then verify presence of /ItemSelectionDialog/,"Please select the item to discount."
			Then clicked /Items/,^LOBSTR MAC CHZ^
#Action: 14 Select OK
			Then verify presence of /ItemSelectionDialog/,"Please select the item to discount."
			Then clicked /Items/,[OK]
#Action: 15 Select Payment
			Then verify presence of /MidLeftButtons/,[BUY 1 GET 1 FREE],[Lunch Combo]
			Then clicked /TopLeftButtons/,[Payment]
#Action: 16 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","LOBSTR MAC CHZ","11.99","TILAPIA","11.99",/Promos/,"BUY 1 GET 1 FREE","-11.99",/Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"Balance Due","$12.72"
			Then clicked [Exact]
#Action: 17 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","LOBSTR MAC CHZ","11.99","TILAPIA","11.99",/Promos/,"BUY 1 GET 1 FREE","-11.99",/Comps/,"Sub Total","11.99",/Taxes/,"Tax","0.73","Total","12.72",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 2 Lunch Combo
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Add COKE
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "COKE"
#Action: 5 Order Pork Nachos
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "PORK\NACHOS"
#Action: 6 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS"
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","PORK NACHOS"
			Then clicked [$]
#Action: 8 Goto Promo Screen
			Then verify presence of /Comps/,"Sub Total",/Tenders/,"Balance Due","$7.31"
			Then clicked /TopLeftButtons/,[Promo]
#Action: 9 Select Lunch Combo
			Then verify presence of /MidLeftButtons/,[BUY 1 GET 1 FREE],[Lunch Combo]
			Then clicked /MidLeftButtons/,[Lunch Combo]
#Action: 10 Select Pork Nachos
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00",/Comps/,"Sub Total","7.00",/Taxes/,"Tax","0.31","Total","7.31",/Tenders/,"Balance Due","$7.31"
			Then clicked /Items/,^PORK NACHOS^
#Action: 11 Select OK
			Then verify presence of /ItemSelectionDialog/,"Please select the required promo items."
			Then clicked /Items/,[OK]
#Action: 12 Select Coke
			Then verify presence of /ItemSelectionDialog/,"Please select the required promo items."
			Then clicked /Items/,^COKE^
#Action: 13 Select OK
			Then verify presence of /ItemSelectionDialog/,"Please select the required promo items."
			Then clicked /Items/,[OK]
#Action: 14 Select Payment
			Then verify presence of /Promos/,"Lunch Combo","-1.50",/MidLeftButtons/,[BUY 1 GET 1 FREE]
			Then clicked /TopLeftButtons/,[Payment]
#Action: 15 Exact Payment
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00",/Promos/,"Lunch Combo","-1.50",/Comps/,"Sub Total","5.50",/Taxes/,"Tax","0.24","Total","5.74",/Tenders/,"Balance Due","$5.74"
			Then clicked [Exact]
#Action: 16 Click Close
			Then verify presence of /ItemEntries/,"Seat 1","COKE","2.00","PORK NACHOS","5.00",/Promos/,"Lunch Combo","-1.50",/Comps/,"Sub Total","5.50",/Taxes/,"Tax","0.24","Total","5.74",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 3 Free Dessert
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Dessert Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[DESSERT]
#Action: 5 Order Carrot Cake
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "CARROT\CAKE"
#Action: 6 Apply HERE Ordermode
			Given screen state: 003
			Then clicked [HERE]
#Action: 7 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","CARROT CAKE","2.50"
			Then clicked [$]
#Action: 8 Goto Promo Screen
			Then verify presence of /ItemEntries/,"Seat 1","CARROT CAKE","2.50",/Comps/,"Sub Total","2.50",/Taxes/,"Tax","0.15","Total","2.65",/Tenders/,"Balance Due","$2.65"
			Then clicked /TopLeftButtons/,[Promo]
#Action: 9 Select $1 Dessert
			Then verify presence of /MidLeftButtons/,[BUY 1 GET 1 FREE],[Lunch Combo]
			Then clicked /MidLeftButtons/,[$1 Dessert]
#Action: 10 Select Carrot Cake
			Then verify presence of /ItemSelectionDialog/,"Select items"
			Then clicked /Items/,^CARROT CAKE^
#Action: 11 Select OK
			Then verify presence of /ItemSelectionDialog/,"Select items"
			Then clicked /Items/,[OK]
#Action: 12 Select Payment
			Then verify presence of /Promos/,"$1 Dessert","-1.50",/Comps/,"Sub Total","1.00",/Taxes/,"Tax","0.06","Total","1.06",/Tenders/,"Balance Due","$1.06"
			Then clicked /TopLeftButtons/,[Payment]
#Action: 13 Exact Payment
			Then verify presence of /Promos/,"$1 Dessert","-1.50",/Comps/,"Sub Total","1.00",/Taxes/,"Tax","0.06","Total","1.06",/Tenders/,"Balance Due","$1.06",/MidLeftButtons/,[CASH]
			Then clicked [$10]
#Action: 14 Click Close
			Then verify presence of /Promos/,"$1 Dessert","-1.50",/Comps/,"Sub Total","1.00",/Taxes/,"Tax","0.06","Total","1.06",/Tenders/,"CASH","Change","$8.94"
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 4 off $20 Dollars
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 Select Full Rack on Ribs Submenu
			Then verify presence of /RightModifierButtons/,[1/2 RACK]
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Then verify presence of /RightModifierButtons/,[Baked Potato]
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Then verify presence of /RightModifierButtons/,[CUP]
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 514
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 514
			Then clicked [$]
#Action: 11 Goto Promo Screen
			Given screen state: 484
			Then clicked /TopLeftButtons/,[Promo]
#Action: 12 Select $5 off $20 Off
			Then verify presence of /MidLeftButtons/,[BUY 1 GET 1 FREE],[Lunch Combo]
			Then clicked /MidLeftButtons/,[$5 Off $20 Dollars]
#Action: 13 Select Payment
			Then verify presence of /Promos/,"$5 Off $20 Dollars","-5.00"
			Then clicked /TopLeftButtons/,[Payment]
#Action: 14 Exact Payment
			Then verify presence of /Promos/,"$5 Off $20 Dollars","-5.00",/Comps/,"Sub Total","36.94",/Taxes/,"Tax","2.25","Total","39.19",/Tenders/,"Balance Due","$39.19"
			Then clicked [Exact]
#Action: 15 Click Close
			Then verify presence of /Promos/,"$5 Off $20 Dollars","-5.00",/Comps/,"Sub Total","36.94",/Taxes/,"Tax","2.25","Total","39.19",/Tenders/,"CASH","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 16 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 5 Coupon Type
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [2],[0],[0]
			And clicked [Login]
			Then verify absence of [Login]
#Action: 2 Floor Plan select Table 1
			Given screen state: 492
			Then clicked [1]
#Action: 3 Enter Guest Count 1
			Given screen state: 025
			When clicked /DialogSeparator/,[1]
			And clicked /DialogSeparator/,[OK]
			Then verify absence of "Enter Guest Count"
#Action: 4 Order Miller Lite
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "MILLER\LITE"
#Action: 5 Apply HERE Ordermode
			Given screen state: 004
			Then clicked [HERE]
#Action: 6 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","MILLER LITE","3.00"
			Then clicked [$]
#Action: 7 Goto Promo Screen
			Then verify presence of /Comps/,"Sub Total","3.00",/Taxes/,"Tax","0.00","Total","3.00",/Tenders/,"Balance Due","$3.00"
			Then clicked /TopLeftButtons/,[Promo]
#Action: 8 Select Free Beer
			Then verify presence of /MidLeftButtons/,[BUY 1 GET 1 FREE]
			Then clicked /MidLeftButtons/,[Free Beer]
#Action: 9 Click Close
			Then verify presence of /Promos/,"Free Beer","-3.00",/Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 10 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]
