//labels variables based on CK's ICPSR study
capture label var year "Year"

//a, b, c variables are identifying information 
capture label var a001 "Plant name"
capture label var a002 "Owner name"
capture label var a003 "Incorporated"
capture label var a004 "Post office address of general office"

capture label var ag001 "State"
capture label var ag002 "City"
capture label var ag003 "County"
capture label var ag004 "Street and number"
capture label var ag006 "Within city limits"
capture label var ag007 "Other city if not within city limits"
capture label var ag008 "Post office address if different from location"

capture label var am000 "Plant operates subsidiaries"
capture label var am001 "Branch or subsidiary of other firm"
capture label var am002 "Parent firm info"

capture label var as000 "New plant after Jan 1 1928"
capture label var as001 "Name change from previous year"
capture label var as002 "Location change from previous year"
capture label var as003 "Ownership change from previous year"
capture label var as004 "Business change from previous year"
capture label var as005 "Former information"


capture label var bp001 "Products made"
capture label var bm001 "Materials used"
capture label var bm002 "Materials used 2"
capture label var c001 "Begin date"
capture label var c002 "End date"

//d variables are related to amount of time in operation and hours worked
capture label var d001 "Total days in operation"
capture label var d002 "Normal hours plant operation per day"
capture label var d003 "Normal hours plant operation per week"
capture label var d004 "Number of shifts per day"
capture label var d005 "Number of hours per week for individual wage earner"
capture label var d006 "Number of days per week for individual wage earner"
capture label var d009a "Worked part time from"
capture label var d009b "Worked part time to"
capture label var d007 "Plant worked part time"
capture label var d008 "Normal number of hours per week (day shift only)"

//e variables are variables related to employment (number or salary / wages)
capture label var e000 "Employment data if not Dec 14 1929"
capture label var e001m "Proprietor or firm members, male"
capture label var e001f "Proprietor or firm members, female"
capture label var e001t "Proprietor or firm members, total"
capture label var e002m "Principal officers, male"
capture label var e002f "Principal officers, female"
capture label var e002t "Principal officers, total"
capture label var e002s "Salaries to principal officers"
capture label var e003m "Managers, administrative personnel, and clerks: male"
capture label var e003f "Managers, administrative personnel, and clerks: female"
capture label var e003s "Salaries to managers, administrative personnel, and clerks"
capture label var e003t "Managers, administrative personnel, and clerks: total"
capture label var e003tas "Salaries to managers and administrative employees"
capture label var e003ta "Managers and administrative employees, total"
capture label var e003tc "Clerical workers, total"
capture label var e003tc03 "Clerical employees in March"
capture label var e003tc06 "Clerical employees in June"
capture label var e003tc09 "Clerical employees in September"
capture label var e003tc12 "Clerical employees in December"
capture label var e003tcs "Salaries to clerical workers"
capture label var e003te "Technical employee, total" 
capture label var e003tes "Technical employees, salary"
capture label var e004m "All salaried employees, male"
capture label var e004f "All salaried employees, female"
capture label var e004t "All salaried employees, total"
capture label var e004s "Salaries to all salaried employees"
capture label var e005m "Wage earners, male"
capture label var e005f "Wage earners, female"
capture label var e005t "Wage earners, total (average)"
capture label var e005s "Total wages"
capture label var e005sp "Total wages, previous year"
capture label var e009s "Total wages and salaries"

capture label var ewemt "Wage earners by month, total"
capture label var ewemt01 "Wage earners by month, January"
capture label var ewemt02 "Wage earners by month, February"
capture label var ewemt03 "Wage earners by month, March"
capture label var ewemt04 "Wage earners by month, April"
capture label var ewemt05 "Wage earners by month, May"
capture label var ewemt06 "Wage earners by month, June"
capture label var ewemt07 "Wage earners by month, July"
capture label var ewemt08 "Wage earners by month, August"
capture label var ewemt09 "Wage earners by month, September"
capture label var ewemt10 "Wage earners by month, October"
capture label var ewemt11 "Wage earners by month, November"
capture label var ewemt12 "Wage earners by month, December"
capture label var ewemtmax "Wage earners by month, maximum"

capture label var emh01 "Man-hours, January"
capture label var emh02 "Man-hours, February"
capture label var emh03 "Man-hours, March"
capture label var emh04 "Man-hours, April"
capture label var emh05 "Man-hours, May"
capture label var emh06 "Man-hours, June"
capture label var emh07 "Man-hours, July"
capture label var emh08 "Man-hours, August"
capture label var emh09 "Man-hours, September"
capture label var emh10 "Man-hours, October"
capture label var emh11 "Man-hours, November"
capture label var emh12 "Man-hours, December"
capture label var emht "Man-hours, Total"

//f variables are related to costs of production
capture label var f00up "Materials and fuel totals 'used' or 'purchased'?"
capture label var f000 "Total cost (?)"
capture label var f001 "Cost of all materials and raw stock actually used (total cost)"
capture label var f002 "Cost of fuel actually used"
capture label var f003 "Cost of purchased electric current"
capture label var f004 "Cost of contractual work"
capture label var f005* "Industry-specific cost variable"
capture label var f007 "Cost of materials, fuel, and contract work"
capture label var f008 "Total cost of wages, fuel, materials, contract work"
capture label var f009 "Total cost of materials, fuel, and electric cost (sum of f001, f002, f003)"

//ff variables are related to fuels used and their costs. Specific to 1929
capture label var ff001q "Anthracite coal, qt"
capture label var ff001v "Anthracite coal, cost"
capture label var ff002q "Bituminous coal, qt"
capture label var ff002v "Bituminous coal, cost"
capture label var ff003q "Coke, qt"
capture label var ff003v "Coke, cost"
capture label var ff004q "Fuel oils, qt"
capture label var ff004v "Fuel oils, cost"
capture label var ff005q "Gasoline and kerosene, qt"
capture label var ff005v "Gasoline and kerosene, cost"
capture label var ff006q "Natural gas, qt"
capture label var ff006v "Natural gas, cost"
capture label var ff007q "Manufactured gas, qt"
capture label var ff007v "Manufactured gas, cost"
capture label var ff008q "Blast furnace gas, qt"
capture label var ff008v "Blast furnace gas, cost"
capture label var ff009q "Wood, qt"
capture label var ff009v "Wood, cost"
capture label var ff010q "Gas other manufactured, qt"
capture label var ff010v "Gas other manufactured, cost"
capture label var ff000c "Total cost fuel"

//fe variables are related to electricity and total fuel costs
capture label var fe000 "Total fuel costs"
capture label var fe001k "Electric current generated in plant, kWh"
capture label var fe002k "Purchased current generated in plant, kWh"
capture label var fe002c "Purchased current generated in plant, cost"

//g variables are related to value of output
capture label var g000v "Value of product"
capture label var g00Mv "Total value manufactured, 1929"
capture label var g00VAa "Total value added"
capture label var g001v "Total value of output, 1934"

//hp variables are related to engines and turbines employed. Specific to 1929
capture label var hp001n "Steam engine, number"
capture label var hp001h "Steam engine, HP"
capture label var hp002n "Steam turbine, number"
capture label var hp002h "Steam turbine, HP"
capture label var hp003n "Internal combustion, number"
capture label var hp003h "Internal combustion, HP"
capture label var hp004n "Water wheels and turbines, number"
capture label var hp004h "Water wheels and turbines, HP"
capture label var hp000n "Total prime movers, number (sum of hp001, hp002, hp003, hp004)"
capture label var hp000h "Total prime movers, HP (sum of hp001, hp002, hp003, hp004)"
capture label var hp009h "Equipment ordinarily idle and standby, HP"
capture label var hp009n "Equipment ordinarily idle and standby, number"
capture label var hp009k "Equipment ordinarily idle and standby, kWh"
capture label var he001n "Electric motors driven by purchased current, number"
capture label var he001h "Electric motors driven by purchased current, HP"
capture label var he002n "Electric motors driven by current generated, number"
capture label var he002h "Electric motors driven by current generated, HP"
capture label var he003n "Electric motors driven by prime movers in plant, number"
capture label var he003h "Electric motors driven by prime movers in plant, HP"
capture label var he004k "Electric motors driven by prime movers in plant, kWh"
capture label var he000h "Total electricity, HP"

capture label var hp001gn "Steam Engine Prime Mover Generator, number"
capture label var hp001gh "Steam Engine Prime Mover, HP"
capture label var hp001gk "Steam Engine Generator, HP"
capture label var hp001on "Steam Engine Prime Mover Not Driving Generator, number"
capture label var hp001oh "Steam Engine Prime Mover Not Driving Generator, HP"

capture label var hp002gn "Steam Turbine Prime Mover Generator, number"
capture label var hp002gh "Steam Turbine Prime Mover, HP"
capture label var hp002gk "Steam Turbine Generator, HP"
capture label var hp002on "Steam Turbine Prime Mover Not Driving Generator, number"
capture label var hp002oh "Steam Turbine Prime Mover Not Driving Generator, HP"

capture label var hp003gn "Diesel Prime Mover Generator, number"
capture label var hp003gh "Diesel Prime Mover, HP"
capture label var hp003gk "Diesel Generator, HP"
capture label var hp003on "Diesel Prime Mover Not Driving Generator, number"
capture label var hp003oh "Diesel Prime Mover Not Driving Generator, HP"

capture label var hp004gn "Waterwheel Prime Mover Generator, number"
capture label var hp004gh "Waterwheel Prime Mover, HP"
capture label var hp004gk "Waterwheel Generator, HP"
capture label var hp004on "Waterwheel Prime Mover Not Driving Generator, number"
capture label var hp004oh "Waterwheel Prime Mover Not Driving Generator, HP"


capture label var hp005gn "Other internal combusion Prime Mover Generator, number"
capture label var hp005gh "Other internal combusion Prime Mover, HP"
capture label var hp005gk "Other internal combusion Generator, HP"
capture label var hp005on "Other internal combusion Prime Mover Not Driving Generator, number"
capture label var hp005oh "Other internal combusion Prime Mover Not Driving Generator, HP"

capture label var hp006gn "Hydroelectric Prime Mover Generator, number"
capture label var hp006gh "Hydroelectric Prime Mover, HP"
capture label var hp006gk "Hydroelectric Generator, HP"
capture label var hp006on "Hydroelectric Prime Mover Not Driving Generator, number"
capture label var hp006oh "Hydroelectric Prime Mover Not Driving Generator, HP"

//k variables are related to distribution of products. Specific to 1929
capture label var k001 "Sales invoiced to wholesale establishments not owned"
capture label var k002 "Sales invoiced to branch or wholesale owned"
capture label var k003 "Sales invoiced to retail not owner"
capture label var k004 "Sales invoiced to branch"
capture label var k005 "Sales direct to industrial and large customers"
capture label var k006 "Sales direct to home consumers"
capture label var k000 "Total sales"
capture label var k007 "Sales made through agent"
capture label var k008 "Volume of sales made through agent, etc."

//z variables are related to different types of capital employed
capture label var z_horse_number "Equipment: Delivery Vehicle Horse-drawn, number"
capture label var z_horse_capacity "Equipment: Delivery Vehicle Horse-drawn, capacity"
capture label var z_gasoline_number "Equipment: Delivery Vehicle Gasoline, number"
capture label var z_gasoline_capacity "Equipment: Delivery Vehicle Gasoline, capacity"
capture label var z_electric_number "Equipment: Delivery Vehicle Electric, number"
capture label var z_electric_capacity "Equipment: Delivery Vehicle Electric, capacity"
capture label var z_ice_compression_number "Equipment: Ice Machine Compression, number"
capture label var z_ice_compression_capacity "Equipment: Ice Machine Compression, capacity"
capture label var z_ice_absorption_number "Equipment: Ice Machine Absorption, number"
capture label var z_ice_absorption_capacity "Equipment: Ice Machine Absorption, capacity"

//label "general" output variables

//labels for types of the variables
local type_var_u "units"
local type_var_s "specify" 
local type_var_q "qt."
local type_var_v "value"
//labels for the general variables
local label_general "General"
local label_allOther "All Other"
local label_otherProduct "Other"
local label_miscellaneous "Miscellaneous"
//labels for inputs and outputs
local label_put_j "Input"
local label_put_gp "Output"

//loop over input and output
foreach put in j gp {

	//loop over product types
	foreach general_var in general allOther otherProduct miscellaneous{

		//loop over types of variables: specify, quantity, units, and value
		foreach type in s q v u {	
			local num_vars = 0 //set to 0 to make sure that if unab fails, there is no labeling
			//get varlist of all these variables and then count the number of them
			capture unab list_vars: `put'_`type'_`general_var'*
			if _rc==0 {
				local num_vars: word count `list_vars'
			}
			
			//loop over the number of variables present
			forvalues counter = 1 / `num_vars'{
				capture label var `put'_`type'_`general_var'`counter' "`label_put_`put'': `label_`general_var'' `counter', `type_var_`type''"
			}
		}	
	}
}
