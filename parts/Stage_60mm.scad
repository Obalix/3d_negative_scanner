// stage 60mm
include <../lib/nutsnbolts/cyl_head_bolt.scad>

module stage_60_cutout() {
	translate([-31,-2.5,40]) {
		color("red", 0.5) {
			cube([62,5,62]);
		}
		translate([0,0,-5]) {
			color("red", 0.3) {
				cube([62,5,5]);
			}
		}
		translate([0,0,62]) {
			color("red", 0.3) {
				cube([62,5,5]);
			}
		}
	}
	translate([-55,-0.6,39.5]) {
		color("green", 0.5) {
			cube([110,1.2,63]);
		}
	}
	translate([-12.5,-2.5,10]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M6",l=5);
			}
		}
	}
	translate([12.5,-2.5,10]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M6",l=5);
			}
		}
	}
	translate([-43,-2.5,113]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=5);
			}
		}
	}
	translate([43,-2.5,113]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=5);
			}
		}
	}
	translate([-43,-2.5,27.5]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=5);
			}
		}
	}
	translate([43,-2.5,27.5]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=5);
			}
		}
	}
}

module stage_60_front() {
	difference() {
		translate([-50,0,0]) {
			cube([100,2.4,120]);
		}
		stage_60_cutout();
	}
	translate([-31,-2.4,40]) {
		translate([0,0,-5]) {
			color("blue", 0.75) {
				cube([62,4.8,4.5]);
			}
		}
		translate([0,3,-1.5]) {
			cube([62,1.8,2]);
		}
		translate([0,0,-1.5]) {
			cube([62,1.8,2]);
		}
		translate([0,0,62.5]) {
			color("blue", 0.75) {
				cube([62,4.8,4.5]);
			}
		}
		translate([0,3,61]) {
			cube([62,1.8,2]);
		}
		translate([0,0,61]) {
			cube([62,1.8,2]);
		}
	}
}

module stage_60_back() {
	difference() {
		translate([-50,-2.4,0]) {
			cube([100,2.4,120]);
		}
		stage_60_cutout();
	}
	union() {
		translate([50,-2.4,35.5]) {
			cube([40,4.8,4]);
		}
		translate([50,-2.4,102.5]) {
			cube([40,4.8,4]);
		}
		translate([50,-2.4,69.9]) {
			cube([40,1.8,2]);
		}
		translate([86,-2.4,37.5]) {
			cube([4,1.8,67]);
		}
		translate([50,0.6,38.5]) {
			cube([40,1.8,2]);
		}
		translate([50,-2.4,38.5]) {
			cube([40,1.8,2]);
		}
		translate([50,0.6,100.5]) {
			cube([40,1.8,2]);
		}
		translate([50,-2.4,100.5]) {
			cube([40,1.8,2]);
		}
	}
	mirror() {
		translate([50,-2.4,35.5]) {
			cube([40,4.8,4]);
		}
		translate([50,-2.4,102.5]) {
			cube([40,4.8,4]);
		}
		translate([50,-2.4,69.9]) {
			cube([40,1.8,2]);
		}
		translate([86,-2.4,37.5]) {
			cube([4,1.8,67]);
		}
		translate([50,0.6,38.5]) {
			cube([40,1.8,2]);
		}
		translate([50,-2.4,38.5]) {
			cube([40,1.8,2]);
		}
		translate([50,0.6,100.5]) {
			cube([40,1.8,2]);
		}
		translate([50,-2.4,100.5]) {
			cube([40,1.8,2]);
		}
	}
}

//translate([0,0,40]) {
//translate([0,-0,0]) {
//	stage_60_back();
//}
//	stage_60_front();
//}