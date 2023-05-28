import 'dart:ui';

import 'package:chulada_form_page/providers/info_provider.dart';
import 'package:chulada_form_page/questions/male/qf11.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class QuestionFemale100 extends StatefulWidget {
  const QuestionFemale100({super.key});

  @override
  State<QuestionFemale100> createState() => _QuestionFemale100State();
}

class _QuestionFemale100State extends State<QuestionFemale100> {
  Color colorSeleccionado1 = Colors.white;
  Color colorSeleccionado2 = Colors.white;
  Color colorSeleccionado3 = Colors.white;
  Color colorSeleccionado4 = Colors.white;
  Color colorSeleccionado5 = Colors.white;
  Color colorSeleccionado6 = Colors.white;
  double tamanioTajetaW = 400;
  double tamanioTajetaH = 550;

  @override
  Widget build(BuildContext context) {
    final seleccionProvider = Provider.of<InfoProvider>(context);
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
            scrollDirection: Axis.vertical,
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
                      '¿A que silueta se asemeja tu cuerpo?',
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
                        BotonImagen1(seleccionProvider),
                        SizedBox(width: 20),
                        BotonImagen2(seleccionProvider),
                        SizedBox(width: 20),
                        BotonImagen3(seleccionProvider),
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

  ElevatedButton BotonImagen1(InfoProvider seleccionFinal) {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado1 = Colors.orange.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado1 = Colors.white;
          });
        }
      },
      onPressed: () {
        seleccionFinal.seleccionFinall = 1;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale111(),
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
            'https://i.postimg.cc/133F2R1s/c1.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen2(InfoProvider seleccionFinal) {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado2 = Colors.orange.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado2 = Colors.white;
          });
        }
      },
      onPressed: () {
        seleccionFinal.seleccionFinall = 2;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale111(),
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
            'https://i.postimg.cc/GmgDC0bY/c2.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen3(InfoProvider seleccionFinal) {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado3 = Colors.orange.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado3 = Colors.white;
          });
        }
      },
      onPressed: () {
        seleccionFinal.seleccionFinall = 3;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale111(),
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
            'https://i.postimg.cc/k5VbMj5H/c3.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen4(InfoProvider seleccionFinal) {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado4 = Colors.orange.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado4 = Colors.white;
          });
        }
      },
      onPressed: () {
        seleccionFinal.seleccionFinal = 4;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale111(),
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
            'https://i.postimg.cc/qvDjTtRw/34.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen5(InfoProvider seleccionFinal) {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado5 = Colors.orange.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado5 = Colors.white;
          });
        }
      },
      onPressed: () {
        seleccionFinal.seleccionFinal = 5;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale111(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(tamanioTajetaW, tamanioTajetaH),
        backgroundColor: colorSeleccionado5,
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
            'https://i.postimg.cc/NjjpS8gL/35.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonImagen6(InfoProvider seleccionFinal) {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionado6 = Colors.orange.shade200;
          });
        } else {
          setState(() {
            colorSeleccionado6 = Colors.white;
          });
        }
      },
      onPressed: () {
        seleccionFinal.seleccionFinal = 6;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale111(),
            duration: Duration(milliseconds: 1000),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(tamanioTajetaW, tamanioTajetaH),
        backgroundColor: colorSeleccionado6,
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
            'https://i.postimg.cc/9fvbDvyq/36.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
