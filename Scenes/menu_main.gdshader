//shader_type canvas_item;
//#define M(p) p *= mat2(cos(round((atan(p.x,p.y)+k)/.3)*.3-k + vec4(0,33,11,0))),//
//#define L length(p)//
//
//void fragment() {
	//vec2 Resolution = 1.0 / SCREEN_PIXEL_SIZE;
	////vec3  p, R = Resolution;
    //float t, k = TIME*.2;
    //
    //for (O *= t; 
         //O.a++ < 30.; 
         //O += (1. + cos(k+k+t+vec4(0,1,2,0))) / 2e2 / L
    //) 
         //p = R - vec3(F+F, R.y),
         //p = t/L*p - 3./R,
         //M(p.zx) M(p.yx)
         //p.x -= 2., t -= L - .1; 
//}
////void main(out vec4 O, vec2 F) {   
    ////vec3  p, R = Resolution;
    ////float t, k = iTime*.2;
    ////
    ////for (O *= t; 
         ////O.a++ < 30.; 
         ////O += (1. + cos(k+k+t+vec4(0,1,2,0))) / 2e2 / L
    ////) 
         ////p = R - vec3(F+F, R.y),
         ////p = t/L*p - 3./R,
         ////M(p.zx) M(p.yx)
         ////p.x -= 2., t -= L - .1;      
////}