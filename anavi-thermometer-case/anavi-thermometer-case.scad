module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner], false);
			circle(radiusCorner, $fn=50);
		}
}

//Make it 3D
//linear_extrude(height = 0.2, center = true, convexity = 10, twist = 0)

difference()
{
    roundedSquare(7.5, 10, 0.5);
    
    // Mounting holes
    translate([0.5,0.5])
        circle(0.2, true, $fn=50);
    translate([7,0.5])
        circle(0.2, true, $fn=50);
    translate([7,3.5])
        circle(0.2, true, $fn=50);
    translate([0.5,3.5])
        circle(0.2, true, $fn=50);
    
    // Mounting holes for OLED display
    translate([6.5,9.5])
        circle(0.2, true, $fn=50);
    translate([4.2,9.5])
        circle(0.2, true, $fn=50);
    translate([4.2,7.2])
        circle(0.2, true, $fn=50);
    translate([6.5,7.2])
        circle(0.2, true, $fn=50);
  
    // Mounting holes for sensors
    translate([0.5,8.9])
        roundedSquare(3, 0.3, 0.1);
    translate([0.5,7.5])
        roundedSquare(3, 0.3, 0.1);
    
    // Bending line
    translate([0,6])
        square([7.5, 0.01]);
    
}


