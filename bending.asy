import graph;

real u = 5;
real half_ang = 10;
real hei = 5u;

path upper = arc((0,-100u),100u+hei,90-half_ang,90+half_ang);
path lower = arc((0,-100u),100u,90-half_ang,90+half_ang);

draw(lower);
draw(upper);
draw(shift((0,-100u))*(100u*dir(90-half_ang)--(100u+hei)*dir(90-half_ang)));
draw(shift((0,-100u))*(100u*dir(90+half_ang)--(100u+hei)*dir(90+half_ang)));

pair dr = shift(0,-100u)*(98.5u*dir(90-half_ang/4));
pair dl = shift(0,-100u)*(98.5u*dir(90+half_ang/4));
draw(circle(dr,1.5u));
draw(circle(dl,1.5u));

pair ur = shift(0,-100u)*((101.5u+hei)*dir(90-3*half_ang/4));
pair ul = shift(0,-100u)*((101.5u+hei)*dir(90+3*half_ang/4));
draw(circle(ur,1.5u));
draw(circle(ul,1.5u));

draw((0,-2u)--(0,7u), linetype(new real[] {8,8}));

draw(shift(0,10u)*ur--shift(0,1.5u)*ur,Arrow);
label("$\mathbf F$", shift(0,10u)*ur--shift(0,1.5u)*ur, E);

draw(shift(0,-10u)*dr--shift(0,-1.5u)*dr,Arrow);
label("$\mathbf F$", shift(0,-10u)*dr--shift(0,-1.5u)*dr, W);

draw(ur--shift(0,-10u)*(xpart(ur),ypart(dr)), linetype(new real[] {24,8,0,8}));

draw(shift(0,-8.5u)*dr--shift(0,-8.5u)*(xpart(ur),ypart(dr)),Arrows);
label("$L$", shift(0,-8.5u)*dr--shift(0,-8.5u)*(xpart(ur),ypart(dr)), N);

draw((0,0)--(-2u,0),red);
draw((0,5u)--(3u,5u),red);
draw((3u,5u)..(2u,4u)..(0,2.7u)..(-u,1.5u)..(-2u,0),red);
label("$\varepsilon_{yy}$",(0,5u),NE);

draw((-15u,-10u)--(-10u,-10u),Arrow);
draw((-15u,-10u)--(-15u,-5u),Arrow);
label("$y$",(-10u,-10u),N);
label("$x$",(-15u,-5u),W);
