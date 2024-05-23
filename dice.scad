dotpos = 7.5 / 2;

module dot(pos_x, pos_y, pos_z) {
    translate([pos_x, pos_y, pos_z]) sphere(d = 1, $fn = 15);
}

difference() {
    intersection() {
        sphere(d = 10, $fn = 50);
        cube(7.5, center = true);
    }
    
    dot(0, 0, dotpos);
    dot(dotpos, 0, 0);
    dot(0, -dotpos, 0);
    
    for(pos_a = [-1.5, 1.5]) {
        dot(pos_a, dotpos, pos_a);
        dot(dotpos, pos_a, pos_a);
        dot(pos_a, 0, -dotpos);
        for(pos_b = [-1.5, 1.5]) {
            dot(-dotpos, pos_a, pos_b);
            dot(pos_a, -dotpos, pos_b);
            dot(pos_a, pos_b, -dotpos);
        }
    }     
}