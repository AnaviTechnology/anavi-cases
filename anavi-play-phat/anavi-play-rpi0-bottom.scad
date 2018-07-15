//Make it 3D
//linear_extrude(height = 0.2, center = true, convexity = 10, twist = 0)

//Scales to 104x30mm

difference()
{
    union()
    {
        translate([-0.4,0])
            square([7.5, 3]);
        translate([-0.3,1.5])
            circle(1.5, true, $fn=50);
        translate([7.1,1.5])
            circle(1.5, true, $fn=50);
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
}


