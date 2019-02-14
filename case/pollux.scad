$fn = 100;

$unit_h = 18;
$unit_v = 17;
$pcb_grid = 0.25;

$100mil = 2.54;

// ---- positions
$trrs_bottom_pos = 2.5 * $unit_v + 10 * $pcb_grid;
$reset_bottom_pos = 2.5 * $unit_v - 15 * $pcb_grid;
$reset_left_pos = 6.5 * $unit_h + 18 * $pcb_grid;

// ---- screw hole size
$screw_hole = (2 + 0.1) / 2;

// ---- wall size
// TODO: add screws around the contact holes
$wall_thickness = 5;
$pcb_slop = 0.1;
$screw_position =  $wall_thickness / 2;

// ---- top plate placements
$switch_hole = 14;

// ---- bottom plate placements
// TODO: verify with the datasheets
$slop = 1.5;
$promicro_height  = 7 * $100mil + $slop;
$promicro_width = 13 * $100mil + $slop;
$trrs_height = 6 + $slop;
$trrs_width = 14 + $slop / 2;
$reset_height = 3.5 + $slop;
$reset_width = 6 + $slop;
$promicro_contact_height = 13; // incl. slop

// ---- case shape

module shape (pad = 0) {
    polygon([
        [- pad, 4 * $unit_v + pad], [7 * $unit_h + pad, 4 * $unit_v + pad],
        [7 * $unit_h + pad, $unit_v - pad],
        [6.5 * $unit_h + pad - 2 * $pcb_grid, -pad - $pcb_grid * 18],
        [4.5 * $unit_h - pad, -pad - $pcb_grid * 18],
        [4 * $unit_h - pad, $unit_v - pad], [- pad, $unit_v - pad]
    ]);
}

module shape_pcb (pad = 0) {
    polygon([
        [- pad, 4 * $unit_v + pad], [7 * $unit_h + pad, 4 * $unit_v + pad],
        // trrs & switch (left)
        [7 * $unit_h + pad, 2.5 * $unit_v + 44 * $pcb_grid + pad],
        [7 * $unit_h + 12 * $pcb_grid + pad, 2.5 * $unit_v + 33 * $pcb_grid + pad],
        [7 * $unit_h + 12 * $pcb_grid + pad, 2.5 * $unit_v - 33 * $pcb_grid - pad],
        [7 * $unit_h + pad, 2.5 * $unit_v - 44 * $pcb_grid - pad],
        // ----
        [7 * $unit_h + pad, $unit_v - pad],
        [6.5 * $unit_h + pad - 2 * $pcb_grid, -pad - $pcb_grid * 18],
        [4.5 * $unit_h - pad, -pad - $pcb_grid * 18],
        [4 * $unit_h - pad, $unit_v - pad], [- pad, $unit_v - pad],
        // trrs & switch (right)
        [- pad, 2.5 * $unit_v + 44 * $pcb_grid + pad],
        [- 12 * $pcb_grid - pad, 2.5 * $unit_v + 33 * $pcb_grid + pad],
        [- 12 * $pcb_grid - pad, 2.5 * $unit_v - 33 * $pcb_grid - pad],
        [- pad, 2.5 * $unit_v - 44 * $pcb_grid - pad],
    ]);
}

module switch_pos () {
    switch_positions = [
        [3, 0, 0], [3, 1, 0], [3, 2, 0], [3, 3, 0], [3, 4, 0], [3, 5, 0], [3, 6, 0],
        [2, 0.5, 0], [2, 1.5, 0], [2, 2.5, 0], [2, 3.5, 0], [2, 4.5, 0], [2, 5.5, 0],
        [1, 0, 0], [1, 1, 0], [1, 2, 0], [1, 3, 0], [1, 4, 0], [1, 5, 0], [1, 6, 0],
        [0, 4.5, 0], [- 10 * $pcb_grid / $unit_v, 5.5 + 8 * $pcb_grid / $unit_h, -15]
    ];
    for (pos = switch_positions)
        translate([(pos[1] + 0.5) * $unit_h, (pos[0] + 0.5) * $unit_v])
            rotate([0, 0, pos[2]])
              children();
}

module skrew_pos () {
    translate([- $screw_position, $unit_v - $screw_position]) children();
    translate([- $screw_position, 4 * $unit_v + $screw_position]) children();
    translate([7 * $unit_h + $screw_position, 4 * $unit_v + $screw_position]) children();
    translate([7 * $unit_h + $screw_position, $unit_v - $screw_position]) children();
    translate([6.5 * $unit_h + $screw_position,  - $pcb_grid * 18   - $screw_position]) children();
    translate([4.5 * $unit_h - $screw_position, - $pcb_grid * 18 - $screw_position]) children();
}

module promicro () {
    translate([$promicro_width / 2 - 12 * $pcb_grid, 2.5 * $unit_v])
        square([$promicro_width, $promicro_height], center = true);
}

module promicro_contact () {
    translate([- $wall_thickness / 2, 2.5 * $unit_v])
        square([$wall_thickness, $promicro_contact_height], center = true);
}

module trrs_contact () {
    translate([7 * $unit_h + $wall_thickness / 2, $trrs_bottom_pos])
        square([$wall_thickness, $trrs_height], center = true);
}

module trrs () {
    translate([7 * $unit_h + $wall_thickness - $trrs_width / 2, $trrs_bottom_pos])
        square([$trrs_width, $trrs_height], center = true);
}

module reset_sw () {
    translate([$reset_left_pos, $reset_bottom_pos])
        square([$reset_width, $reset_height], center = true);
}

module reset_tsumayouji () {
    translate([$reset_left_pos, $reset_bottom_pos])
        circle(d = 2);
}

// ---- model

module kadomaru (r) {
    offset (r = r) offset (r = -r)  children();
}

module skrew_holes () {
    skrew_pos() circle(r = (2 + 0.1) / 2);
}

module switch_holes () {
    switch_pos() square([$switch_hole, $switch_hole], center = true);
}

module single_keycap () {
    hull () {
        translate([0, 0, 3]) cube([15, 14, 0.001], center = true);
        cube([17.5, 16.5, 0.001], center = true);
    }
}

module single_spacer () {
    $fn = 6;
    cylinder(d = 5, h = 5);
}

module bottomplate () {
    difference () {
        kadomaru(2) difference () {
            shape($wall_thickness);
            trrs_contact();
        }
        promicro();
        union () {
            trrs();
            reset_sw();
        }
        skrew_holes();
    }
}

module bottomplate2 () {
    difference () {
        kadomaru(2) shape($wall_thickness);
        skrew_holes();
        reset_tsumayouji();
    }
}

module topplate () {
    difference () {
        kadomaru(2) shape($wall_thickness);
        switch_holes();
        skrew_holes();
    }
}

module middleframe () {
    difference () {
        kadomaru(2) difference () {
            shape($wall_thickness);
            trrs_contact();
            promicro_contact();
        }
        shape_pcb($pcb_slop);
        skrew_holes();
    }
}

module topframe () {
    difference () {
        kadomaru(2) shape($wall_thickness);
        shape($pcb_slop);
        skrew_holes();
    }
}

module preview_keycap () {
    switch_pos() single_keycap();
}

module preview_spacer () {
    skrew_pos() single_spacer();
}

module preview_pcb_kicad () {
    translate([0.5 * $unit_h, 3.5 * $unit_v, 1.6])
        import("../pcb/switch42.stl");
}

module preview_pcb () {
    shape();
}

module preview () {
    translate([0, 0, 11.9]) color([0.6, 0.6, 0.8]) preview_keycap();
    translate([0, 0, 9]) color([1, 1, 1, 0.4]) linear_extrude(2) middleplate();
    translate([0, 0, 7]) color([1, 1, 1, 0.4]) linear_extrude(2) topplate();
//    translate([0, 0, 5.2]) color([1, 1, 1]) linear_extrude(1.6) preview_pcb();
    translate([0, 0, 5.2]) color([1, 1, 1]) preview_pcb_kicad();
//    translate([0, 0, 2]) color([0.8, 0.8, 0.5]) preview_spacer();
    translate([0, 0, 2]) color([1, 1, 1, 0.4]) linear_extrude(5) middleplate();
    translate([0, 0, 0]) color([1, 1, 1, 0.4]) linear_extrude(2) bottomplate();
}

preview();
translate([280, 0, 0]) mirror([1, 0, 0]) preview();