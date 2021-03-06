uniform mat4 transform;
uniform mat3 normalMatrix;
uniform vec3 lightNormal;

attribute vec4 vertex;
attribute vec4 color;
attribute vec3 normal;

attribute vec2 texCoord;

varying vec4 vertColor;
varying vec4 vertTexCoord;

varying vec3 vertNormal;
varying vec3 vertLightDir;
varying vec4 pos;

void main() {
  gl_Position = transform * vertex;  
  vertColor = color;
  vertTexCoord = vec4(texCoord, 1.0, 1.0);
  vertNormal = normalize(normalMatrix * normal);
  vertLightDir = -lightNormal;
  pos = transform * vertex;
}