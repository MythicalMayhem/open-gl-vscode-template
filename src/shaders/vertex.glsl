#version 330 core
layout(location=0)in vec3 aPos;
layout(location=1)in vec3 aColor;
layout(location=2)in vec2 aTexCoord;

uniform float xoffset;

out vec4 vertexColor;
out vec2 TexCoord;

void main()
{
   gl_Position=vec4(aPos.x+xoffset,aPos.y,aPos.z,1.);
   vertexColor=vec4(aColor,1.); 
   TexCoord=aTexCoord;
};