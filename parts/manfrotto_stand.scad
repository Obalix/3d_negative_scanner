//manfrotto_stand();

module manfrotto_200pl() {
    scale([1.0025,1.0025,1.0025]) {
        translate([20,-0,20.05]) {
            rotate([-90,0,90]) {
                import("lib/Manfrotto_200PL/files/200PL.STL");
            }
        }
    }
}

module manfrotto_slice() {
	translate([1.25,-20,-10.66]) {
		intersection() {
			hull() {
				manfrotto_200pl();
			}
			translate([0,20,0]) {
				cube([60,1,40], center=true);
			}
		}
	}
}

module manfrotto_stand() {
	translate([0,-7.5,1.4]) {
		difference() {
			translate([-35,-25,0]) {
				cube([70,65,18.6]);
			}
			scale([1,55,1]) {
				translate([0,0,10]) {
					manfrotto_slice();
				}
			}
		}
	}
	translate([-35,-32.5,0]) {
		cube([70,65,5]);
	}
}
