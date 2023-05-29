import 'dart:ui';

import 'package:chulada_form_page/providers/info_provider.dart';
import 'package:chulada_form_page/questions/female/qf11.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class QuestionFemale10 extends StatefulWidget {
  const QuestionFemale10({super.key});

  @override
  State<QuestionFemale10> createState() => _QuestionFemale10State();
}

class _QuestionFemale10State extends State<QuestionFemale10> {
  Color colorSeleccionado1 = Colors.white;
  Color colorSeleccionado2 = Colors.white;
  Color colorSeleccionado3 = Colors.white;
  Color colorSeleccionado4 = Colors.white;
  Color colorSeleccionado5 = Colors.white;
  Color colorSeleccionado6 = Colors.white;
  double tamanioTajetaW = 350;
  double tamanioTajetaH = 350;

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
              padding: const EdgeInsets.only(left: 10),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/chulada.png',
                      scale: 3,
                    ),
                    Text(
                      textAlign: TextAlign.center,
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
                        SizedBox(width: 20, height: 10,),
                        BotonImagen2(seleccionProvider),
                        SizedBox(width: 20, height: 10,),
                        BotonImagen3(seleccionProvider),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      children: [
                        BotonImagen4(seleccionProvider),
                        SizedBox(width: 20, height: 10,),
                        BotonImagen5(seleccionProvider),
                        SizedBox(width: 20, height: 10,),
                        BotonImagen6(seleccionProvider),
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
        seleccionFinal.seleccionFinal = 1;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale11(),
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
            'https://i.postimg.cc/5NSPVtHr/31.jpg',
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
        seleccionFinal.seleccionFinal = 2;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale11(),
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
            'https://i.postimg.cc/DyngBKCP/32.jpg',
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
        seleccionFinal.seleccionFinal = 3;
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.fade,
            child: QuestionFemale11(),
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
            'https://i.postimg.cc/qMwGFZSV/33.jpg',
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
            child: QuestionFemale11(),
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
            'https://i.postimg.cc/GmpjnxnB/34.jpg',
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
            child: QuestionFemale11(),
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
            'https://i.postimg.cc/Z5DxbvJw/35.jpg',
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
            child: QuestionFemale11(),
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
            'https://i.postimg.cc/PqpzPfxT/36.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
