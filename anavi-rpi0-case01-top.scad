use<write.scad>

translate([0,0,2]) 
{
    difference() 
    {
    union()
    {
        translate([0,0,-0.5])
            cube([67,32,1], true);
        difference()
        {
            cube([71,36,2], true);
            
            translate([0,0,-1])
                cube([69,34,2], true);
        }
    }
    
    //Text
    translate([2,-6,0])
        scale([2.5, 2, 10])
            write("ANAVI");
    
    //SoC
    translate([-6.2,-2,0])
        cube([14.4,14.4,2], true);
    
    //microSD card
    translate([-33.5,2,4])
        cube([7,14,10], true);
    
    //miniHDMI
    translate([-19.5,-17,4])
        cube([14,5,10], true);
    
    //1st microUSB
    translate([21,-17,4])
        cube([9,5,10], true);
    
    //2st microUSB
    translate([10,-17,4])
        cube([9,5,10], true);
        
    //40pin header
    translate([0,12,0])
        cube([52,6,10], true);
    }
}

translate([0,17.5,0])
{
    union()
    {
        cube([4,1,3], true);
        translate([0,-1,-1])
            cube([4,1,1], true);
    }
}