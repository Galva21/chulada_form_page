import 'dart:ui';

import 'package:chulada_form_page/questions/male/qf15.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class QuestionFemale144 extends StatefulWidget {
  const QuestionFemale144({super.key});

  @override
  State<QuestionFemale144> createState() => _QuestionFemale144State();
}

class _QuestionFemale144State extends State<QuestionFemale144> {
  Color opcionSeleccionado1 = Colors.white;
  Color opcionSeleccionado2 = Colors.white;
  Color opcionSeleccionado3 = Colors.white;
  Color opcionSeleccionado4 = Colors.white;
  Color opcionSeleccionado5 = Colors.white;
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
                      '¿En qué quieres que se centre CHULAD@?',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      'Noche',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 25,
                        color: Colors.deepPurple
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Wrap(
                      alignment: WrapAlignment.center,
                      direction: Axis.vertical,
                      children: [
                        Column(
                          children: [
                            BotonWidget1(),
                            const SizedBox(height: 20),
                            Text(
                              'Nada',
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 35, color: Colors.black),
                            ),
                          ],
                        ),
                        const SizedBox(width: 40),
                        BotonWidget2(),
                        const SizedBox(width: 40),
                        BotonWidget3(),
                        const SizedBox(width: 40),
                        BotonWidget4(),
                        const SizedBox(width: 40),
                        Column(
                          children: [
                            BotonWidget5(),
                            const SizedBox(height: 20),
                            Text(
                              'Mucho',
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 35, color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
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
            opcionSeleccionado1 = Colors.deepPurple.shade500;
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
            child: QuestionFemale155(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 150),
        backgroundColor: opcionSeleccionado1,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Column(
        children: [
          Text(
            "1",
            style: GoogleFonts.robotoSlab(
                fontSize: 25, fontStyle: FontStyle.normal, color: colorTexto),
          ),
        ],
      ),
    );
  }

  ElevatedButton BotonWidget2() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado2 = Colors.deepPurple.shade500;
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
            child: QuestionFemale155(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 150),
        backgroundColor: opcionSeleccionado2,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Column(
        children: [
          Text(
            "2",
            style: GoogleFonts.robotoSlab(
                fontSize: 25, fontStyle: FontStyle.normal, color: colorTexto),
          ),
        ],
      ),
    );
  }

  ElevatedButton BotonWidget3() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado3 = Colors.deepPurple.shade500;
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
            child: QuestionFemale155(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 150),
        backgroundColor: opcionSeleccionado3,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Column(
        children: [
          Text(
            "3",
            style: GoogleFonts.robotoSlab(
                fontSize: 25, fontStyle: FontStyle.normal, color: colorTexto),
          ),
        ],
      ),
    );
  }

  ElevatedButton BotonWidget4() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado4 = Colors.deepPurple.shade500;
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
            child: QuestionFemale155(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 150),
        backgroundColor: opcionSeleccionado4,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Column(
        children: [
          Text(
            "4",
            style: GoogleFonts.robotoSlab(
                fontSize: 25, fontStyle: FontStyle.normal, color: colorTexto),
          ),
        ],
      ),
    );
  }

  ElevatedButton BotonWidget5() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            opcionSeleccionado5 = Colors.deepPurple.shade500;
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
            child: QuestionFemale155(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 150),
        backgroundColor: opcionSeleccionado5,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Column(
        children: [
          Text(
            "5",
            style: GoogleFonts.robotoSlab(
                fontSize: 25, fontStyle: FontStyle.normal, color: colorTexto),
          ),
        ],
      ),
    );
  }
}
