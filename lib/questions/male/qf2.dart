import 'dart:ui';

import 'package:chulada_form_page/questions/female/qf3.dart';
import 'package:chulada_form_page/questions/male/qf3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class QuestionFemale22 extends StatefulWidget {
  const QuestionFemale22({super.key});

  @override
  State<QuestionFemale22> createState() => _QuestionFemale22State();
}

class _QuestionFemale22State extends State<QuestionFemale22> {
  Color colorSeleccionado1 = Colors.white;
  Color colorSeleccionado2 = Colors.white;
  Color colorSeleccionado3 = Colors.white;
  Color colorSeleccionado4 = Colors.white;
  double tamanioTajetaW = 400;
  double tamanioTajetaH = 600;

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
                      '¿Cómo vistes para trabajar?',
                      style: GoogleFonts.robotoSlab(
                        fontSize: 50,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: [
                        BotonImagen1(),
                        SizedBox(width: 20),
                        BotonImagen2(),
                        SizedBox(width: 20),
                        BotonImagen3(),
                        SizedBox(width: 20),
                        BotonImagen4(),
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

  ElevatedButton BotonImagen1() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado1 = Colors.red.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado1 = Colors.white;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale33(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(tamanioTajetaW, tamanioTajetaH),
        backgroundColor: colorSeleccionado1,
        shadowColor: Colors.black,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: tamanioTajetaW - 20,
          height: tamanioTajetaH - 20,
          child: Image.network(
            'https://i.postimg.cc/C5N6mMk9/b1.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen2() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado2 = Colors.red.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado2 = Colors.white;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale33(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(tamanioTajetaW, tamanioTajetaH),
        backgroundColor: colorSeleccionado2,
        shadowColor: Colors.black,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: tamanioTajetaW - 20,
          height: tamanioTajetaH - 20,
          child: Image.network(
            'https://i.postimg.cc/qM15KRk3/b2.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen3() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado3 = Colors.red.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado3 = Colors.white;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale33(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(tamanioTajetaW, tamanioTajetaH),
        backgroundColor: colorSeleccionado3,
        shadowColor: Colors.black,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: tamanioTajetaW - 20,
          height: tamanioTajetaH - 20,
          child: Image.network(
            'https://i.postimg.cc/wTqr3Jdz/b3.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen4() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado4 = Colors.red.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado4 = Colors.white;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale33(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(tamanioTajetaW, tamanioTajetaH),
        backgroundColor: colorSeleccionado4,
        shadowColor: Colors.black,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: tamanioTajetaW - 20,
          height: tamanioTajetaH - 20,
          child: Image.network(
            'https://i.postimg.cc/8zsnmS5n/b4.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
