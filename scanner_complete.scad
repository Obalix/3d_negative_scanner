module manfrotto_stand() {
	import("D:/Tools/3D/_projects_/Negative_Scanner/parts/part_manfrotto_stand.stl");
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
	translate([-37.5,-35,-0]) {
		translate([2.5,2.5,0]) {
			cube([70,2.5 - offset,2.6]);
		}
		translate([2.5,2.5,0]) {
			cube([2.5 - offset,65,2.6]);
		}
		translate([2.5,65,0]) {
			cube([70,2.5 - offset,2.6]);
		}
		translate([70,2.5,0]) {
			cube([2.5,65-offset,2.6]);
		}
	}
}

module cam_stand_top() {
	difference() {
		manfrotto_stand();
		base_tongue();
	}
	translate([-15,-30,-11]) {
		cube([30,5,11]);
	}
}

module rail_part(offset=0) {
	translate([-5-offset,0.5,15]) {
		rotate([90,0,0]) {
			cylinder(1,5 + offset,5 + offset,$fd=1,$fs=0.1);
		}

	}
	translate([-5-offset,-0.5,0]) {
		cube([5 + offset,1,15]);
	}
}

module rail(length, offset=0) {
	scale([1,length,1]) {
		translate([-10,0,0]) {
			rail_part(offset);
		}
		translate([10,0,0]) {
			mirror() rail_part(offset);
		}
	}
}

module scanner_rail() {
	translate([0,75,0]) {
		rail(150);
	}
	translate([-15,0,0]) {
		cube([30,5,5]);
	}
	translate([-15,145,0]) {
		cube([30,5,5]);
	}
	translate([-15,72.5,0]) {
		cube([30,5,5]);
	}
	translate([-15,34.05,0]) {
		cube([30,5,5]);
	}
	translate([-15,106.55,0]) {
		cube([30,5,5]);
	}
}

module scanner_rail_runner() {
	translate([0,10,0]) {
		difference() {
			union() {
				translate([-20,-32.5,7.5]) {
					cube([40,40,15]);
				}
				translate([-20,7.5,15]) {
					rotate([90,0,0]) {
						cylinder(40,7.5,7.5);
					}
				}
				mirror() {
					translate([-20,7.5,15]) {
						rotate([90,0,0]) {
							cylinder(40,7.5,7.5);
						}
					}
				}
			}
			rail(90,0.1);
		}
	}
}

//cam_stand_base();
//cam_stand_top();

scanner_rail_runner();
