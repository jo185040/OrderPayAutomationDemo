Feature: 32 Void


Scenario: 1 Verify you can void items with no issues
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
#Action: 6 Add COKE
			Given screen state: 714
			Then clicked "COKE"
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 708
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 709
			Then clicked "HERE"
#Action: 10 Void COKE
			Given screen state: 708
			Then clicked [btnDelete]
#Action: 11 Select COKE on Void Screen
			Given screen state: 710
			Then clicked /Items/,^COKE^
#Action: 12 Select OK on Void Screen
			Given screen state: 713
			Then clicked /Items/,[OK]
#Action: 13 Select Void Reason on Void Screen
			Then verify presence of /Dialog/,"Select Void Reason",^TESTING^,^OVERRING^,^MISRING^,^*86*^,^CHANGE MIND^,^WALKOUT^,^KITCHEN ERROR^,^SERVER ERROR^,[Cancel],[OK]
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 14 Select Pay on Payment Screen
			Given screen state: 764
			Then clicked [Pay]
#Action: 15 Select No Receipt
			Given screen state: 619
			Then clicked [No Receipt]
#Action: 16 Logout on WWT Screen
			Given screen state: 518
			When clicked [btnThreeDots]
			When clicked "Clock Out"

Scenario: 2 Verify you can clear (delete) unordered an item
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
#Action: 6 Add COKE
			Given screen state: 714
			Then clicked "COKE"
#Action: 7 Go Back to Guest Check
			Given screen state: 703
			Then clicked /OK/
#Action: 8 Select Coke on Check
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			Then clicked /TableAndChecks/,[Clear]
#Action: 9 Select OK
			Then verify presence of /Dialog/,"Clear All Unordered Items","Are you sure you want to clear all items which have not been held or ordered?",[Cancel],[OK]
			Then clicked /Dialog/,[OK]
#Action: 10 Click Done
			Then verify presence of /CenterMenuButtons/,[LUNCH MENU]
			When clicked /TopLeftButtons/,[Done]

Scenario: 3 Verify JIT screen displays when trying to void item
#Action: 1 Login as Server 100
			Given screen state: 510
			When clicked [1],[0],[0]
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
			Given screen state: 653
			Then clicked [Menu]
#Action: 6 Add COKE
			Given screen state: 654
			Then clicked "COKE"
#Action: 7 Go Back to Guest Check
			Given screen state: 655
			Then clicked /OK/
#Action: 8 Click Send on OrderMode
			Given screen state: 656
			Then clicked [Send]
#Action: 9 Click "Here" on OrderMode
			Given screen state: 657
			Then clicked "HERE"
#Action: 10 Void COKE
			Given screen state: 656
			Then clicked [btnDelete]
#Action: 11 Enter manager 20 on JIT Screen
			Then verify presence of /LoginDialog/,"Enter manager password"
			Then clicked /DialogSeparator/,[2]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[0]
			Then clicked /DialogSeparator/,[OK]
#Action: 12 Select COKE on Void Screen
			Then verify presence of /ItemSelectionDialogPortrait/,"Select items to void"
			Then clicked /Items/,^COKE^
#Action: 13 Select OK on Void Screen
			Then verify presence of /ItemSelectionDialogPortrait/,"Select items to void"
			Then clicked /Items/,[OK]
#Action: 14 Select Void Reason on Void Screen
			Then verify presence of /Dialog/,"Select Void Reason",^TESTING^,^OVERRING^,^MISRING^,^*86*^,^CHANGE MIND^,^WALKOUT^,^KITCHEN ERROR^,^SERVER ERROR^,[Cancel],[OK]
			Then clicked /Dialog/,^OVERRING^
			Then clicked /Dialog/,[OK]
#Action: 15 Select Pay on Payment Screen
			Given screen state: 704
			Then clicked [Pay]
#Action: 16 Select No Receipt
			Given screen state: 619
			Then clicked [No Receipt]
#Action: 17 Logout on WWT Screen
			Given screen state: 652
			When clicked [btnThreeDots]
			When clicked "Clock Out"
