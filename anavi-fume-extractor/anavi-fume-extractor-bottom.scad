module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner], false);
			circle(radiusCorner, $fn=50);
		}
}

//Make it 3D
//linear_extrude(height = 0.2, center = true, convexity = 10, twist = 0)

union()
{
    difference()
    {
        translate([4,2.5])
            square( [7.6, 5], true);
        
        // Mounting holes
        translate([0.75,1])
            circle(0.2, true, $fn=50);
        translate([7.25,1])
            circle(0.2, true, $fn=50);
        translate([7.25,4])
            circle(0.2, true, $fn=50);
        translate([0.75,4])
            circle(0.2, true, $fn=50);
        

    }
    // Holes for the bottom plate
    translate([2,-0.1])
        square([0.98, 0.2], true);
    translate([6,-0.1])
        square([0.98, 0.2], true);
    translate([2,5.1])
        square([0.98, 0.2], true);
    translate([6,5.1])
        square([0.98, 0.2], true);
}
