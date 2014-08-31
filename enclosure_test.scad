// Intel Galileo v1 3D model
// Pierre Cauchois - 8/30/2014
// http://pierreca.github.io
// http://github.com/pierreca/galileo
//
// Enclosure imported from: http://www.thingiverse.com/thing:159983/

use <Galileo_v1.scad>
module upper(x, y, z) {
	translate([x, y, z])
	import("Intel_Galileo_Upper_Enclosure.stl");
}

module lower(x, y, z) {
	translate([x, y, z])
	import("Intel_Galileo_Lower_Enclosure.stl");
}

translate([110, 76, 0])rotate([0,0,180]) lower();
translate([1, 76, 60]) rotate([180,0,0]) upper();
galileo_v1(3, 2, 13);