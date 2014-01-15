import graph;
//import feynman;

real u = 70;

real f(real x) {return sin(x);}
//pair F(real x) {return (x,f(x));}

//drawPhoton(shift(1.5u,2.3u)*rotate(45)*((0,0)--(u,0)));

filldraw((0,0.5u)--(0,1.8u)--(3u,1.8u)--(3u,0.5u)--cycle,gray(0.8));
filldraw((0,1.8u)--(0,2.4u)--(u,2.4u)--(u,1.8u)--cycle,gray(0.5));
filldraw((u,2.4u)--(2u,2.4u)--(2u,1.8u)--(u,1.8u)--cycle,gray(0.5));
filldraw((2u,2.4u)--(3u,2.4u)--(3u,1.8u)--(2u,1.8u)--cycle,gray(0.5));

filldraw((0,2.4u)--(0,2.45u)--(3u,2.45u)--(3u,2.4u)--cycle,gray(0.8));
label("Bulk silicon",(0,1.15u)--(3u,1.15u));
draw((0,2u)--(u,2u),Arrows);
label(scale(0.7)*"$1$ pixel",(0,2u)--(u,2u),N);
label(scale(0.7)*"Depletion region",(2u,2u)--(3u,2u),N);

fill(shift(1.1u,2.3u)*unitcircle,white);
draw(shift(1.1u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.2u,2.3u)*unitcircle,white);
draw(shift(1.2u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.3u,2.3u)*unitcircle,white);
draw(shift(1.3u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.4u,2.3u)*unitcircle,white);
draw(shift(1.4u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.5u,2.3u)*unitcircle,white);
draw(shift(1.5u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.6u,2.3u)*unitcircle,white);
draw(shift(1.6u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.7u,2.3u)*unitcircle,white);
draw(shift(1.7u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.8u,2.3u)*unitcircle,white);
draw(shift(1.8u,2.3u)*((-0.5,0)--(0.5,0)));
fill(shift(1.9u,2.3u)*unitcircle,white);
draw(shift(1.9u,2.3u)*((-0.5,0)--(0.5,0)));

//drawPhoton(shift(1.5u,2.3u)*rotate(45)*((0,0)--(u,0)));
//draw(graph(f,a,-T(m),n)--graph(f,-m,-(m+n),n,T)--(0,f(0))--graph(f,m+n,m,n,T)--graph(f,T(m),b,n));

draw(shift(1.5u,2u)*rotate(75)*graph(f,0,u,operator ..));
fill(shift(1.55u,2u)*unitcircle,white);
draw(shift(1.55u,2u)*((-0.5,0)--(0.5,0)));
draw(shift(1.55u,2u)*((0,-0.5)--(0,0.5)));
fill(rotate(60,(1.5u,2u))*shift(1.55u,2u)*unitcircle,white);
draw(rotate(60,(1.5u,2u))*shift(1.55u,2u)*((-0.5,0)--(0.5,0)));
draw(rotate(60,(1.5u,2u))*shift(1.55u,2u)*((0,-0.5)--(0,0.5)));
fill(rotate(120,(1.5u,2u))*shift(1.55u,2u)*unitcircle,white);
draw(rotate(120,(1.5u,2u))*shift(1.55u,2u)*((-0.5,0)--(0.5,0)));
draw(rotate(120,(1.5u,2u))*shift(1.55u,2u)*((0,-0.5)--(0,0.5)));
fill(rotate(180,(1.5u,2u))*shift(1.55u,2u)*unitcircle,white);
draw(rotate(180,(1.5u,2u))*shift(1.55u,2u)*((-0.5,0)--(0.5,0)));
fill(rotate(240,(1.5u,2u))*shift(1.55u,2u)*unitcircle,white);
draw(rotate(240,(1.5u,2u))*shift(1.55u,2u)*((-0.5,0)--(0.5,0)));
fill(rotate(300,(1.5u,2u))*shift(1.55u,2u)*unitcircle,white);
draw(rotate(300,(1.5u,2u))*shift(1.55u,2u)*((-0.5,0)--(0.5,0)));
label(scale(0.7)*"Photon",shift(1.5u,2u)*(u*dir(75)),N);

draw((3u,2.7u)--(2u+21u/24.0,2.45u),Arrow);
draw((3u,2.7u)--(3.7u,2.7u));
label(scale(0.7)*"Polysilicon gate",(3u,2.7u)--(3.7u,2.7u),N);

draw((3.2u,2.2u)--(2u+21u/24.0,2.425u),Arrow);
draw((3.2u,2.2u)--(3.9u,2.2u));
label(scale(0.7)*"Oxide insulator",(3.2u,2.2u)--(3.9u,2.2u),N);

currentpen = linewidth(2);
draw((u/12.0,2.45u)--(3u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((u/6.0,2.45u)--(u/6.0,2.55u));
currentpen = linewidth(2);
draw((5u/12.0,2.45u)--(7u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((u/2.0,2.45u)--(u/2.0,2.55u));
currentpen = linewidth(2);
draw((3u/4.0,2.45u)--(11u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((5u/6.0,2.45u)--(5u/6.0,2.55u));

currentpen = linewidth(2);
draw((u+u/12.0,2.45u)--(u+3u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((u+u/6.0,2.45u)--(u+u/6.0,2.55u));
currentpen = linewidth(2);
draw((u+5u/12.0,2.45u)--(u+7u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((u+u/2.0,2.45u)--(u+u/2.0,2.55u));
currentpen = linewidth(2);
draw((u+3u/4.0,2.45u)--(u+11u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((u+5u/6.0,2.45u)--(u+5u/6.0,2.55u));

currentpen = linewidth(2);
draw((2u+u/12.0,2.45u)--(2u+3u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((2u+u/6.0,2.45u)--(2u+u/6.0,2.55u));
currentpen = linewidth(2);
draw((2u+5u/12.0,2.45u)--(2u+7u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((2u+u/2.0,2.45u)--(2u+u/2.0,2.55u));
currentpen = linewidth(2);
draw((2u+3u/4.0,2.45u)--(2u+11u/12.0,2.45u));
currentpen = linewidth(1.1);
draw((2u+5u/6.0,2.45u)--(2u+5u/6.0,2.55u));
