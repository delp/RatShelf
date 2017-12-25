//radius 16 cm
//height 2 cm

//take the intersection of a cylinder and then minkowski a sphere around it?

$fn = 30;

module wedge() {
    intersection() {
        cylinder(r = 160, h = 20);
        cube([180, 180, 20]);
    }
}

module smallerWedge() {
    intersection() {
        cylinder(r = 120, h = 15);
        cube([150, 150, 20]);
    }
}

module roundedWedge() {
    minkowski() {
        smallerWedge();
        sphere(r = 7);
    }    
}


module screwHole() {
    cylinder(r = 2.4, h = 50);
}



difference() {
    wedge();
    translate([17, 17, 19]) roundedWedge();
    translate([25, 25, 0]) cylinder(r = 5, h = 20);
    translate([80, 25, 0]) cylinder(r = 5, h = 20);
    translate([130, 25, 0]) cylinder(r = 5, h = 20);
    translate([65, 65, 0]) cylinder(r = 5, h = 20);
    translate([95, 95, 0]) cylinder(r = 5, h = 20);
    translate([25, 80, 0]) cylinder(r = 5, h = 20);
    translate([25, 130, 0]) cylinder(r = 5, h = 20);
    translate([40, 0, 7]) rotate([-90, 0, 0]) screwHole();
    translate([120, 0, 7]) rotate([-90, 0, 0]) screwHole();
    translate([0, 40, 7]) rotate([0, 90, 0]) screwHole();
    translate([0, 120, 7]) rotate([0, 90, 0]) screwHole();
}