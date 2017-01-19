#version 330 core
out vec4 color;

in vec2 TexCoord;

uniform sampler2D ourTexture;

void main()
{
   //color = vec4(1.0f, 0.1f, 0.1f, 1.0f);
   color = texture(ourTexture, TexCoord);
}
