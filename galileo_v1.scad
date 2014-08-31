// Intel Galileo v1 3D model
// Pierre Cauchois - 8/30/2014
// http://pierreca.github.io
// http://github.com/pierreca/galileo

pcb_height = 1.75; // z-axis

module board(x, y, z) {
	color("teal") translate([x, y, z]) {
		difference() {
			cube(size=[105, 12, pcb_height]);
			translate([4, 4, -0.10])cylinder(h = 2, r = 2);
			translate([101, 4, -0.10])cylinder(h = 2, r = 2);
		}
		difference() {
			translate([0, 49, 0]) cube(size=[105, 23, pcb_height]);
			translate([4, 68, -0.10])cylinder(h = 2, r = 2);
			translate([101, 68, -0.10])cylinder(h = 2, r = 2);
		}
		hull() {
			translate([0, 12, 0]) cube(size=[105, 37, pcb_height]);
			translate([105, 14, 0]) cube(size=[2, 33, pcb_height]);
		}
	}
}

module ethernet_connector(x, y, z) {
	color("silver") translate([x, y, z]) {
		cube(size=[17, 24, 11]);
	}
}

module power_connector(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[14, 9, 11]);
	}
}

module sdcard(x, y, z) {
	color("silver") translate([x, y, z]) {
		cube(size=[15.5, 12, 2]);
	}
}

module audio_connector(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[7, 14, 6]);
	}
}
module usb_connector(x, y, z) {
	color("silver") translate([x, y, z]) {
		cube(size=[8, 6, 3]);
	}
}

module female_header(x, y, z, length) {
	color("black") translate([x, y, z]) {
		cube(size=[length, 2.5, 8.5]);
	}
}

module icsp_connector(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[5, 7.5, 9]);
	}
}

module white_connector(x, y, z) {
	color("white") translate([x, y, z]) {
		cube(size=[10, 5, 9]);
	}
}

module jumper_3pins(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[7.5, 2.5, 9]);
	}
}

module jumper_2pins(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[5, 2.5, 9]);
	}
}

module jtag_connector(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[13, 5, 5]);
	}
}

module quark(x, y, z) {
	translate([x, y, z]) {
		color("darkgreen") cube(size=[15, 15, 0.5]);
		color("dimgrey") translate([4.5, 4.5, 0.5]) cube(size=[6, 6, 0.5]);
	}
}

module bottom_connector1(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[29, 6, 9]);
		translate([0, 0, 2]) cube(size=[29, 8, 7]);
	}
}

module bottom_connector2(x, y, z) {
	color("black") translate([x, y, z]) {
		cube(size=[6, 6, 6]);
		translate([6, 1.5, 2]) cube(size=[17.5, 3, 2]);
		translate([23.5, 0, 0]) cube(size=[6, 6, 6]);
		translate([3, 3, 6]) cylinder(h = 4, r1 = 1, r2 = 0);
		translate([26.5, 3, 6]) cylinder(h = 4, r1 = 1, r2 = 0);
	}
}

module tactile_button(x, y, z) {
	translate([x, y, z]) {
		color("silver") cube(size=[4, 3, 1.5]);
		color("white") translate([2, 1, 1.5]) cylinder(h = 0.5, r = 1);
	}
}

module galileo_v1(x, y, z) {
	translate([x, y, z]) {
		board(0,0,0);
		ethernet_connector(15.5, 49, pcb_height);
		power_connector(-1, 27.25, pcb_height);
		sdcard(0, 12, pcb_height);
		audio_connector(36, 60, pcb_height);
		usb_connector(47, 67, pcb_height);
		usb_connector(61, 67, pcb_height);
		female_header(65, 10, pcb_height, 20);
		female_header(87.5, 10, pcb_height, 15);
		female_header(56, 58, pcb_height, 25);
		female_header(83, 58, pcb_height, 20);
		icsp_connector(101, 33, pcb_height);
		white_connector(85, 65, pcb_height);
		jumper_3pins(65, 6, pcb_height);
		jumper_2pins(75, 6, pcb_height);
		jumper_2pins(35, 16, pcb_height);
		rotate([0, 0, 90]) jumper_3pins(63.5, -13.5, pcb_height);
		jtag_connector(18, 1, pcb_height);
		quark(51.5, 25, pcb_height);
		tactile_button(11, 1, pcb_height);
		tactile_button(67, 1, pcb_height);
		bottom_connector1(32.5, 3.5, -9);
		rotate([180, 0, 0]) bottom_connector2(32, -52, 0);
	}
}

galileo_v1();