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

union()
{
    difference()
    {
        union()
        {
            translate([0,4.9])
                roundedSquare(8, 8, 0.5);
            // Straight right angle for the bottom
            translate([4,5.4])
                square([8, 1], true);
        }
            
        // Mounting holes for the fan
        translate([0.45,12.4])
            circle(0.3, true, $fn=50);
        translate([7.55,12.4])
            circle(0.3, true, $fn=50);
        translate([0.45,5.32])
            circle(0.3, true, $fn=50);
        translate([7.55,5.32])
            circle(0.3, true, $fn=50);
            
        // Hole for the fan
        translate([4,8.8])
            square([6.984, 5.6], true);
        // Corners next the mounting holes
        translate([1.21,6])
            rotate([0,0,45]) square([1,1], true);
        translate([6.78,6])
            rotate([0,0,45]) square([1,1], true);
        translate([1.21,11.6])
            rotate([0,0,45]) square([1,1], true);
        translate([6.78,11.6])
            rotate([0,0,45]) square([1,1], true);
        // Extend the length of the whole
        translate([4,8.8])
            square([5.58, 7.01], true);
    }
    
    // rhombus, square rotated at 45 degrees
    translate([4,8.9])
        rotate(a=45)
            square([1.6, 1.6], true);
    // Horizontal bar
    translate([4,8.9])
        square([8, 0.4], true);
    //Vertical bar
    translate([4,8.9])
        square([0.4, 8], true);
}

