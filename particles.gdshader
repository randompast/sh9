shader_type particles;


void start() {
	float idx = float(INDEX)/10.0;
	float y = idx * 0.5;
	float r = 2.0;
	float c = r * cos(idx);
	float s = r * sin(idx);
//	TRANSFORM[3].xyzw = TRANSFORM * vec4(vec3(c,y,s),1.0);/
//	vec4(r*cos(idx), y, r*sin(idx), 1.0);
//	float scale = mix( 0.4, 1, sin(s*1000.0) );
//	TRANSFORM[0].xyz *= vec3(scale);
}

void process() {
	float idx = float(INDEX)/400.0;
	float r = 5.0;
	float y = idx * 2.0;
	float rx = cos(idx);
	float ry = sin(idx);
	mat2 m = mat2(vec2(rx, -ry), vec2(ry, rx));
//	TRANSFORM[3].xz = m * TRANSFORM[3].xz;/
//	TRANSFORM[0].y = TIME/100.0;
//	TRANSFORM[3].xz += vec2(rx, ry);
//	VERTEX
}
