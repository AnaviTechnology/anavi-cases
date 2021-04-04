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
	roundedSquare(41, 38, 2);

    // Mounting holes
    translate([3.3,23.35])
        circle(2, true, $fn=50);
    translate([37.7,23.35])
        circle(2, true, $fn=50);
    translate([20.5,6.25])
        circle(2, true, $fn=50);
}


