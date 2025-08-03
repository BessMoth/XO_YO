shader_type canvas_item;

uniform sampler2D image : repeat_enable, filter_linear_mipmap;
uniform vec3 bg_color : source_color;
uniform vec3 pattern_color : source_color;
uniform float scale = 2.0;
uniform float ratio = 1.0;
uniform float rotation_angle: hint_range(-6.0, 6.0) = 1;
void fragment() {
	COLOR.rgb = mix(pattern_color, bg_color, texture(image, UV * vec2(1.0 , ratio) * scale + TIME * 0.025).x);
}