#TODO ALOHAP-32985 support modifiers need to work for this to work.
Feature: 10 Gratuities


Scenario: 1 Add Gratuities
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 Select Full Rack on Ribs Submenu
			Given screen state: 128
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Given screen state: 129
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 130
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","41.94"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","41.94"
			Then clicked [$]
#Action: 11 Add Gratuity
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked /BottomLeftButtons/,[Add Gratuity]
#Action: 12 Press Ok
			Then verify presence of /CurrencyInputDialog/,"Enter Gratuity Percentage","%","18.00",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 13 Exact Payment
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","3.05","Total","44.99",/Gratuity/,"Gratuity","8.01","Total","53.00",/Tenders/,"Balance Due","$53.00"
			Then clicked [Exact]
#Action: 14 Click Close
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","3.05","Total","44.99",/Gratuity/,"Gratuity","8.01","Total","53.00",/Tenders/,"CASH","53.00"
			Then clicked /MidButtons/,[Close]
#Action: 15 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Delete Gratuities
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
#Action: 4 Select Entrees Menu
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /CenterMenuButtons/,[ENTREES]
#Action: 5 Order BBQ Ribs
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked "BBQ\RIBS"
#Action: 6 Select Full Rack on Ribs Submenu
			Given screen state: 128
			Then clicked [FULL RACK]
#Action: 7 Select Baked Potato on Starch Submenu
			Given screen state: 129
			Then clicked [Baked Potato]
#Action: 8 On Soup Mod, select Cup
			Given screen state: 130
			Then clicked [CUP]
#Action: 9 Apply HERE Ordermode
			Then verify presence of /EntriesBySeat/,"Seat 1","BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","41.94"
			Then clicked [HERE]
#Action: 10 Select $ on Payment Screen
			Then verify presence of /EntriesBySeat/,"Seat 1","BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","41.94"
			Then clicked [$]
#Action: 11 Add Gratuity
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked /BottomLeftButtons/,[Add Gratuity]
#Action: 12 Press Ok
			Then verify presence of /CurrencyInputDialog/,"Enter Gratuity Percentage","%","18.00",[<]
			Then clicked /DialogSeparator/,[OK]
#Action: 13 Select Gratuity on Check
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","3.05","Total","44.99",/Gratuity/,"Gratuity","8.01","Total","53.00",/Tenders/,"Balance Due","$53.00"
			Then clicked /Gratuity/,"Gratuity"
#Action: 14 Delete Gratuities
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","3.05","Total","44.99",/Gratuity/,"Gratuity","8.01","Total","53.00",/Tenders/,"Balance Due","$53.00"
			Then clicked /BottomRightButtons/,[Delete]
#Action: 15 Exact Payment
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"Balance Due","$44.50"
			Then clicked [Exact]
#Action: 16 Click Close
			Then verify presence of /Comps/,"Sub Total","41.94",/Taxes/,"Tax","2.56","Total","44.50",/Tenders/,"CASH","44.50","Change","$0.00"
			Then clicked /MidButtons/,[Close]
#Action: 17 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]
