import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:chulada_form_page/questions/male/qf16.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class QuestionFemale155 extends StatefulWidget {
  const QuestionFemale155({super.key});

  @override
  State<QuestionFemale155> createState() => _QuestionFemale155State();
}

class _QuestionFemale155State extends State<QuestionFemale155> {
  Color opcionSeleccionado1 = Colors.white;
  Color opcionSeleccionado2 = Colors.white;
  Color opcionSeleccionado3 = Colors.white;
  Color opcionSeleccionado4 = Colors.white;
  Color opcionSeleccionado5 = Colors.white;
  Color opcionSeleccionado6 = Colors.white;
  Color colorTexto = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/chulada.png',
                        scale: 3,
                      ),
                      Text(
                      textAlign: TextAlign.center,
                        '¿Qué esperas de CHULAD@?',
                        style: GoogleFonts.robotoSlab(
                          fontSize: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        alignment: WrapAlignment.center,
                        children: [
                          BotonWidget1(),
                          const SizedBox(height: 50),
                          BotonWidget2(),
                          const SizedBox(height: 50),
                          BotonWidget3(),
                          const SizedBox(height: 50),
                          BotonWidget4(),
                          const SizedBox(height: 50),
                          BotonWidget5(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonWidget1() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado1 = Colors.indigo.shade500;
            colorTexto = Colors.white;
          });
        } else {
          setState(() {
            opcionSeleccionado1 = Colors.white;
            colorTexto = Colors.black;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale166(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(400, 100),
        backgroundColor: opcionSeleccionado1,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AutoSizeText(
          textAlign: TextAlign.center,
          maxLines: 3,
          "1. Prendas atemporales para crear fondo de armario.",
          style: GoogleFonts.robotoSlab(
              fontStyle: FontStyle.normal, color: colorTexto, fontSize: 25),
        ),
      ),
    );
  }

  ElevatedButton BotonWidget2() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado2 = Colors.indigo.shade500;
            colorTexto = Colors.white;
          });
        } else {
          setState(() {
            opcionSeleccionado2 = Colors.white;
            colorTexto = Colors.black;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale166(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(400, 100),
        backgroundColor: opcionSeleccionado2,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AutoSizeText(
          textAlign: TextAlign.center,
          maxLines: 3,
          "2. Sobre todo básicos y de vez en cuando alguna prenda más especial.",
          style: GoogleFonts.robotoSlab(
              fontStyle: FontStyle.normal, color: colorTexto, fontSize: 25),
        ),
      ),
    );
  }

  ElevatedButton BotonWidget3() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado3 = Colors.indigo.shade500;
            colorTexto = Colors.white;
          });
        } else {
          setState(() {
            opcionSeleccionado3 = Colors.white;
            colorTexto = Colors.black;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale166(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(400, 100),
        backgroundColor: opcionSeleccionado3,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AutoSizeText(
          textAlign: TextAlign.center,
          maxLines: 3,
          "3. Prendas actuales y “con toque” que refresquen mi estilo personal.",
          style: GoogleFonts.robotoSlab(
              fontStyle: FontStyle.normal, color: colorTexto, fontSize: 25),
        ),
      ),
    );
  }

  ElevatedButton BotonWidget4() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado4 = Colors.indigo.shade500;
            colorTexto = Colors.white;
          });
        } else {
          setState(() {
            opcionSeleccionado4 = Colors.white;
            colorTexto = Colors.black;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale166(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(400, 100),
        backgroundColor: opcionSeleccionado4,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AutoSizeText(
          textAlign: TextAlign.center,
          maxLines: 3,
          "4. Descubrir marcas y tendencias que encajen conmigo.",
          style: GoogleFonts.robotoSlab(
              fontStyle: FontStyle.normal, color: colorTexto, fontSize: 25),
        ),
      ),
    );
  }

  ElevatedButton BotonWidget5() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado5 = Colors.indigo.shade500;
            colorTexto = Colors.white;
          });
        } else {
          setState(() {
            opcionSeleccionado5 = Colors.white;
            colorTexto = Colors.black;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale166(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(400, 100),
        backgroundColor: opcionSeleccionado5,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AutoSizeText(
          textAlign: TextAlign.center,
          maxLines: 3,
          "5. Novedades. Disfruto experimentando con nuevas posibilidades de estilo.",
          style: GoogleFonts.robotoSlab(
              fontStyle: FontStyle.normal, color: colorTexto, fontSize: 25),
        ),
      ),
    );
  }
}
