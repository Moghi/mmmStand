//################# brace in one piece ###############################
//- all numbers in mm
//####################################################################

// suitable for MacBook Pro (Retina, 13-inch, Early 2015)
//--------------- CHANGE THIS VALUE FOR YOUR COMPUTER ---------------|
overall_distance_between_pcFoots=260;                              //|
//___________________________________________________________________|

// calculating the value needed for translation, assuming standLeft and standRight have w=30mm and the connectors are 7mm each
translation_value = overall_distance_between_pcFoots - 30 - 14;
//Definition of needed Modules

// left connector
module left(){
  translate([0,-7,0]) cube([20,7,3],false);// bottom
  translate([0,-7,3]) cube([20,3,3],false);// outer tooth
}
// right connector
module right(x){
  translate([0,x,0]) cube([20,7,3],false);// bottom
  translate([0,x+4,3]) cube([20,3,3],false);// outer tooth
}

// instantiating modules
// color helps to identify different modules in preview
union(){
    translate([0,0,0]) cube([20,translation_value,9],false);// main part
    color("blue") left();// left connector
    color("blue") right(translation_value);// right connector
}
