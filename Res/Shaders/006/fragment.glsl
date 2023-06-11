#version 330 core 

out vec4 FragColor;

in vec3 vColor;
in vec2 vTexCoord;

uniform float uOffset;
uniform sampler2D uMainTex;
uniform sampler2D uAddTex;

void main(){
    FragColor = mix(texture(uMainTex, vTexCoord), texture(uAddTex, vec2(-vTexCoord.x, vTexCoord.y)), uOffset);
}