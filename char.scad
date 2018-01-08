
include <config.scad>;
use <puzzle.scad>;
use <piece.scad>;

module char(c)
{
    difference()
    {
        piece();
        
        translate([
            puzzle_nose_height()/2,
            puzzle_nose_height()/2,
            0
            ])
        linear_extrude(material_z+nothing, center=true)
        text(
            c,
            font=text_font,
            size=text_size,
            valign="center",
            halign="center"
            );
    }
}

char("A");
