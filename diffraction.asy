import graph;

real u = 5;
real ang = 40;
//size(10u,10u);

for (int i=0; i<5; ++i){
    draw(rotate(-ang)*((-3u,-0.5u*i)--(3u,-0.5u*i)));
}

real len = 20u;
path g = (len,0)--(0,0);
draw(g,Arrow);
label("$\mathbf k_{\textrm i}$", g);

path h = rotate(-2ang)*shift(-len)*g;
draw(h,Arrow);
label("$\mathbf k_{\textrm f}$", h);

draw(rotate(-40)*((u,0)--(5u,0)),linetype(new real[] {8,8}));
draw(rotate(-40)*((-u,0)--(-5u,0)),linetype(new real[] {8,8}));

path curi = (3u,0){down}..{dir(-130)}3u*dir(-40);
draw(curi);
label("$\theta$",curi,E);

path curf = rotate(140)*((3u,0){down}..{dir(-130)}3u*dir(-40));
draw(curf);
label("$\theta$",curf,NW);

pair end = (len,0)+len*dir(-180-2ang);
draw((len,0)--end,linetype(new real[] {8,8}));
draw(end--(end-(len,0)),linetype(new real[] {8,8}));
draw((0,0)--end,Arrow);
label("$\mathbf q$",(0,0)--end);
