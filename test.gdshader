//https://www.youtube.com/watch?v=cJfbT1E4dkg&ab_channel=TinyLegions
shader_type spatial;
render_mode unshaded;

uniform sampler2D sky_gradient;
uniform float diameter = 100;
uniform float band_size = 0.1;
uniform float interpolation_value = 0.5;

float dfs(vec3 p){
	float radius = diameter/2.0;
	float dist = mix(interpolation_value - band_size/2.0, interpolation_value + band_size/2.0, 1.0 + p.z/radius);
	return dist;
}	

void fragment(){
	vec4 wfp = VIEW_MATRIX * vec4(VERTEX,1.0);
	
	float dist = dfs(wfp.xyz);
	
	vec3 sc = texture(sky_gradient, vec2(0,0)).rgb;
	vec3 wn = NORMAL * mat3(INV_VIEW_MATRIX);
	ALBEDO = sc;
	if (wn.y < 0.0){
		ALBEDO = sc- vec3(0.04);
	}
}