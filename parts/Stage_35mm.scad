include <../lib/nutsnbolts/cyl_head_bolt.scad>

module cut_outs() {
	color("green", 0.8) {
		translate([-41,-0.6,57.5]) {
			cube([82,1.2,35.2]);
		}
	}
	color("blue", 0.8) {
		translate([-20,-3,55]) {
			cube([40,6,40]);
		}
	}
	translate([-12.5,-4,10]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M6",l=10);
			}
		}
	}
	translate([12.5,-4,10]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M6",l=10);
			}
		}
	}
	translate([-29,-4,99.5]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=10);
			}
		}
	}
	translate([29,-4,99.5]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=10);
			}
		}
	}
	translate([-29,-4,50]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=10);
			}
		}
	}
	translate([29,-4,50]) {
		color("red", 0.8) {
			rotate([90,90,0]) {
				hole_through(name="M4",l=10);
			}
		}
	}
}

module stage_front() {
	difference() {
		translate([0,-1.2,52.5]) {
			cube([70,2.4,105],center=true);
		}
		cut_outs();
	}
	translate([-20,-2.4,55]) {
		cube([40,4.8,2.4]);
	}
	translate([-20,-2.4,92.7]) {
		cube([40,4.8,2.4]);
	}
	translate([-30,-2.4,57.4]) {
		cube([60,1.8,0.4]);
	}
	translate([-30,-2.4,92.3]) {
		cube([60,1.8,0.4]);
	}
	translate([-20,0.6,57.4]) {
		cube([40,1.8,0.4]);
	}
	translate([-20,0.6,92.3]) {
		cube([40,1.8,0.4]);
	}
}

module stage_back() {
	difference() {
		translate([0,1.2,52.5]) {
			cube([70,2.4,105],center=true);
		}
		cut_outs();
	}
	union() {
		translate([-75,-2.4,55]) {
			cube([40,4.8,2.5]);
		}
		translate([-75,-2.4,92.7]) {
			cube([40,4.8,2.5]);
		}
		translate([-75,0.6,75]) {
			cube([40,1.8,2.5]);
		}
		translate([-75,0.6,55]) {
			cube([2.5,1.8,40]);
		}
		translate([-55,0.6,55]) {
			cube([2.5,1.8,40]);
		}
		translate([-75,-2.4,57.5]) {
			cube([40,1,2]);
		}
		translate([-75,-2.4,91]) {
			cube([40,1,2]);
		}
	}
	mirror() {	
		translate([-75,-2.4,55]) {
			cube([40,4.8,2.5]);
		}
		translate([-75,-2.4,92.7]) {
			cube([40,4.8,2.5]);
		}
		translate([-75,0.6,75]) {
			cube([40,1.8,2.5]);
		}
		translate([-75,0.6,55]) {
			cube([2.5,1.8,40]);
		}
		translate([-55,0.6,55]) {
			cube([2.5,1.8,40]);
		}
		translate([-75,-2.4,57.5]) {
			cube([40,1,2]);
		}
		translate([-75,-2.4,91]) {
			cube([40,1,2]);
		}
	}
}

module stage_clamp() {
	translate([-35,-4.4,105]) {
		cube([70,8.8,3]);
	}
	translate([-35,2.4,101]) {
		cube([70,2,4]);
	}
	translate([-35,-4.4,101]) {
		cube([70,2,4]);
	}
}

//stage_front();
//stage_back();
//stage_clamp();