include <parts/camera_stand.scad>;
include <parts/rail.scad>;
include <lib/nutsnbolts/cyl_head_bolt.scad>;
include <parts/Stage_35mm.scad>;
include <parts/Stage_60mm.scad>;

//cam_stand_base();
//cam_stand_top();
//scanner_rail_runner();

$fn=20;

module scanner_rail_runner_w_screw() {
	difference() {
		scanner_rail_runner();
		translate([-15,15,15]) {
			rotate([90,0,90]) {
				hole_threaded(name="M6", l=20,thread="modeled");
			}
		}
	}
}

module scanner_rail_runner_screw() {
	translate([0,-20,6]) {
		rotate([180,0,0]) {
			screw("M6x16",thread="modeled");
		}
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

//scanner_rail();
//scanner_rail_extension();
//scanner_rail_runner();
//scanner_rail_runner_w_screw();
//scanner_rail_runner_screw();
//stage_front();
//stage_back();

//translate([0,12.5,30]) {
//	stage_front();
//	stage_back();
//}

//rotate([90,0,0]) stage_front();
//rotate([90,180,0]) stage_back();
rotate([90,180,0]) stage_60_front();
//rotate([90,0,0]) stage_60_back();

//rotate([0,180,0]) translate([0,0,-105]) stage_clamp();