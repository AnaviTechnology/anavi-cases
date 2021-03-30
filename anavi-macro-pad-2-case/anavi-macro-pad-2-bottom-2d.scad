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
	roundedSquare(85, 38, 2);
		
	translate([5, 0])
		square([2,15]);
	
	translate([78, 0])
		square([2,15]);
}

