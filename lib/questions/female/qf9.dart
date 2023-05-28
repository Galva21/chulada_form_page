import 'dart:ui';

import 'package:chulada_form_page/questions/female/qf10.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class QuestionFemale9 extends StatefulWidget {
  const QuestionFemale9({super.key});

  @override
  State<QuestionFemale9> createState() => _QuestionFemale9State();
}

class _QuestionFemale9State extends State<QuestionFemale9> {
  Color opcionSeleccionado1 = Colors.white;
  Color opcionSeleccionado2 = Colors.white;
  Color opcionSeleccionado3 = Colors.white;
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
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/chulada.png',
                      scale: 3,
                    ),
                    Text(
                      '¿Qué te gustaría destacar?',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      'Piernas',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 25,
                        color: Colors.indigo
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      children: [
                        BotonWidget1(),
                        const SizedBox(height: 50),
                        BotonWidget2(),
                        const SizedBox(height: 50),
                        BotonWidget3(),
                      ],
                    )
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
            child: QuestionFemale10(),
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
      child: Column(
        children: [
          Text(
            "NO",
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
            child: QuestionFemale10(),
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
      child: Column(
        children: [
          Text(
            "INDEFERENTE",
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
            child: QuestionFemale10(),
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
      child: Column(
        children: [
          Text(
            "DESTACAR",
            style: GoogleFonts.robotoSlab(
                fontSize: 25, fontStyle: FontStyle.normal, color: colorTexto),
          ),
        ],
      ),
    );
  }
}
