
include <config.scad>;
use <puzzle.scad>;
use <char.scad>;

spacer = 0.5;

module model_A_Z()
{
    for (y = [0:4])
    {
        for (x = [0:(y==4 ? 5 : 4)])
        {
            translate([
                x * (body_x + puzzle_nose_height() + spacer),
                -y * (body_x + puzzle_nose_height() + spacer),
                0
                ])
            char(chr(65 + x + y*5));
        }
    }
}

module model_extra()
{
    s = "AAAEEEIIIOOOUUUHLSTÄÖÜßß&";
    list = [ for (i = [0 : 1 : len(s) - 1]) s[i] ];
    //echo(list);

    for (y = [0:4])
    {
        for (x = [0:4])
        {
            translate([
                x * (body_x + puzzle_nose_height() + spacer),
                -y * (body_x + puzzle_nose_height() + spacer),
                0
                ])
            char(list[y*5 + x]);
        }
    }
}

module model()
{
    model_extra();
}

color("blue")
model();
