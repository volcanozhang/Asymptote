import graph;

real u = 7;
real ang = 40;
real sca = 0.2;
//size(10u,10u);
real len = 10u;
draw((0,0.5len)--(0,-0.5len));

real m2 = 1u;
draw((0,0.5len)--(m2,0.5len));
draw((0,-0.5len)--(m2,-0.5len));
draw((m2,0.5len)--(m2,-0.5len));

label("$\overline m_2$", (0,-0.5len)--(m2,-0.5len), S);
label(scale(sca)*"Phosphor Converter", (0,0.5len)--(m2,0.5len),N);

real m3 = 8u;
draw((m2,0.5len){right}::(m2+0.5m3,0.35len)::(m2+m3,0.2len){right});
draw((m2,-0.5len){right}::(m2+0.5m3,-0.35len)::(m2+m3,-0.2len){right});
label(scale(sca)*"Fiber-optic taper", (m2,0.5len)--(m2+m3,0.5len), N);
label("$\overline m_3$", (m2,-0.5len)--(m2+m3,-0.5len), S);

real m4 = 1.5u;
draw((m2+m3,0.25len)--(m2+m3,-0.25len));
draw((m2+m3+m4,0.25len)--(m2+m3+m4,-0.25len));
draw((m2+m3,0.25len)--(m2+m3+m4,0.25len));
draw((m2+m3,-0.25len)--(m2+m3+m4,-0.25len));
label(scale(sca)*"CCD chips", (m2+m3,0.5len)--(m2+m3+m4,0.5len), N);
label("$\overline m_4$", (m2+m3,-0.5len)--(m2+m3+m4,-0.5len), S);

real l = 3u;
draw((m2+m3+m4,0)--(m2+m3+m4+l,0));

real con = 1.5u;
draw((m2+m3+m4+l,0.1len)--(m2+m3+m4+l,-0.1len));
draw((m2+m3+m4+l+con,0.1len)--(m2+m3+m4+l+con,-0.1len));
draw((m2+m3+m4+l,0.1len)--(m2+m3+m4+l+con,0.1len));
draw((m2+m3+m4+l,-0.1len)--(m2+m3+m4+l+con,-0.1len));
label(scale(sca)*"A/D Converter", (m2+m3+m4+l,0.5len)--(m2+m3+m4+l+con,0.5len), N);

label(scale(sca)*"Incident X-ray photons", (-6m2,0.5len)--(0,0.5len), N);
label("$\overline m_0\overline m_1$", (0,-0.5len)--(-6m2,-0.5len), S);
draw((-6m2,-0.3len)--(0,-0.3len),Arrow);
draw((-6m2,-0.15len)--(0,-0.15len),Arrow);
draw((-6m2,0)--(0,0),Arrow);
draw((-6m2,0.3len)--(0,0.3len),Arrow);
draw((-6m2,0.15len)--(0,0.15len),Arrow);
