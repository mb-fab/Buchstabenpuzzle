
include <config.scad>;
use <puzzle.scad>;
use <char.scad>;

module model()
{
    spacer = 0.5;

    color("blue")
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

model();
