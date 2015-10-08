module mount(){
  for (i=[[-0.5,0],[0.5,0]]){
    translate(i*60.5)
      hull(){
        for (i=[[0,-1+5],[0,3+5]])
          translate(i)
            circle(d=6.3,$fn=100,center=true);
      }
  }
  
}


module screws(){
  for (i = [[-0.5,-0.5],[-0.5,0.5],[0.5,0.5],[0.5,-0.5]]){
    translate(30.5*i) 
      circle(d=3.3, $fn=20);
  }
}  

module centerhole(){
  circle(d=22.5,$fn=100,center=true);
}

module holes(){
  screws();
  centerhole();
}

module outline(){
  translate([-40,-20]){
      minkowski(){
        circle(d=6,$fn=60);
        square([80,40]);
      }
  }
}


module bracket(){
  difference(){
    outline();
    holes();
    mount();
  }
}

bracket();
//square([40,40]);
