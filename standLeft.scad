//################# left stand with brace connector #######################
//#########################################################################

// picture a triangle ABC with 𝛾 = 90˚ and the hypothenuse c, then a will correspond to height(h) and b to length(l). A prism in the form of this triangle and width w of the ramp:
module prism(w, l, h){
  polyhedron(
    points=[[0,0,0], [w,0,0], [w,l,0], [0,l,0], [0,l,h], [w,l,h]],
    faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
  );
}

module fuss() {
  union(){
    prism(30,200,12);
    translate([0,0,-5]) cube([30,200,5],false);
  }
}

module wall(){
  $fn=100;
  union(){
    cube([30,6,9], center=false);
    translate([0,3,9]) rotate([0,90,0]) cylinder(h=30, r=3, center=false);
  }
}

module connector(){
  union(){
    translate([30,100,-5]) cube([6.5,30,3],false);
    translate([33.5,100,-2]) cube([3,30,3],false);
  }
}

//usage of modules to create part
a=atan(12/200);
union(){
  fuss();
  translate([0,0,-1]) rotate([a,0,0]){
    wall();
  }
  connector();
}
