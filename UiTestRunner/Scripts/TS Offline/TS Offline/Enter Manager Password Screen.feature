Feature: 13 Enter Manager Password Screen


Scenario: 1 Void: verify JIT screen can be confirmed by Manager emp. number
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
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
#Action: 5 Apply HERE Ordermode
			Given screen state: 522
			Then clicked [HERE]
#Action: 6 Void Item
			Then verify presence of /EntriesBySeat/,"Table","COKE","2.00"
			Then clicked /BottomButtons/,[Void]
#Action: 7 Enter Manager Code
			Given screen state: 148
			When clicked /DialogSeparator/,[2],[0],[0]
			And clicked /DialogSeparator/,[OK]
#Action: 8 Void Item
			Then verify presence of /ItemSelectionDialog/,"Select items to void"
			Then clicked /Items/,^COKE^
			Then clicked /Items/,[OK]
#Action: 9 Select "Misring"
			Then verify presence of /Dialog/,"Select Void Reason",^TESTING^,^OVERRING^,^MISRING^,^*86*^,^CHANGE MIND^,^WALKOUT^,^KITCHEN ERROR^,^SERVER ERROR^,[Cancel],[OK]
			Then clicked /Dialog/,^MISRING^
			Then clicked /Dialog/,[OK]
#Action: 10 Select Payment
			Then verify presence of /EntriesBySeat/,"Table","COKE"
			Then clicked [$]
#Action: 11 Exact Payment
			Then verify presence of /Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked [Exact]
#Action: 12 Click Close
			Then verify presence of /Comps/,"Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00","CASH"
			Then clicked /MidButtons/,[Close]
#Action: 13 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 2 Void: verify JIT screen can t be confirmed by not clocked in Manager
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
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
#Action: 5 Apply HERE Ordermode
			Given screen state: 522
			Then clicked [HERE]
#Action: 6 Void Item
			Then verify presence of /EntriesBySeat/,"Table","COKE","2.00"
			Then clicked /BottomButtons/,[Void]
#Action: 7 Add Manager Code
			Given screen state: 148
			When clicked /DialogSeparator/,[2],[0],[2]
			And clicked /DialogSeparator/,[OK]
#Action: 8 Select "OK"
			Then verify presence of /Dialog/,"Error","The supplied employee must login with a magcard",[OK]
			Then clicked /Dialog/,[OK]
#Action: 9 Select Payment
			Then verify presence of /EntriesBySeat/,"Table","COKE","2.00"
			Then clicked [$]
#Action: 10 Exact Payment
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"Balance Due","$2.00"
			Then clicked [Exact]
#Action: 11 Click Close
			Then verify presence of /Comps/,"Sub Total","2.00",/Taxes/,"Tax","0.00","Total","2.00",/Tenders/,"CASH","2.00","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 12 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 3 Comps: verify JIT screen can be confirmed by Manager emp. number
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
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
			Given screen state: 199
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Given screen state: 200
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 201
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 410
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 410
			Then clicked [$]
#Action: 11 Goto Promo Screen
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked /TopLeftButtons/,[Comp]
#Action: 12 Select Manager Comp
			Then verify presence of /MidLeftButtons/,[MGR COMP],[OPEN $$],[EMP MEAL]
			Then clicked /MidLeftButtons/,[MGR COMP]
#Action: 13 Add Manager Password
			Given screen state: 177
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 14 Select BBQ Ribs on Comp Screen
			Given screen state: 411
			Then clicked /Items/,^BBQ RIBS\ FULL RACK\ Baked Potato\ CUP^
#Action: 15 Select OK
			Then verify presence of /ItemSelectionDialog/,"Select items to comp"
			Then clicked /Items/,[OK]
#Action: 16 Select OK
			Then verify presence of /KeyboardEntryDialog/,"Enter name"
			Then clicked /DialogSeparator/,[t],[e],[s],[t]
			Then clicked /DialogSeparator/,[Ok]
#Action: 17 Click Close
			Then verify presence of /Comps/,"MGR COMP","-41.94","Sub Total","0.00",/Taxes/,"Tax","0.00","Total","0.00",/Tenders/,"Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]

Scenario: 4 Comps: verify JIT screen can t be confirmed by not clocked in Manager
#Action: 1 Login as manager 200
			Then verify presence of "SERVER 100 - 102\MANAGER 200 - 201\BARTENDER 300\KITCHEN 400\UNIVERSAL 203\MAG CARD 202\PASSWORD 500 - 501\MANAGER PASSWORD 600","SEE YOUR MGR\WITH ANY POS\QUESTIONS\TRAINING 150", [Login*]
			When clicked [1],[0],[0]
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
			Given screen state: 199
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Given screen state: 200
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 201
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Given screen state: 410
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Given screen state: 410
			Then clicked [$]
#Action: 11 Goto Promo Screen
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked /TopLeftButtons/,[Comp]
#Action: 12 Select Manager Comp
			Then verify presence of /MidLeftButtons/,[MGR COMP],[OPEN $$],[EMP MEAL]
			Then clicked /MidLeftButtons/,[MGR COMP]
#Action: 13 Add Manager Password
			Given screen state: 177
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[OK]
#Action: 14 Dismiss Error Message
			Then verify presence of /Dialog/,"Error","The supplied employee must login with a magcard",[OK]
			Then clicked /Dialog/,[OK]
#Action: 15 Goto Promo Screen
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked /TopLeftButtons/,[Payment]
#Action: 16 Exact Payment
			Given screen state: 505
			Then clicked [Exact]
#Action: 17 Click Close
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked /MidButtons/,[Close]
#Action: 18 Exit FloorPlan
			Given screen state: 492
			When clicked [Exit]
