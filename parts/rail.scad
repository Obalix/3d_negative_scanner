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

module scanner_rail_extension() {	
	rotate([0,0,180]) {
		difference() {
			translate([-9.25,0,0]) {
				cube([19,30,10]);
			}
			scanner_rail();
		}
	}
	scanner_rail();
	translate([-10,0,0]) {
		cube([20,40,10]);
	}
}

module plate_holder() {
	translate([12.5,0,0]) {
		difference() {
			translate([-20,0,22.5]) {
				cube([20,5,40]);
			}
			translate([-15.5,-0.2,27.5]) {
				cube([6,7,30]);
			}
		}
	}
}

module scanner_rail_runner() {
	difference() {
		translate([0,32.5,0]) {
			difference() {
				union() {
					translate([-20,-32.5,7.5]) {
						cube([40,30,15]);
					}
					translate([-20,-2.5,15]) {
						rotate([90,0,0]) {
							cylinder(30,7.5,7.5);
						}
					}
					mirror() {
						translate([-20,-2.5,15]) {
							rotate([90,0,0]) {
								cylinder(30,7.5,7.5);
							}
						}
					}
				}
				rail(90,0.1);
			}
		}
		translate([-10,-5,1.5]) {
			cube([20,40,12.5]);
		}
		translate([15,-20,5]) {
			cube([1.5,50,10]);
		}
		mirror() {
			translate([15,-20,5]) {
				cube([1.5,50,10]);
			}
		}
	}
	translate([-12.5,5,0]) {
		plate_holder();
	}
	translate([12.5,5,0]) {
		mirror() plate_holder();
	}
	translate([-12.5,15,0]) {
		plate_holder();
	}
	translate([12.5,15,0]) {
		mirror() plate_holder();
	}
	translate([-20,0,22]) {
		cube([40,25,1.5]);
	}
}