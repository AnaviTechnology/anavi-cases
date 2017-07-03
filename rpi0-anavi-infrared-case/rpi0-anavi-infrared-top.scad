use<write.scad>

//translate([0,0,1])
//    cube([65,30,1], true);

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
    
    //make the top thinner
    translate([0,0,-0.5])
        cube([65,30,1], true);
    
    //IRTX
    translate([-31,0,4])
        cube([10,16,10], true);
    
    //IRRX
    translate([-14,-14,4])
        cube([10,9,10], true);
    
    //UART
    translate([-10,4,4])
        cube([12,4,10], true);
    
    //I2C sensors   
    for(sensor = [-6 : 5 : 4])
    {
        translate([3,sensor,4])
            cube([12,4,10], true);
    }
    
    //EEPROM
    translate([20,-6,4])
        cube([10,12,10], true); 
    
    //microSD card
    //translate([-33.5,2,4])
    //    cube([7,14,10], true);
    
    //miniHDMI
    //translate([-19.5,-17,4])
    //    cube([14,5,10], true);
    
    //1st microUSB
    //translate([21.5,-17,4])
    //    cube([9,5,10], true);
    
    //2st microUSB
    //translate([9.5,-17,4])
    //    cube([9,5,10], true);
        
    //40pin header
    //translate([0,12,0])
    //    cube([52,6,10], true);
    }
}

//Hanger
translate([0,17.5,0])
{
    union()
    {
        cube([6,1,3], true);
        translate([0,-1,-1])
            cube([6,1,1], true);
    }
}