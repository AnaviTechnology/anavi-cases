module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner], false);
			circle(radiusCorner, $fn=50);
		}
}

//Make it 3D
linear_extrude(height = 2, center = true, convexity = 10, twist = 0)

difference()
{
	translate([0,20])
		roundedSquare(41, 18, 2);
    
    // Mounting holes
    translate([3.2,23.35])
        circle(2, true, $fn=50);
    translate([37.8,23.35])
        circle(2, true, $fn=50);
	
	// Capacitor
	translate([21,24])
        circle(3, true, $fn=50);
}


