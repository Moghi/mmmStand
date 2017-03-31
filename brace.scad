//################# brace in one piece ###############################
//- all numbers in mm
//####################################################################

//Definition of needed Modules
module left(){
  translate([0,-6,0]) cube([20,9,3],false);
  translate([0,-6,3]) cube([20,3,3],false);
  translate([0,0,3]) cube([20,3,6],false);
}

module right(){
  translate([0,215,0]) cube([20,9,3],false);
  translate([0,221,3]) cube([20,3,3],false);
  translate([0,215,3]) cube([20,3,6],false);
}

//usage of modules
// color helps to identify different modules in preview
union(){
    translate([0,3,0]) cube([20,212,9],false);
    color("blue") left();
    color("blue") right();
}
