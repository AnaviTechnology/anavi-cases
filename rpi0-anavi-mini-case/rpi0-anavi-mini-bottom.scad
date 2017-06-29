//Bottom
translate([0,0,2]) 
{
    //Drill holes at the bottom
    difference()
    {
        cube([69,34,1], true);
        for (y=[-6:12:6])
        {
            for (x=[-24:12:24])
            {
                translate([x,y,0])
                    cube([10,10,2], true);
            }
        }
    }
}

//Sides
translate([0,0,6]) 
{
    difference()
    {
        cube([69,34,8], true);
        cube([65,30,8], true);
        //Еdge
        translate([0,0,4])
            cube([67,32,2], true);
        //Place for the miniHDMI
        translate([-19.5,-15,4])
            cube([14,32,10], true);
        //Place for the 1st microUSB
        translate([21.5,-15,4])
            cube([9,32,10], true);
        //Place for the 2st microUSB
        translate([9.5,-15,4])
            cube([9,32,10], true);
        //microSD card
        translate([-33.5,2,4])
            cube([2,14,10], true);
        //Leave space for the camera
        translate([33,0,1])
            cube([1,20,10], true);

        //Placeholder for the hanger of the top of the case
        translate([0,16.5,0.5])
            cube([6,1,1], true);
    }
}

//Holders
translate([31,14,3])
    cube([4,2,1.5], true);
translate([-31,14,3])
    cube([4,2,1.5], true);

translate([31,-14,3])
    cube([4,2,1.5], true);
translate([-31,-14,3])
    cube([4,2,1.5], true);