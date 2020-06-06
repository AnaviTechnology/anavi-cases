module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner], false);
			circle(radiusCorner, $fn=50);
		}
}

//Make it 3D
//linear_extrude(height = 2, center = true, convexity = 10, twist = 0)

difference()
{
	roundedSquare(135, 47, 5);
	
	// Mounting holes
	translate([5,5])
		circle(2, true, $fn=50);
	translate([130,5])
		circle(2, true, $fn=50);
	translate([130,42])
		circle(2, true, $fn=50);
	translate([5,42])
		circle(2, true, $fn=50);
	
	//translate([67.5, 0])
	//	square([67.5,47]);
}

