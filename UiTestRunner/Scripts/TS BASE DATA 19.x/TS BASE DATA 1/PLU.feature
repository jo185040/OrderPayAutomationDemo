Feature: 35 PLU


Scenario: 1 PLU Items
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order PLU Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "PLU"
#Action: 6 Enter PLU Number
			Then verify presence of /InputDialog/,"Enter PLU Number","0",[<]
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[8]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Apply HERE Ordermode
			Given screen state: 430
			Then clicked [HERE]
#Action: 8 Select $ on Payment Screen
			Given screen state: 430
			Then clicked [$]
#Action: 9 Exact Payment
			Given screen state: 489
			Then clicked [Exact]
#Action: 10 Click Close
			Given screen state: 495
			Then clicked /MidButtons/,[Close]
#Action: 11 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Multiple PLU Items
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order PLU Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "PLU"
#Action: 6 Enter PLU Number
			Then verify presence of /InputDialog/,"Enter PLU Number","0",[<]
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[8]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Order PLU Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "PLU"
#Action: 8 Enter PLU Number
			Then verify presence of /InputDialog/,"Enter PLU Number","0",[<]
			Then clicked /DialogSeparator/,[7]
			Then clicked /DialogSeparator/,[9]
			Then clicked /DialogSeparator/,[OK]
#Action: 9 Apply HERE Ordermode
			Given screen state: 496
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 496
			Then clicked [$]
#Action: 11 Exact Payment
			Given screen state: 497
			Then clicked [Exact]
#Action: 12 Click Close
			Given screen state: 498
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 PLU Items with Error
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
			And clicked [OK]
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When swiped up on /CenterMenuButtons/
			Then clicked /CenterMenuButtons/,[RETAIL]
#Action: 5 Order PLU Item
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			Then clicked "PLU"
#Action: 6 Enter PLU Number
			Then verify presence of /InputDialog/,"Enter PLU Number","0",[<]
			Then clicked /DialogSeparator/,[8]
			Then clicked /DialogSeparator/,[8]
			Then clicked /DialogSeparator/,[OK]
#Action: 7 Select "OK" on Message Dialog
			Then verify presence of /Dialog/,"Not Found","PLU/SKU number not found!",[OK]
			Then clicked /Dialog/,[OK]
#Action: 8 Exit FloorPlan
			Then verify presence of /CenterMenuButtons/,[RETAIL]
			When clicked /TopLeftButtons/,[Done]
