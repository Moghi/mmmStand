//################# right stand with brace connector ######################
//#########################################################################

// picture a triangle ABC with 𝛾 = 90˚ and the hypothenuse c, then a will correspond to height(h) and b to length(l). A prism in the form of this triangle and width w of the resulting ramp:
module prism(w, l, h){
  polyhedron(
    points=[[0,0,0], [w,0,0], [w,l,0], [0,l,0], [0,l,h], [w,l,h]],
    faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
  );
}
// this is the big foot, the laptop will rest on it
module foot() {
  union(){
    translate([0,0,5]) prism(30,200,12);
    cube([30,200,5],false);
  }
}
// this part stops the laptop from sliding down
module wall(){
  $fn=100;
  union(){
    cube([30,6,9], center=false);
    translate([0,3,9]) rotate([0,90,0]) cylinder(h=30, r=3, center=false);
  }
}
// this part connects to the brace
module connector(){
  union(){
    translate([-6.5,100,0]) cube([6.5,30,3],false);
    translate([-6.5,100,3]) cube([3,30,3],false);
  }
}

// instantiating modules
// calculating gradient angle
a=atan(12/200);
union(){
  foot();
  translate([0,0,4]) rotate([a,0,0]){ // rotate to be orthogonal to the slide surface
    wall();
  }
  connector();
}
