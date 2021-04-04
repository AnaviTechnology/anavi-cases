module roundedCorners(start)
{
	translate([start, 2, 16])
		cube([2, 34, 2], false);
	
	translate([start, 2, 16])
		rotate([0,90,0])
			cylinder(2, 2, 2, $fn=60, false);
	
	translate([start, 36, 16])
		rotate([0,90,0])
			cylinder(2, 2, 2, $fn=60, false);
}

module side(start)
{
	translate([start, 0, 0])
		cube([2, 38, 8], false);
	translate([start, 0, 8])
		cube([2, 23, 2], false);
	translate([start, 0, 10])
		cube([2, 38, 6], false);
	
	// Rounded 3D corners on the rigth	
	roundedCorners(start);
}

union()
{
	cube([43, 38, 2], false);
	
	// Left side
	side(-2);
	
	// Right side
	side(43);	
}

