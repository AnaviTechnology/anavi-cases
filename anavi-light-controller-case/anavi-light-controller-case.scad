module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner], false);
			circle(radiusCorner, $fn=50);
		}
}

//Make it 3D
linear_extrude(height = 0.2, center = true, convexity = 10, twist = 0)
difference()
{
    roundedSquare(7.5, 4, 0.5);
    
    // Mounting holes
    translate([0.5,0.5])
        circle(0.2, true, $fn=50);
    translate([7,0.5])
        circle(0.2, true, $fn=50);
    translate([7,3.5])
        circle(0.2, true, $fn=50);
    translate([0.5,3.5])
        circle(0.2, true, $fn=50);
    
    //DC Jack
    translate([6.9,2.4])
        square([1.2, 1.2], true);
    
    //LED connector
    translate([0.5,2])
        square([1, 2.2], true);
    
    //Sensors
    translate([2.4,2])
        square([1.2, 2.2], true);
        
    //Button
    translate([5.4,3.18])
        circle(0.15, true, $fn=50);
}


