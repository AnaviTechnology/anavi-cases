module roundedSquare( width, length, radiusCorner ) {
	translate( [ radiusCorner, radiusCorner, 0 ] )
		minkowski() {
			square( [width - 2 * radiusCorner, length - 2 * radiusCorner], false);
			circle(radiusCorner, $fn=50);
		}
}

//Make it 3D
linear_extrude(height = 0.2, center = true, convexity = 10, twist = 0)

/*translate([-1.8,1])
    square([10.4,1]);

translate([0.5,-1])
    square([1,4]);*/

difference()
{
    union()
    {
        translate([0.1,-0.2])
            square([6.5, 3.2]);
        translate([0.2,1])
            circle(2, true, $fn=50);
        translate([6.6,1])
            circle(2, true, $fn=50);
    }
    
    // Mounting holes
    translate([0.55,0.4])
        circle(0.15, true, $fn=50);
    translate([6.35,0.4])
        circle(0.15, true, $fn=50);
    translate([6.35,2.7])
        circle(0.15, true, $fn=50);
    translate([0.55,2.7])
        circle(0.15, true, $fn=50);
    
    // Longer hole for the button with down arrow
    translate([1.325,0.1])
       square([0.95, 0.2], true);
    
    // Huge hole
    difference()
    {
        translate([3.2,1.3])
            square([5.9, 2.3], true);
        
        // most left down
        translate([0.5,0.4])
            square([0.7, 0.8], true);
        
        // right up
        translate([0.5,2.1])
            square([0.7, 0.8], true);
        
        // middle up
        translate([2.2,2.1])
            square([0.8, 0.8], true);
        
        // middle down
        translate([2.2,0.4])
            square([0.8, 0.8], true);
        
        // far right up
        translate([5.7,2.3])
            square([1, 0.4], true);
        
        // far right down
        translate([6,0.6])
            square([0.4, 1.2], true);
    }
}


