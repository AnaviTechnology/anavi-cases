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
    translate([3.4,1.3])
        square([1.4, 2.2], true);
    translate([2.55,0.8])
        square([0.3, 1.2], true);
    
    // Diplay
    translate([4.6,3.3])
        square([0.4, 1.2], true);
        
    // Button
    translate([6,3.48])
        circle(0.15, true, $fn=50);
}


