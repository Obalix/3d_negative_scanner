include <rail.scad>

module manfrotto_stand() {
	import("C:/_Projekte_/eckenberger.de/3D/Negative_Scanner/parts/part_manfrotto_stand.stl");
}

module cam_stand_base() {
	difference() {
		translate([-35,-32.5,0]) {
			cube([70,65,50]);
		}
		translate([-30,-27.5,10]) {
			cube([60,55,70]);
		}
	}
	translate([0,0,50]) {
		
			base_tongue(0.05);
	}
	translate([0,27.5,0]) {
		scanner_rail();
	}
}

module base_tongue(offset = 0) {
	translate([-37.5,-35,0]) {
		translate([2.5,2.5,0]) {
			cube([70,2.5 - offset,2.5]);
		}
		translate([2.5,2.5,0]) {
			cube([2.5 - offset,65,2.5]);
		}
		translate([2.5,65,0]) {
			cube([70,2.5 - offset,2.5]);
		}
		translate([70,2.5,0]) {
			cube([2.5,65-offset,2.5]);
		}
	}
}

module cam_stand_top() {
	difference() {
		manfrotto_stand();
		base_tongue();
	}
}