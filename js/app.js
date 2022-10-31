// Colores dinámicos
var obtenerColor = function (url){
    try{
      var _contentPath = null;
      var env = contentstack.config._config.environment;
      if(env == 'development' || env == "local"){
        _contentPath =  path.join(process.cwd(),"/_content/en-us", decodeURI(url));
      } else {
        _contentPath =  path.join(process.cwd(),"/../_content/en-us", decodeURI(url));
      }
      var image  = fs.readFileSync(_contentPath);
      var rgb    = colorThief.getColor(image);
      return "rgb(" + rgb[0] + "," + rgb[1] + "," + rgb[2] + ")";
    } catch(e) {
      console.error(e);
    }
}