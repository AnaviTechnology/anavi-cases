translate([0,0,2]) 
{
    difference()
    {
        cube([69,34,2], true);
        for (i=[-40:20:20])
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

translate([0,0,6]) 
{
    difference()
    {
        cube([69,34,8], true);
        cube([65,30,8], true);
        translate([0,0,4])
            cube([67,32,2], true);
        translate([-20.5,-15,4])
            cube([14,32,10], true);
        translate([15,-15,4])
            cube([24,32,10], true);
    }
}

translate([30.5,14,3.5])
    cube([4,2,1.5], true);
translate([-30.5,14,3.5])
    cube([4,2,1.5], true);

translate([30.5,-14,3.5])
    cube([4,2,1.5], true);
translate([-30.5,-14,3.5])
    cube([4,2,1.5], true);