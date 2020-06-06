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
    
    // OLED display connector
    translate([23.5,4.5])
        square([12, 4.5], true);
        
    // Reset button
    translate([15.5,37.5])
        circle(1.5, true, $fn=50);
		
	// Keyboard buttons
	translate([85,23.5])
        square([82, 41], true);
	
	//translate([67.5, 0])
	//translate([0, 0])
	//	square([67.5,47]);
}


