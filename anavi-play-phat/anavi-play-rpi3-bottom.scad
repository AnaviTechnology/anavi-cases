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
    roundedSquare(8.5, 5.6, 0.3);
    
    // Mounting holes
    translate([0.3,0.3])
        circle(0.15, true, $fn=50);
    translate([6.15,0.3])
        circle(0.15, true, $fn=50);
    translate([6.15,5.3])
        circle(0.15, true, $fn=50);
    translate([0.3,5.3])
        circle(0.15, true, $fn=50);
}


