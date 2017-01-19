
#version 330 core
layout (location = 0) in vec4 vertex; // <vec2 pos, vec2 tex>
out vec2 TexCoords;

uniform mat4 projection = mat4(
      1, 0, 0, 0,
      0, 1, 0, 0,
      0, 0, 1, 0,
      0, 0, 0, 1
      );

void main()
{
   //gl_Position = vec4(vertex.x, vertex.y, 0.0, 1.0);
   gl_Position = projection * vec4(vertex.xy, 0.0, 1.0);
   TexCoords = vertex.zw;
}  
