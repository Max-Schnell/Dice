size = 16; //Größe des Würfels

dotpos = size / 2;
dotdif = size / 5;

module dot(pos_x, pos_y, pos_z) {
    translate([pos_x, pos_y, pos_z]) sphere(d = size / 7.5, $fn = 15);
}

difference() {
    intersection() {
        sphere(d = size / 75 * 100, $fn = 50);
        cube(size, center = true);
    }
    
    dot(0, 0, dotpos);
    dot(dotpos, 0, 0);
    dot(0, -dotpos, 0);
    
    for(pos_a = [-dotdif, dotdif]) {
        dot(pos_a, dotpos, pos_a);
        dot(dotpos, pos_a, pos_a);
        dot(pos_a, 0, -dotpos);
        for(pos_b = [-dotdif, dotdif]) {
            dot(-dotpos, pos_a, pos_b);
            dot(pos_a, -dotpos, pos_b);
            dot(pos_a, pos_b, -dotpos);
        }
    }
}