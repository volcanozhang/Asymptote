import three;

currentprojection=orthographic(65,-20,-20,center=true);

size(5cm);
size3(3cm,5cm,8cm);

triple dis = (0,-1.5,0);

draw(unitbox);
draw(shift(dis)*unitbox);

triple O = (1,0,0);
//label("$O$",O,NW);

triple e1 = (-1,0,0);
draw(O--O+1.5*e1,Arrow3);
label("$\mathbf e_1$",O+1.2*e1--O+1.5*e1);

triple e2 = unit((-0.5,1,0));
draw(O--O+0.8*e2,Arrow3);
label("$\mathbf e_2$",O+0.5*e2--O+0.8*e2);

triple e3 = unit((-0.2,0.2,1));
draw(O--O+1.4*e3,Arrow3);
label("$\mathbf e_3$",O+1.1*e3--O+1.4*e3);

real l3 = 0.15;
path3 al3 = arc(O,O+l3*e1,O+l3*e2);
draw(al3);
label("$\alpha_3$",al3);

real l1 = 0.2;
path3 al1 = arc(O,O+l1*e3,O+l1*e2);
draw(al1);
label("$\alpha_1$",al1,NE);

real l2 = 0.25;
path3 al2 = arc(O,O+l2*e3,O+l2*e1);
draw(al2);
label("$\alpha_2$",al2,NW);

triple O0 = O + dis;

draw(O0--O0+(0,1,0),Arrow3);
label("$\mathbf E_2$",O0--O0+(0,1,0),N);

draw(O0--O0+(0,0,1),Arrow3);
label("$\mathbf E_3$",O0--O0+(0,0,1),E);

draw(O0--O0+(-1,0,0),Arrow3);
label("$\mathbf E_3$",O0+(-1,0,0),E);

draw(O0+(-0.1,0,0)--O0+(-0.1,0.1,0));
draw(O0+(0,0.1,0)--O0+(-0.1,0.1,0));

draw(O0+(0,0,0.1)--O0+(0,0.1,0.1));
draw(O0+(0,0.1,0.1)--O0+(0,0.1,0));

draw(O0+(0,0,0.1)--O0+(-0.1,0,0.1));
draw(O0+(-0.1,0,0.1)--O0+(-0.1,0,0));
/*
import graph;

real u = 70;

real a = 0.3u;
real b = -0.7u;

pen pen0 = linetype(new real[] {8,8});

draw((0,0)--(0,u));
draw((0,0)--(u,0),pen0);
draw((0,0)--(a,b));

draw((0,u)--(a,b+u));
draw((0,u)--(u,u));
draw((u,0)--(u,u),pen0);

draw((u,u)--(u+a,u+b));
draw((a,b+u)--(u+a,u+b));
draw((u,0)--(u+a,b),pen0);

draw((a,b)--(a+u,b));
draw((a,b)--(a,b+u));
draw((a+u,b)--(a+u,b+u));

pair e1 = 1.3u*unit((a,b));
draw((a,b)--e1,Arrow);
label("$\mathbf e_1$",(a,b)--e1);

pair e2 = (0.9u,-0.1u);
draw((0,0)--e2,Arrow);
label("$\mathbf e_2$",0.6u*unit(e2)--e2);

pair e3 = (0.1u,1.2u);
draw((0,0)--e3,Arrow);
label("$\mathbf e_3$",0.6u*unit(e3)--e3);

real l1 = 0.1u;
path al3 = arc((0,0),l1*dir(e1),l1*dir(e2));
draw(al3);
label("$\alpha_3$",al3);

real l2 = 0.2u;
path al2 = arc((0,0),l2*dir(e1),l2*dir(e3));
draw(al2);
label("$\alpha_2$",al2);
*/
