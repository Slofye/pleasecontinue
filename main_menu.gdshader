
shader_type canvas_item;

uniform float pixel_size : hint_range(1.0, 40.0) = 8.0;

void fragment() {
    vec2 texture_size = 1.0 / TEXTURE_PIXEL_SIZE;

    vec2 pixel_uv = floor(
        UV * texture_size / pixel_size
    ) * pixel_size / texture_size;

    COLOR = texture(TEXTURE, pixel_uv);
}
