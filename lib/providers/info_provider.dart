import 'package:flutter/material.dart';

class InfoProvider with ChangeNotifier {
  int _seleccionFinal = 1;
  String _textoMostrarr = "Debes aportar volumen a la zona de la cadera. Apuesta por estampados de cualquier tipo, excepto por las rayas verticales. Tampoco te favorece la ropa muy estrecha. Opta por pantalones de pinzas o pata de “elefante”, vestidos plisados o de cinturilla con largo midi y bastante vuelo. También te favorecerán los de corte imperio.  Importante subirte a unos buenos tacones para estilizar la figura. En la parte de arriba, viste tonos oscuros y escotes redondos o largos para disminuir visualmente el ancho de los hombros. ";

  int _seleccionFinall = 1;
  String _textoMostrar = "Debes aportar volumen a la zona de la cadera. Apuesta por estampados de cualquier tipo, excepto por las rayas verticales. Tampoco te favorece la ropa muy estrecha. Opta por pantalones de pinzas o pata de “elefante”, vestidos plisados o de cinturilla con largo midi y bastante vuelo. También te favorecerán los de corte imperio.  Importante subirte a unos buenos tacones para estilizar la figura. En la parte de arriba, viste tonos oscuros y escotes redondos o largos para disminuir visualmente el ancho de los hombros. ";

  String urlImagen = "https://i.postimg.cc/3rFJVd56/triangulo.jpg";

  String get textoMostrar => this._textoMostrar;
  String get textoMostrarr => this._textoMostrarr;

  int get seleccionFinal => this._seleccionFinal;
  int get seleccionFinall => this._seleccionFinall;

  set seleccionFinal(int value) {
    this._seleccionFinal = value;
    switch (value) {
      case 1:
        _textoMostrar =
            "Lo ideal es centrarse en la parte de los hombros para conseguir que visualmente sean más anchos. Lo conseguirás con escotes tipo barco o en pico, mangas fruncidas, hombreras, chaquetas cortas y estampados. Junto con estas prendas, debes jugar a enfatizar la cintura con vestidos en forma de campana (con algo de vuelo) y pantalones anchos en tonos lisos.";
            urlImagen = "https://i.postimg.cc/3rFJVd56/triangulo.jpg";
        break;
      case 2:
        _textoMostrar =
            "Debes aportar volumen a la zona de la cadera. Apuesta por estampados de cualquier tipo, excepto por las rayas verticales. Tampoco te favorece la ropa muy estrecha. Opta por pantalones de pinzas o pata de “elefante”, vestidos plisados o de cinturilla con largo midi y bastante vuelo. También te favorecerán los de corte imperio.  Importante subirte a unos buenos tacones para estilizar la figura. En la parte de arriba, viste tonos oscuros y escotes redondos o largos para disminuir visualmente el ancho de los hombros. ";
            urlImagen = "https://i.postimg.cc/fyCz9gfZ/triangulo-invertido.jpg";
        break;
      case 3:
        _textoMostrar =
            "Debes huir de las prendas tanto muy ceñidas como oversize. En cuanto a tipo de escotes, los que más te favorecerán son los de pico. También debes dejar de lado los estampados, mejor todo liso. Respecto a los pantalones, las mejores opciones son rectos o de campana. Y si adoras los vestidos, los más favorecedores son los de corte imperio o con cinturón que se ciñan entre el bajo del pecho y la cintura. Las magas ¾ estilizarán mucho tu figura y tus brazos.";
            urlImagen = "https://i.postimg.cc/yxs6Wz9v/oval.jpg";
        break;
      case 4:
        _textoMostrar =
            "Debes acentuar tu cintura, ya sea con pantalones altos y cinturón, vestidos entallados en esta zona y forma de campana de largo midi, chaquetas cortas, escotes en pico…";
            urlImagen = "https://i.postimg.cc/7YPYkwqL/rectangular.jpg";
        break;
      case 5:
        _textoMostrar =
            "Lo ideal es enfatizar una de las zonas de tu cuerpo. Si optas por vestidos, te sentarán de maravilla tanto largos como cortos, pero sin demasiado vuelo. También serán un acierto las faldas tipo lápiz. Las camisetas y blusas serán perfectas si tienen escote redondo o en pico. También los pantalones skinny y camisetas y blusas holgadas, pero nunca que sean oversize. ";
            urlImagen = "https://i.postimg.cc/fLxTwb3V/reloj-arena.jpg";
        break;
      case 6:
        _textoMostrar =
            "Debes optar por vestidos y faldas mini o ceñidos a la cintura y de corte princesa, pantalones de corte recto o cigarette en tonos oscuros, y prendas de arriba que destaquen los hombros y marquen la cintura.";
            urlImagen = "https://i.postimg.cc/mr1g5jBN/diamante.jpg";
        break;
    }
  }

  set seleccionFinall(int value) {
    this._seleccionFinall = value;
    switch (value) {
      case 1:
        _textoMostrarr =
            "Debes buscar chaquetas muy estructuradas para aportar volumen, el largo de las mangas debe cubrir bien los brazos, pero sin sobrepasar las muñecas ya que entonces los brazos se alargarán visualmente demasiado., busca pantalones rectos que den cierto volumen a las piernas, sin exagerar o conseguirás el efecto opuesto, evita pantalones pitillo que acentúen tu delgadez, evita vestir de pies a cabeza de un solo color y juega con los volúmenes y añade capas.";
            urlImagen = "https://i.postimg.cc/sDC79BPN/d1.jpg";
        break;
      case 2:
        _textoMostrarr =
            "Debes crear equilibrio entre tu parte más y ancha y la más estrecha para proporcionar tu figura empieza a mezclar colores sin problema, evita partes de arriba muy ajustadas, añade volumen en la parte inferior y los cuellos en pico te favorecen.";
            urlImagen = "https://i.postimg.cc/PrbZ6t2r/d2.jpg";
        break;
      case 3:
        _textoMostrarr =
            "Debes evitar llevar muchas capas ya que añadirán volumen innecesario, es necesario que busques chaquetas rectas, bolsillos escondidos sin tapas o con tapas muy finas, en pantalones busca bolsillos oblicuos ya que alargan la figura, no mezcles demasiado colores vestir de un solo color alargará tu figura, no lleves estampados, adornos ni ningún detalle que llame la atención, ponte pantalones de tiro alto, busca tejidos ligeros ya que te aportarán mayor esbeltez a tu cuerpo ,encuentra tu talla y la ropa muy floja no disimula sino que por el contrario, aporta más volumen.";
            urlImagen = "https://i.postimg.cc/FH9S82Bb/d3.jpg";
        break;
    }
  }
}
