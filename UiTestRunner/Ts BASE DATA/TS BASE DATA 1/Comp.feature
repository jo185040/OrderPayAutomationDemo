Feature: 6 Comp

@ Comp

Scenario: 1 Manager Comp
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
	Given screen state [RightModifierButtons~1/2 RACK],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~BBQ RIBS","Modifer~11.99"
	Then clicked [FULL RACK]
# 7 Select Baked Potato on Starch Submenu
	Given screen state [RightModifierButtons~Baked Potato],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~- FULL RACK","Modifer~11.99","Modifer~BBQ RIBS"
	Then clicked [Baked Potato]
# 8 On Soup Mod, select Cup
	Given screen state [RightModifierButtons~CUP],[CenterCategoryButtons~RIBS],[CenterCategoryButtons~STARCH],[CenterCategoryButtons~SOUP MOD],"Modifer~- Baked Potato","Modifer~11.99","Modifer~- FULL RACK","Modifer~BBQ RIBS"
	Then clicked [CUP]
# 9 Apply HERE Ordermode
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [HERE]
# 10 Select $ on Payment Screen
	Given screen state "EntriesBySeat~Seat 1","EntriesBySeat~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP","EntriesBySeat~41.94"
	Then clicked [$]
# 11 Goto Promo Screen
	Given screen state "Comps~Sub Total","Comps~41.94","Taxes~Tax","Taxes~2.56","Taxes~Total","Taxes~44.50","Tenders~Balance Due","Tenders~$44.50"
	Then clicked [TopLeftButtons~Comp]
# 12 Select Manager Comp
	Given screen state [MidLeftButtons~MGR COMP],[MidLeftButtons~OPEN $$],[MidLeftButtons~EMP MEAL]
	Then clicked [MidLeftButtons~MGR COMP]
# 13 Select BBQ Ribs on Comp Screen
	Given screen state "ItemSelectionDialog~Select items to comp","Items~Seat 1",(Items~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP)
	Then clicked (Items~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP)
# 14 Select OK
	Given screen state "ItemSelectionDialog~Select items to comp","Items~Seat 1",(Items~BBQ RIBS\ FULL RACK\ Baked Potato\ CUP)
	Then clicked [Items~OK]
# 15 Select OK
	Given screen state [MidLeftButtons~MGR COMP],[MidLeftButtons~OPEN $$],[MidLeftButtons~EMP MEAL]
	Then clicked [DialogSeparator~t], [DialogSeparator~e], [DialogSeparator~s], [DialogSeparator~t]
	Then clicked [DialogSeparator~Ok]
# 16 Click Close
	Given screen state "Comps~MGR COMP","Comps~-41.94","Comps~Sub Total","Comps~0.00","Taxes~Tax","Taxes~0.00","Taxes~Total","Taxes~0.00","Tenders~Change","Tenders~$0.00"
	Then clicked [MidButtons~Close]
# 17 Exit FloorPlan
	Given screen state {558}
	When clicked [Exit]
