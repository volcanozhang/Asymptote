import three;
import graph3;

real u = 5;

currentprojection=orthographic(-1,0.3,0.3);
size(80u,80u);

axes3(Label("$x$",EndPoint,N), Label("$y$"), Label("$z$"), (0,0,0), (4u,4u,4u), Arrow3);

//draw((0,-2u,0)--(0,0,0),Arrow3);
arrow("Incident beam",O,-Y,7u,Arrow3,NoMargin3);

path3 g = (-20u,-20u,30u)--(20u,-20u,30u)--(20u,20u,30u)--(-20u,20u,30u)--cycle;

triple pedal = (1u,3u,30u);
dot(pedal);
draw(O--pedal,Dotted());
label("$D$",O--pedal);
draw(4u*Z--10u*Z,linetype(new real[] {8,8}));
draw(arc(O,8u*Z,8u*unit(pedal)));
label("$\beta$",arc(O,8u*Z,8u*unit(pedal)));
real bet = colatitude(pedal);
//path3 temp = shift(-pedal)*g;
path3 g_bet = shift(pedal)*rotate(bet,unit(cross(Z,unit(pedal))))*shift(-pedal)*g;

real gam = 7;
path3 g_bet_gam = shift(pedal)*rotate(gam,unit(pedal))*shift(-pedal)*g_bet;

//draw(g, linetype(new real[] {8,8}));
//label(Label("Position 1",MidPoint), g, Relative(N));
draw(g_bet, linetype(new real[] {24,8,0,8}));
label(Label("0",MidPoint), g_bet, Relative(N));
draw(g_bet_gam);
label(Label("1",MidPoint), g_bet_gam, Relative(S));

draw(pedal--(pedal+10u*unit(pedal)),Arrow3);

path3 rot = shift(pedal+8u*unit(pedal))*rotate(bet,unit(cross(Z,unit(pedal))))*arc(O,2u,90,0,90,170,CW);
draw(rot,BeginArrow3);
label("$\gamma$",rot,E);

triple A0 = relpoint(g_bet_gam,0.5);
triple A1 = relpoint(g_bet_gam,0.25);
triple A2 = relpoint(g_bet_gam,0.75);

real Yc = dot(pedal-A0,unit(A1-A0));
real Xc = dot(pedal-A0,unit(A2-A0));

draw(pedal--(A0+Yc*unit(A1-A0)),linetype(new real[] {8,8}));
draw(pedal--(A0+Xc*unit(A2-A0)),linetype(new real[] {8,8}));

//real tm = dot(unit(A1-A0),A0+Yc*unit(A1-A0)-pedal);
label("$X_{\mbox c}$",pedal--(A0+Yc*unit(A1-A0)));
label("$Y_{\mbox c}$",pedal--(A0+Yc*unit(A2-A0)));

draw(rotate(-50,X)*box((-2u,2u,-2u),(2u,0,2u)));
for(int i=1; i < 5; ++i){
   draw(rotate(-50,X)*((-2u+i*0.8u,2u,-2u)--(-2u+i*0.8u,0,-2u)--(-2u+i*0.8u,0,2u)--(-2u+i*0.8u,2u,2u)--cycle));
}
for(int i=1; i < 5; ++i){
   draw(rotate(-50,X)*((-2u,i*0.4u,-2u)--(-2u,i*0.4u,2u)--(2u,i*0.4u,2u)--(2u,i*0.4u,-2u)--cycle));
}
for(int i=1; i < 5; ++i){
   draw(rotate(-50,X)*((-2u,2u,-2u+i*0.8u)--(-2u,0,-2u+i*0.8u)--(2u,0,-2u+i*0.8u)--(2u,2u,-2u+i*0.8u)--cycle));
}
