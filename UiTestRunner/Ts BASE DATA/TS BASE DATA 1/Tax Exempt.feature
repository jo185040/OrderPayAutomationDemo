Feature: 28 Tax Exempt

@ TaxExempt

Scenario: 1 Add Tax Exempt
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
	Given screen state [RightModifierButtons~Black Beans]
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [$]
# 11 Add Tax Exempt
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [BottomLeftButtons~Tax Exempt]
# 12 Press Ok
	Given screen state "KeyboardEntryDialog~Enter Tax Exempt Number"
	Then clicked [DialogSeparator~T], [DialogSeparator~E], [DialogSeparator~S], [DialogSeparator~T]
	Then clicked [DialogSeparator~Ok]
# 13 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax Exempt TEST","Taxes~0.00","Taxes~Total","Taxes~41.94","Tenders~Balance Due","Tenders~$41.94"
	Then clicked [Exact]
# 14 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax Exempt TEST","Taxes~0.00","Taxes~Total","Taxes~41.94","Tenders~CASH","Tenders~$41.94","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 15 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]

Scenario: 2 Remove Tax Exempt
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
	Given screen state [RightModifierButtons~Black Beans]
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~HOUSE\SALAD]
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [$]
# 11 Add Tax Exempt
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [BottomLeftButtons~Tax Exempt]
# 12 Press Ok
	Given screen state "KeyboardEntryDialog~Enter Tax Exempt Number"
	Then clicked [DialogSeparator~T], [DialogSeparator~E], [DialogSeparator~S], [DialogSeparator~T]
	Then clicked [DialogSeparator~Ok]
# 13 Select Tax Exempt on Check
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax Exempt TEST","Taxes~0.00","Taxes~Total","Taxes~41.94","Tenders~Balance Due","Tenders~$41.94"
	Then clicked "Taxes~Tax Exempt TEST"
# 14 Remove Tax Exempt
	Given screen state "Taxes~Tax Exempt TEST",[Taxes~Del],"Taxes~0.00","Taxes~Total","Taxes~41.94"
	Then clicked [BottomRightButtons~Delete]
# 15 Exact Payment
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [Exact]
# 16 Click Close
	Given screen state "ItemEntries~Seat 1","ItemEntries~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","ItemEntries~41.94","Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~CASH","Tenders~44.50","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 17 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
