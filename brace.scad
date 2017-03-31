//################# brace in one piece ###############################
//- all numbers in mm
//####################################################################
overall_length=212; // suitable for MacBook Pro (Retina, 13-inch, Early 2015)
//Definition of needed Modules
// left connector
module left(){
  translate([0,-6,0]) cube([20,9,3],false);// bottom
  translate([0,-6,3]) cube([20,3,3],false);// outer tooth
  translate([0,0,3]) cube([20,3,6],false);// inner wall - connected to brace
}
// right connector
module right(x){
  translate([0,x+3,0]) cube([20,9,3],false);// bottom
  translate([0,x+9,3]) cube([20,3,3],false);// outer tooth
  translate([0,x+3,3]) cube([20,3,6],false);// inner wall - connected to brace
}

//usage of modules
// color helps to identify different modules in preview
union(){
    translate([0,3,0]) cube([20,212,9],false);// main part
    color("blue") left();// left connector
    color("blue") right(overall_length);// right connector
}
