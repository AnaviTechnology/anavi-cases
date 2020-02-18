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
    translate([-2.9,-0.3])
        roundedSquare(10.4, 4.6, 0.5);
    
    // Mounting holes
    translate([2,0.5])
        circle(0.2, true, $fn=50);
    translate([7,0.5])
        circle(0.2, true, $fn=50);
    translate([7,3.5])
        circle(0.2, true, $fn=50);
    translate([2,3.5])
        circle(0.2, true, $fn=50);
    
    // Sensors
    translate([3.5,1.2])
        square([1.6, 2.2], true);
    translate([2.55,0.75])
        square([0.3, 1.3], true);
    
    // Diplay
    translate([4.55,3.3])
        square([0.45, 1.2], true);
        
    // Button
    translate([5.9,3.4])
        circle(0.15, true, $fn=50);
}


