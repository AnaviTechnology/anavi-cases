//Bottom
translate([0,0,2]) 
{
    difference()
    {
        cube([69,34,1], true);
        for (i=[-40:20:0])
        {
            echo(i);
            translate([i,0,0])
            {
                cube([12,25,2], true);
            }
            i = i + 20;
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
        translate([21,-15,4])
            cube([9,32,10], true);
        //Place for the 2st microUSB
        translate([10,-15,4])
            cube([9,32,10], true);
        //microSD card
        translate([-33.5,2,4])
            cube([2,14,10], true);
        //Leave space for the camera
        translate([33,0,1])
            cube([1,20,10], true);
    }
}


//Holders
translate([30.5,14,3])
    cube([4,2,1.5], true);
translate([-30.5,14,3])
    cube([4,2,1.5], true);

translate([30.5,-14,3])
    cube([4,2,1.5], true);
translate([-30.5,-14,3])
    cube([4,2,1.5], true);