Feature: 1 Clockin Employees


Scenario: 1 Login as manager 200 to Floor Plan
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
			When clicked [2],[0],[0]
			And clicked [Login]
#Action: 2 Clockin as manager 200
			Then verify presence of "MANAGER", [Clock-IN], [EXIT], "JEFFREY OYENEYE"
			When clicked [Clock-IN]
#Action: 3 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 2 Login as server 100 to Floor Plan
#Action: 1 Login as manager 100
			Then verify presence of /LoginForm/,"Demo Mode"
			When clicked [1],[0],[0]
			And clicked [Login]
#Action: 2 Clockin as manager 100
			Then verify presence of "SERVER", [Clock-IN], [EXIT], "LEBRON JAMES"
			When clicked [Clock-IN]
#Action: 3 Exit FloorPlan
			Given screen state: 558
			When clicked [Exit]

Scenario: 3 Login as bartender 300 to Floor Plan
#Action: 1 Login as manager 200
			Then verify presence of /LoginForm/,"Demo Mode"
			When clicked [3],[0],[0]
			And clicked [Login]
#Action: 2 Clockin as manager 200
			Then verify presence of "BAR", [Clock-IN], [EXIT], "SAMEUL L. JACKSON"
			When clicked [Clock-IN]
#Action: 3 Exit FloorPlan
			Given screen state: 240
			When clicked /TopLeftButtons/,[Done]
