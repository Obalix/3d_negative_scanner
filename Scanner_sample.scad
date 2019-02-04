module manfrotto_p200() {
    scale([1.01,1.01,1.01]) {
        translate([20,-0,20.05]) {
            rotate([-90,0,90]) {
                import(     "C:/_Projekte_/eckenberger.de/3D/Manfrotto_200PL/files/200PL.STL");
            }
        }
    }
}

module support() {
	translate([0,0,20]) {
		cube([60,4,40], center=true);
	}
}

module segment(width=1) {
    scale([1,width,1]) {
        translate([0,-10,10]) {
            difference() {
                translate([0,10,15]) {
                    cube([60,10,50], center=true);
                }
                translate([0,0,20]) {
                    hull() {
                        manfrotto_p200();
                    } 
                }
            }
        }
	}
}

difference() {
	translate([0,-10,0]) {
		segment(width=4);
	}
	translate([0,60,0]) {
		cube([35,15.02,65], center=true);
	}
	translate([21.5,-16,0]) {
		cube([10,130,65], center=true);
	}
	translate([-21.5,-16,0]) {
		cube([10,130,65], center=true);
	}
	translate([8,-16,0]) {
		cube([10,130,65], center=true);
	}
	translate([-8,-16,0]) {
		cube([10,130,65], center=true);
	}
}
translate([0,8,0]) {
	support();
}