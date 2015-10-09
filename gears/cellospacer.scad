module spacer(){
    linear_extrude(height=15,center=true)
        union(){
            circle(d=8,$fn=100,center=true);
            translate([-2,2])
                square([4,3.5]);
        }
}

module hub(){
    linear_extrude(height=6,center=true)
        difference(){
            circle(d=19,$fn=100,center=true);
            circle(d=8,$fn=100,center=true);
            translate([-2,2])
                square([4,3.5]);
        }
}

module spacer2d(){
    union(){
        circle(d=8,$fn=100,center=true);
        translate([-2,2])
            square([4,3.5]);
    }
 }    
 
module rimmedspacer2d(){
    difference(){
        circle(d=30,$fn=100,center=true);
        union(){
            circle(d=8,$fn=100,center=true);
            translate([-2,2])
                square([4,3.5]);
        }
    }
 }     