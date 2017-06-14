// Infiniground SCAD Generator
// Forked from https://github.com/DanielJoyce/ultimate_base_generator
// Under CC-BY-SA-4.0

/* [Block] */

// base block
block_specification = 15; // [3:Skin, 15:Low, 60:High]

// texture
height_map = "crater_tex_01.png"; // [image_surface:150x150]
texture_scale = 20; // [1:100]
raise_texture = 1; // [-100:100]

// logo
logo_text = "INFINIGROUND";
logo_size = 3; // [0:100]
logo_offset_x = 76; // [0:152]
logo_offset_y = 76; // [0:152]
logo_emboss = 5.2; // [0:100]

/* [Hidden] */

// block dimensions
block_width = 152;
block_edge_indent = 1.6;
block_reserved_base = 5;

// peg holes
peg_diameter = 6.5;
peg_depth = 16.5;

// Build It

difference() {
    union() {
        // model the texture
        translate([block_edge_indent,block_edge_indent,raise_texture]) {
            scale([1,1,texture_scale/100]) {
                // the texture surface
                surface(file=height_map, convexity=10);
            }
        }
        difference() {
            // the basic cube
            cube([block_width, block_width, block_specification]);
            // subtract the cut cube
            translate([block_edge_indent,block_edge_indent,block_reserved_base]) {
                // the cut cube
                cube([block_width - (2 * block_edge_indent), block_width - (2 * block_edge_indent), block_width]);
            }
        }
    }
    // cut off anything below y=0    
    translate([0,0,-200]) {
        // bottom cut cube
        cube([block_width, block_width, 200]);
    }
}

// add the logo if specified
if (logo_emboss > 0 && logo_size > 0) {
    translate([logo_offset_x, logo_offset_y, 0]) {
        linear_extrude(logo_emboss) {
            text(logo_text, size=logo_size, halign="center", valign="center");
        }
    }
}