Feature: 1 Clockin Employees


Scenario: 1 Login as manager 201 to Floor Plan
#Action: 1 Login as manager 201
			Given screen state: 510
			When clicked [2],[0],[1]
			And clicked [OK]
#Action: 2 Select manager jobcode
			Given screen state: 511
			When clicked "MANAGER"
#Action: 3 Clockin as manager 201
			Given screen state: 512
			When clicked [Clock In]
#Action: 4 Logout
			Given screen state: 511
			When clicked /ThreeDotsBtn/
#Action: 5 Click Clockout
			Given screen state: 515
			When clicked /AddTableBtn/,"Clock out"

Scenario: 2 Login as manager 200 to Floor Plan
#Action: 1 Login as manager 200
			Given screen state: 510
			When clicked [2],[0],[0]
			And clicked [OK]
#Action: 2 Select Manager Jobcode
			Given screen state: 516
			When clicked "MANAGER"
#Action: 3 Clockin as manager 200
			Given screen state: 517
			When clicked [Clock In]
#Action: 4 Logout
			Given screen state: 518
			When clicked /ThreeDotsBtn/
#Action: 5 Click Clockout
			Given screen state: 519
			When clicked /AddTableBtn/,"Clock out"

Scenario: 3 Login as server 100 to Floor Plan
#Action: 1 Login as manager 100
			Given screen state: 510
			When clicked [1],[0],[0]
			And clicked [OK]
#Action: 2 Clockin as manager 100
			Given screen state: 520
			When clicked "SERVER"
#Action: 3 Clockin as manager 201
			Given screen state: 521
			When clicked [Clock In]
#Action: 4 Logout
			Given screen state: 522
			When clicked /ThreeDotsBtn/
#Action: 5 Click Clockout
			Given screen state: 523
			When clicked /AddTableBtn/,"Clock out"

Scenario: 4 Login as OrderTaker 203 to Floor Plan
#Action: 1 Login as manager 203
			Given screen state: 510
			When clicked [2],[0],[3]
			And clicked [OK]
#Action: 2 Clockin as manager 203
			Given screen state: 524
			When clicked "ORDERTAKER"
#Action: 3 Clockin as manager 203
			Given screen state: 525
			When clicked [Clock In]
#Action: 4 Logout
			Given screen state: 526
			When clicked /ThreeDotsBtn/
#Action: 5 Click Clockout
			Given screen state: 527
			When clicked /AddTableBtn/,"Clock out"

Scenario: 5 Login as bartender 300 to Floor Plan
#TODO Logout button needed on guest check screen
#Action: 1 Login as Bartender 300
			Given screen state: 510
			When clicked [3],[0],[0]
			And clicked [OK]
#Action: 2 Clockin as manager 300
			Given screen state: 528
			When clicked "BAR"
#Action: 3 Clockin as manager 300
			Given screen state: 529
			When clicked [Clock In]
#Action: 4 Logout
			Given screen state: 511
			When clicked /ThreeDotsBtn/
#Action: 5 Click Clockout
			Given screen state: 515
			When clicked /AddTableBtn/,"Clock out"

Scenario: 6 Login as TRAINING 150 to Floor Plan
#Action: 1 Login as manager 100
			Given screen state: 510
			When clicked [1],[5],[0]
			And clicked [OK]
#Action: 2 Clockin as manager 201
			Given screen state: 530
			When clicked "TRAINING"
#Action: 3 Clockin as manager 201
			Given screen state: 531
			When clicked [Clock In]
#Action: 4 Logout
			Given screen state: 532
			When clicked /ThreeDotsBtn/
#Action: 5 Click Clockout
			Given screen state: 533
			When clicked /AddTableBtn/,"Clock out"

Scenario: 7 Invalid Emp
#Action: 1 Login with Invalid Emp 208
			Given screen state: 510
			When clicked [2],[0],[8]
			And clicked [OK]
#Action: 2 Clockin as manager 201
			Given screen state: 534
			When clicked /Dialog/,[OK]
