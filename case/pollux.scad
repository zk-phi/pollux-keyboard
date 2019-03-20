$fn = 100;

$unit_h = 18;
$unit_v = 17;
$pcb_grid = 0.25;

$100mil = 2.54;

// ---- screw hole size
$screw_hole = (2 + 0.1) / 2;

// ---- wall size
$kadomaru_r = 1.5;
$pcb_slop = 0.5;
$wall_thickness = 5 + $pcb_slop;
$screw_position =  ($wall_thickness + $pcb_slop) / 2;

// ---- top plate placements
$switch_hole = 14;

// ---- bottom plate placements
$slop = 1.5;
$promicro_height  = 7 * $100mil;
$promicro_width = 13 * $100mil;
$trrs_height = 6;
$trrs_width = 14.1;
$reset_height = 3.5;
$reset_width = 6;
$promicro_contact_height = 13; // incl. slop, not in the datasheet

// ---- positions
$promicro_y = 2.5 * $unit_v;
$promicro_x_left = $promicro_width / 2 - 9 * $pcb_grid; // pcb
$promicro_x_right = $promicro_width / 2 - 12 * $pcb_grid; // pcb
$trrs_y = 2.5 * $unit_v + 10 * $pcb_grid; // pcb
$trrs_x = $trrs_width / 2 - $wall_thickness + $pcb_slop; // pcb
$reset_y = 2.5 * $unit_v - 15 * $pcb_grid; // pcb
$reset_x = 6.75 * $unit_h + 18 * $pcb_grid; // pcb
$thumb = 0;

// ---- case shape

// pcb
module shape (pad = 0, right = false) {
    polygon(
      // clockwise from the left bottom
      concat([
        [               - pad,                            $unit_v - pad],
        [               - pad,                        4 * $unit_v + pad],
        [7.25 * $unit_h + pad,                        4 * $unit_v + pad],
        [7.25 * $unit_h + pad,                            $unit_v - pad],
      ], !right ? [
        [ 6.5 * $unit_h + pad + 15 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23],
        [ 4.5 * $unit_h - pad +  3 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23],
        [   4 * $unit_h - pad,                            $unit_v - pad]
      ] : [
        [3.25 * $unit_h + pad,                            $unit_v - pad],
        [ 2.5 * $unit_h + pad + 15 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23],
        [ 0.5 * $unit_h - pad +  3 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23]
      ])
    );
}

// pcb
module shape_pcb (pad = 0, right = false) {
    polygon(
      // clockwise from the left bottom
      concat([
        [               - pad,                          $unit_v - pad],
        // trrs & switch (left)
        [               - pad,                        2 * $unit_v - pad - $pcb_grid * 12],
        [               - pad - 12 * $pcb_grid,       2 * $unit_v - pad - $pcb_grid *  2],
        [               - pad - 12 * $pcb_grid,       3 * $unit_v + pad + $pcb_grid *  2],
        [               - pad,                        3 * $unit_v + pad + $pcb_grid * 12],
        // ----
        [               - pad,                        4 * $unit_v + pad],
        [7.25 * $unit_h + pad,                        4 * $unit_v + pad],
        // trrs & switch (right)
        [7.25 * $unit_h + pad,                        3 * $unit_v + pad + $pcb_grid * 12],
        [7.25 * $unit_h + pad + 12 * $pcb_grid,       3 * $unit_v + pad + $pcb_grid *  2],
        [7.25 * $unit_h + pad + 12 * $pcb_grid,       2 * $unit_v - pad - $pcb_grid *  2],
        [7.25 * $unit_h + pad,                        2 * $unit_v - pad - $pcb_grid * 12],
        // ----
        [7.25 * $unit_h + pad,                            $unit_v - pad],
      ], !right ? [
        [ 6.5 * $unit_h + pad + 15 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23],
        [ 4.5 * $unit_h - pad +  3 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23],
        [   4 * $unit_h - pad,                            $unit_v - pad]
      ] : [
        [3.25 * $unit_h + pad,                            $unit_v - pad],
        [ 2.5 * $unit_h + pad + 15 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23],
        [ 0.5 * $unit_h - pad +  3 * $pcb_grid, -$thumb * $unit_v - pad - $pcb_grid * 23]
      ])
    );
}

// pcb
module switch_pos (right = false) {
    switch_positions = concat([
        [3, 0.25, 0], [3, 1.25, 0], [3, 2.25, 0], [3, 3.25, 0], [3, 4.25, 0], [3, 5.25, 0], [3, 6.25, 0],
        [2, 0.5, 0], [2, 1.5, 0], [2, 2.5, 0], [2, 3.5, 0], [2, 4.5, 0], [2, 5.5, 0],
        [1, 0, 0], [1, 1, 0], [1, 2, 0], [1, 3, 0], [1, 4, 0], [1, 5, 0], [1, 6, 0]
    ], !right ? [
        [-$thumb, 4.5, 0], [-$thumb + - 10 * $pcb_grid / $unit_v, 5.5 + 8 * $pcb_grid / $unit_h, -15]
    ] : [
        [-$thumb + - 10 * $pcb_grid / $unit_v, 0.5 - 8 * $pcb_grid / $unit_h, 15], [-$thumb, 1.5, 0]
    ]);
    for (pos = switch_positions)
        translate([(pos[1] + 0.5) * $unit_h, (pos[0] + 0.5) * $unit_v])
            rotate([0, 0, pos[2]])
                translate([pos[3] / 2 * $unit_h, 0])
                  children();
}

// pcb
module skrew_pos (right = false) {
    // clockwise from the left bottom
    translate([               - $screw_position,                              $unit_v - $screw_position]) children();
    translate([               - $screw_position,                        2.5 * $unit_v - $screw_position - 47 * $pcb_grid]) children();
    translate([               - $screw_position,                        2.5 * $unit_v + $screw_position + 47 * $pcb_grid]) children();
    translate([               - $screw_position,                          4 * $unit_v + $screw_position]) children();
    translate([7.25 * $unit_h + $screw_position,                          4 * $unit_v + $screw_position]) children();
    translate([7.25 * $unit_h + $screw_position,                        2.5 * $unit_v + $screw_position + 47 * $pcb_grid]) children();
    translate([7.25 * $unit_h + $screw_position,                        2.5 * $unit_v - $screw_position - 47 * $pcb_grid]) children();
    translate([7.25 * $unit_h + $screw_position,                              $unit_v - $screw_position]) children();
    if (!right) {
      translate([ 6.5 * $unit_h + $screw_position + 15 * $pcb_grid, -$thumb * $unit_v - $screw_position - 23 * $pcb_grid]) children();
      translate([ 4.5 * $unit_h - $screw_position +  3 * $pcb_grid, -$thumb * $unit_v - $screw_position - 23 * $pcb_grid]) children();
      translate([   4 * $unit_h - $screw_position,                            $unit_v - $screw_position]) children();
    } else {
      translate([3.25 * $unit_h + $screw_position,                            $unit_v - $screw_position]) children();
      translate([ 2.5 * $unit_h + $screw_position + 15 * $pcb_grid, -$thumb * $unit_v - $screw_position - 23 * $pcb_grid]) children();
      translate([ 0.5 * $unit_h - $screw_position +  3 * $pcb_grid, -$thumb * $unit_v - $screw_position - 23 * $pcb_grid]) children();
    }
}

// pcb
module promicro (right) {
    x_pos = right ? 7.25 * $unit_h - $promicro_x_right : $promicro_x_left;
    translate([x_pos, $promicro_y])
        square([$promicro_width + $slop, $promicro_height + $slop], center = true);
}

// pcb
module promicro_contact (right) {
    x_pos = right ? 7.25 * $unit_h + $wall_thickness / 2 : - $wall_thickness / 2;
    translate([x_pos, $promicro_y])
        square([$wall_thickness, $promicro_contact_height], center = true);
}

// pcb
module trrs_contact (right) {
    x_pos = right ? - $wall_thickness / 2 : 7.25 * $unit_h + $wall_thickness / 2;
    translate([x_pos, $trrs_y])
        square([$wall_thickness, $trrs_height + $slop], center = true);
}

// pcb
module trrs (right) {
    x_pos = right ? $trrs_x : 7.25 * $unit_h - $trrs_x;
    translate([x_pos, $trrs_y])
        square([$trrs_width + $slop, $trrs_height + $slop], center = true);
}

// pcb
module reset_sw (right) {
    translate([right ? 7.25 * $unit_h - $reset_x : $reset_x, $reset_y])
        square([$reset_width + $slop, $reset_height + $slop], center = true);
}

// pcb
module reset_tsumayouji (right) {
    translate([right ? 7.25 * $unit_h - $reset_x : $reset_x, $reset_y])
        circle(d = 2);
}

// ---- model

module kadomaru (r) {
    offset (r = r) offset (r = -r)  children();
}

module skrew_holes (right = false) {
    skrew_pos(right) circle(r = $screw_hole);
}

module switch_holes (right) {
    switch_pos(right) square([$switch_hole, $switch_hole], center = true);
}

module single_keycap () {
    hull () {
        translate([0, 0, 3]) cube([15, 14, 0.001], center = true);
        cube([17.5, 16.5, 0.001], center = true);
    }
}

module bottomplate (right = false) {
    difference () {
        kadomaru($kadomaru_r) difference () {
            shape($wall_thickness, right);
            trrs_contact(right);
            promicro_contact(right);
        }
        promicro(right);
        union () {
            trrs(right);
            reset_sw(right);
        }
        skrew_holes(right);
    }
}

module bottomplate2 (right = false) {
    difference () {
        kadomaru($kadomaru_r) shape($wall_thickness, right);
        skrew_holes(right);
        reset_tsumayouji(right);
    }
}

module topplate (right = false) {
    difference () {
        kadomaru($kadomaru_r) shape($wall_thickness, right);
        switch_holes(right);
        skrew_holes(right);
    }
}

module middleframe (right = false) {
    difference () {
        kadomaru($kadomaru_r) difference () {
            shape($wall_thickness, right);
            trrs_contact(right);
            promicro_contact(right);
        }
        shape_pcb($pcb_slop, right);
        skrew_holes(right);
    }
}

module middleframe_lower (right) {
    intersection () {
        middleframe(right);
        translate([- $wall_thickness, - $wall_thickness - $pcb_grid * 18])
            square([7 * $unit_h + $wall_thickness * 2,  2.5 * $unit_v + ($wall_thickness + $pcb_grid * 18)]);
    }
}

module middleframe_upper (right) {
    difference () {
        middleframe(right);
        translate([- $wall_thickness, - $wall_thickness - $pcb_grid * 18])
            square([7 * $unit_h + $wall_thickness * 2,  2.5 * $unit_v + ($wall_thickness + $pcb_grid * 18)]);
    }
}

module topframe (right = false) {
    difference () {
        kadomaru($kadomaru_r) shape($wall_thickness, right);
        shape($pcb_slop, right);
        skrew_holes(right);
    }
}

module preview_keycap (right) {
    switch_pos(right) single_keycap();
}

module preview_pcb_kicad () {
    translate([0.5 * $unit_h, 3.5 * $unit_v, 1.6])
        import("../pcb/switch42.stl");
}

module preview_pcb (right = false) {
    shape_pcb(0, right);
}

// ---- preview model

$acryl_color = [1, 1, 1, 0.7];

module preview (diff = 0, right = false) {
    translate([0, 0, 12.9 + diff * 2]) color([0.6, 0.6, 0.8]) preview_keycap(right);
    translate([0, 0, 10 + diff * 3]) color($acryl_color) linear_extrude(4) topframe(right);
    translate([0, 0, 8 + diff * 2]) color($acryl_color) linear_extrude(2) topplate(right);
    // 8 - 0.2 - 1.6 = 6.2
//    translate([0, 0, 6.2 + diff * 2]) color([1, 1, 1]) linear_extrude(1.6) preview_pcb(right);
    translate([0, 0, 6.2 + diff * 2]) color([1, 1, 1]) preview_pcb_kicad();
    // TODO: maybe 6 (middle) + 2 (bottom) is better to make a room for underglows ?
    translate([0, 0, 4 + diff]) color($acryl_color) linear_extrude(4) middleframe(right);
    translate([0, 0, 0]) color($acryl_color) linear_extrude(4) bottomplate(right);
    translate([0, 0, -2 - diff]) color($acryl_color) linear_extrude(2) bottomplate2(right);
}

// ---- cut model

extra_bottom_height = $pcb_grid * 18;
base_height         = 3 * $unit_v + 2 * $wall_thickness;
base_width          = 7 * $unit_h + 2 * $wall_thickness;
total_height        = base_height + $unit_v + extra_bottom_height;

module pos_plate () {
    translate([$wall_thickness, extra_bottom_height + $wall_thickness])
        children();
}

module rotate_plate () {
    translate([base_width, total_height])
      rotate([0, 0, 180])
        pos_plate()
            children();
}

module acryl_2mm (guide = false) {
    difference () {
        if (guide) square([300, 300]);
        translate([3, 3]) {
            rotate_plate() topplate();
            translate([0, base_height + 3])
                pos_plate() bottomplate2();
            translate([0, base_height + total_height + 6])
                rotate_plate() topplate();
            translate([base_width + 3, 0]) {
                rotate_plate() topplate();
                translate([0, base_height + 3])
                    pos_plate() bottomplate2(true);
                translate([0, base_height + total_height + 6])
                    rotate_plate() topplate();
            }
        }
    }
}

module acryl_4mm (guide = false) {
    difference () {
        if (guide) square([300, 300]);
        translate([3, 3]) {
            rotate_plate() topframe();
            translate([0, base_height + 3])
                pos_plate() bottomplate();
            translate([0, base_height + total_height + 6])
                rotate_plate() middleframe();
            translate([base_width + 3, 0]) {
                rotate_plate() topframe();
                translate([0, base_height + 3])
                    pos_plate() bottomplate(true);
                translate([0, base_height + total_height + 6])
                    rotate_plate() middleframe(true);
            }
        }
    }
}

//acryl_2mm();
preview(0);
translate([150, 0, 0]) preview(0, right = true);
