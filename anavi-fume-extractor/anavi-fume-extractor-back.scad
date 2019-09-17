module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner], false);
			circle(radiusCorner, $fn=50);
		}
}

module triangle(){
    difference(){
        square([2,2], true);
        rotate([0,0,45]) square([5,5], true);
    }
}

//Make it 3D
//linear_extrude(height = 0.2, center = true, convexity = 10, twist = 0)


difference() {
union()
{
    difference()
    {
        roundedSquare(8, 12.9, 0.5);

        // Mounting holes for the fan
        translate([0.45,12.4])
            circle(0.3, true, $fn=50);
        translate([7.55,12.4])
            circle(0.3, true, $fn=50);
        translate([0.45,5.32])
            circle(0.3, true, $fn=50);
        translate([7.55,5.32])
            circle(0.3, true, $fn=50);
        
        // Holes for the bottom plate
        translate([2,0.3])
            square([1, 0.26], true);
        translate([6,0.3])
            square([1, 0.26], true);
        
        translate([4,3])
                square([5, 3], true);
        
        // space between rows
        space = 1;
        for (row = [1:3])
        {
            height = 5.5 + row*1.2 + (row-1)*space;
            translate([4,height])
                square([5, 1.2], true);
            /*height = 1.08 + row*2.5 + (row-1)*space;
            translate([2.4,height])
                square([2.5, 2.5], true);
            translate([5.6,height])
                square([2.5, 2.5], true);*/
        }

    }
}
        // Part 1
        /*translate([4,0])
            square([8, 14], true);
        // Part 2
        translate([4,10])
            square([8, 6], true);*/
}

