dotpos = 7.5 / 2;


difference() {
    intersection() {
        sphere(d = 10, $fn = 50);
        cube(7.5, center = true);
    }
    
    translate([0, 0, dotpos]) sphere(d = 1, $fn = 15);
    
    translate([-1.5, dotpos, -1.5]) sphere(d = 1, $fn = 15);
    translate([1.5, dotpos, 1.5]) sphere(d = 1, $fn = 15);
    
    translate([dotpos, -1.5, -1.5]) sphere(d = 1, $fn = 15);
    translate([dotpos, 0, 0]) sphere(d = 1, $fn = 15);
    translate([dotpos, 1.5, 1.5]) sphere(d = 1, $fn = 15);
    
    translate([-dotpos, -1.5, -1.5]) sphere(d = 1, $fn = 15);
    translate([-dotpos, -1.5, 1.5]) sphere(d = 1, $fn = 15);
    translate([-dotpos, 1.5, -1.5]) sphere(d = 1, $fn = 15);
    translate([-dotpos, 1.5, 1.5]) sphere(d = 1, $fn = 15);
    
    translate([-1.5, -dotpos, -1.5]) sphere(d = 1, $fn = 15);
    translate([-1.5, -dotpos, 1.5]) sphere(d = 1, $fn = 15);
    translate([0, -dotpos, 0]) sphere(d = 1, $fn = 15);
    translate([1.5, -dotpos, -1.5]) sphere(d = 1, $fn = 15);
    translate([1.5, -dotpos, 1.5]) sphere(d = 1, $fn = 15);
    
    translate([-1.5, -1.5, -dotpos]) sphere(d = 1, $fn = 15);
    translate([-1.5, 0, -dotpos]) sphere(d = 1, $fn = 15);
    translate([-1.5, 1.5, -dotpos]) sphere(d = 1, $fn = 15);
    translate([1.5, -1.5, -dotpos]) sphere(d = 1, $fn = 15);
    translate([1.5, 0, -dotpos]) sphere(d = 1, $fn = 15);
    translate([1.5, 1.5, -dotpos]) sphere(d = 1, $fn = 15);
    
}