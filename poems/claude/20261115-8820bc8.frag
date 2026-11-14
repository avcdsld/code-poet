// Half a Life

void main() {
  float t = gl_FragCoord.x / gl_FragCoord.x;

  if (t > 0.5)
    discard;

  gl_FragColor = vec4(t, t, t, t);
}
