//Make it 3D
//linear_extrude(height = 2, center = true, convexity = 10, twist = 0)

difference()
{
	union()
	{
		square([43, 38], false);
		translate([-2,23])
			square([47, 15], false);
	}
    
    // Mounting holes
    translate([4.2,23.35])
        circle(2, true, $fn=50);
    translate([38.8,23.35])
        circle(2, true, $fn=50);
    translate([21.3,6.25])
        circle(2, true, $fn=50);
}


