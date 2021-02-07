union()
{
	cube([43, 38, 2], false);
	
	translate([-2, 0, 0])
		cube([2, 38, 6], false);
	translate([-2, 0, 6])
		cube([2, 23, 2], false);
	translate([-2, 0, 8])
		cube([2, 38, 7], false);
	
	translate([43, 0, 0])
		cube([2, 38, 6], false);
	translate([43, 0, 6])
		cube([2, 23, 2], false);
	translate([43, 0, 8])
		cube([2, 38, 7], false);
	
}

