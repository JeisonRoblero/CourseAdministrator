// Colores dinámicos
function obtenerColor(imagen) {
  // Se dibuja el objeto en un canvas de HTML5
  canvas = document.createElement('canvas');
  ctx = canvas.getContext("2d");
  canvas.width = imagen.width;
  canvas.height = imagen.height;
  ctx.drawImage(imagen, 0, 0);

  // Se recorre cada pixel y se obtiene su valor RGB. Cada valor R, G y B se suma
  imageData = ctx.getImageData(0, 0, imagen.width, imagen.height).data;
  data = imageData.data;
  for(i = 0, n = data.length; i < n; i += 4) {
    ++count;
    r += data[i];
    g += data[i+1];
    b += data[i+2];
  }

  // Se divide cada valor R, G y B entre la cantidad total de pixeles y redondeamos el resultado
  r = ~~(r/count);
  g = ~~(g/count);
  b = ~~(b/count);

  // Se obtiene el valor promedio del RGB de la imagen
  return [r, g, b];
}

function colorDinamico(imagen, nomClase) {
  // Se crea una imagen, esta puede ser en cualquier formato o un Data URI
  var color_promedio;
  var image = new Image();
  image.src = imagen;
  image.onload = function() {
    color_promedio = obtenerColor(image);
  }

  console.log(color_promedio);

  const r = color_promedio[0];
  const g = color_promedio[1];
  const b = color_promedio[2];

  const clase = document.querySelector(nomClase);
  clase.style.backgroundColor = `rgb(${r},${g},${b})`;

}
