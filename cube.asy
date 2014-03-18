import three;

currentprojection=orthographic(65,-20,-20,center=true);
//currentprojection=orthographic(65,50,-20,center=true);

size(5cm);
size3(3cm,5cm,8cm);

triple dis = (0,-2,0);

draw(unitbox);
draw(shift(dis)*unitbox);

triple O = (1,0,0);
//label("$O$",O,NW);

triple e1 = (-1,0,0);
draw(O--O+1.5*e1,Arrow3);
label("$\mathbf a_1$",O+1.2*e1--O+1.5*e1);

triple e2 = unit((-0.5,1,0));
draw(O--O+0.8*e2,Arrow3);
label("$\mathbf a_2$",O+0.5*e2--O+0.8*e2);

triple e3 = unit((-0.2,0.2,1));
draw(O--O+1.4*e3,Arrow3);
label("$\mathbf a_3$",O+1.1*e3--O+1.4*e3);

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
label("$\mathbf e_2$",O0--O0+(0,1,0),N);

draw(O0--O0+(0,0,1),Arrow3);
label("$\mathbf e_3$",O0--O0+(0,0,1),E);

draw(O0--O0+(-1,0,0),Arrow3);
label("$\mathbf e_1$",O0+(-1,0,0),E);

draw(O0+(-0.1,0,0)--O0+(-0.1,0.1,0));
draw(O0+(0,0.1,0)--O0+(-0.1,0.1,0));

draw(O0+(0,0,0.1)--O0+(0,0.1,0.1));
draw(O0+(0,0.1,0.1)--O0+(0,0.1,0));

draw(O0+(0,0,0.1)--O0+(-0.1,0,0.1));
draw(O0+(-0.1,0,0.1)--O0+(-0.1,0,0));

triple ori = (0,-3.5,-2);
//transform T = shift(ori)*rotate(30,(0,1,0));
draw(shift(ori)*rotate(30,(0,1,0))*unitbox);

draw(shift(ori)*rotate(30,(0,1,0))*(O--O+(0,1,0)),Arrow3);
label("$\mathbf e_1$",shift(ori)*rotate(30,(0,1,0))*(O--O+(0,1,0)),S);

draw(shift(ori)*rotate(30,(0,1,0))*(O--O+(0,0,1)),Arrow3);
label("$\mathbf e_3$",shift(ori)*rotate(30,(0,1,0))*(O--O+(0,0,1)),E);

draw(shift(ori)*rotate(30,(0,1,0))*(O--O+(-1,0,0)),Arrow3);
label("$\mathbf e_2$",shift(ori)*rotate(30,(0,1,0))*(O--O+(-1,0,0)),W);

draw(shift(ori)*rotate(30,(0,1,0))*(O+(-0.1,0,0)--O+(-0.1,0.1,0)));
draw(shift(ori)*rotate(30,(0,1,0))*(O+(0,0.1,0)--O+(-0.1,0.1,0)));

draw(shift(ori)*rotate(30,(0,1,0))*(O+(0,0,0.1)--O+(0,0.1,0.1)));
draw(shift(ori)*rotate(30,(0,1,0))*(O+(0,0.1,0.1)--O+(0,0.1,0)));

draw(shift(ori)*rotate(30,(0,1,0))*(O+(0,0,0.1)--O+(-0.1,0,0.1)));
draw(shift(ori)*rotate(30,(0,1,0))*(O+(-0.1,0,0.1)--O+(-0.1,0,0)));
