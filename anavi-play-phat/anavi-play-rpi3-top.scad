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
    
    //USB 1
    translate([7.6,4.7])
        square([1.8, 1.5], true);
    
    //USB 2
    translate([7.6,2.8])
        square([1.8, 1.5], true);
    
    // Longer hole for the button with down arrow
    translate([1.125,2.5])
       square([0.95, 0.2], true);

    // Huge hole
    difference()
    {

        //Huge hole
        translate([3,3.75])
            square([6, 2.3], true);
        
        // left up
        translate([0.3,4.6])
            square([0.7, 0.8], true);
        
        // left down
        translate([0.3,2.8])
            square([0.7, 0.8], true);

        // middle down
        translate([2,2.8])
            square([0.8, 0.8], true);

        // middle up
        translate([2,4.6])
            square([0.8, 0.8], true);
        
        // far right up
        translate([5.5,4.7])
            square([1, 0.4], true);

        // far right down
        translate([5.8,2.9])
            square([0.4, 1.2], true);
    }
}


