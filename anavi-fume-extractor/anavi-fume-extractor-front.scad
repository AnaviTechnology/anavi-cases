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
                
        // Mounting holes for OLED display
        translate([0.5,1.7])
            circle(0.2, true, $fn=50);
        translate([2.8,1.7])
            circle(0.2, true, $fn=50);
        translate([2.8,4])
            circle(0.2, true, $fn=50);
        translate([0.5,4])
            circle(0.2, true, $fn=50);
        
        // Mounting holes for I2C sensors
        translate([3.4,2.4])
            roundedSquare(1.6, 0.3, 0.1);
        translate([3.4,3.8])
            roundedSquare(1.6, 0.3, 0.1);

        // for MQ sensor
        translate([6.2,3.5])
            circle(1.05, true, $fn=50);
        
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
        
        // Holes for the bottom plate
        translate([2,0.3])
            square([1, 0.26], true);
        translate([6,0.3])
            square([1, 0.26], true);

    }
    // Additional holders for the fan
    translate([4,5.5])
        square([1, 0.5], true);
    translate([4.5,5.25])
            rotate([0,0,45]) square([0.7,0.7], true);
    translate([3.5,5.25])
            rotate([0,0,45]) square([0.7,0.7], true);
    translate([4,12.1])
        square([1, 0.5], true);
    translate([4.5,12.35])
            rotate([0,0,45]) square([0.7,0.7], true);
    translate([3.5,12.35])
            rotate([0,0,45]) square([0.7,0.7], true);
}
        // Part 1
        /*translate([4,0])
            square([8, 14], true);
        // Part 2
        translate([4,10])
            square([8, 6], true);*/
}

