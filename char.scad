
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
        linear_extrude(
            material_z + 2*nothing,
            center=true
            )
        text(
            c,
            font=text_font,
            size=text_size,
            valign="center",
            halign="center"
            );
    }

    translate([
        puzzle_nose_height()/2,
        puzzle_nose_height()/2,
        0
        ])
    {
        if (c == "A")
        {
            translate([
                -text_size * 0.25,
                -text_size * 0.03,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);
        }
        else if (c == "B")
        {
            translate([
                -text_size * 0.25,
                +text_size * 0.24,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);

            translate([
                -text_size * 0.25,
                -text_size * 0.18,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);
        }
        else if (c == "D")
        {
            translate([
                -text_size * 0.25,
                -text_size * 0.005,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);
        }
        else if (c == "O")
        {
            translate([
                -text_size * 0.25,
                -text_size * 0.005,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);
        }
        else if (c == "P")
        {
            translate([
                -text_size * 0.25,
                +text_size * 0.20,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);
        }
        else if (c == "Q")
        {
            translate([
                -text_size * 0.25,
                +text_size * 0.08,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);
        }
        else if (c == "R")
        {
            translate([
                -text_size * 0.25,
                +text_size * 0.21,
                0
                ])
            cube([
                text_size * 0.50,
                text_size * 0.10,
                material_z + 2*nothing
                ], center=true);
        }
    }
}

char("A");
