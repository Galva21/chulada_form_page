import 'package:chulada_form_page/questions/female/qf1.dart';
import 'package:chulada_form_page/questions/male/qf1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color colorSeleccionadoH = Colors.white;
  Color colorSeleccionadoM = Colors.white;

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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(80, 150, 80, 0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'SELECCIONE SU GÉNERO',
                  style: GoogleFonts.robotoSlab(fontSize: 50),
                ),
                const SizedBox(
                  height: 50,
                ),
                Wrap(
                  children: [
                    BotonMujerWidget(),
                    const SizedBox(width: 150),
                    BotonHombreWidget(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton BotonMujerWidget() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionadoM = Colors.pink.shade500;
          });
        } else {
          setState(() {
            colorSeleccionadoM = Colors.white;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.scale,
            child: QuestionFemale1(),
            duration: Duration(milliseconds: 800),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(600, 600),
        backgroundColor: colorSeleccionadoM,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
      ),
      child: Column(
        children: [
          LottieBuilder.network(
              "https://assets1.lottiefiles.com/packages/lf20_erk2CBQo7n.json"),
          Text(
            "MUJER",
            style: GoogleFonts.robotoSlab(
              fontSize: 25,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton BotonHombreWidget() {
    return ElevatedButton(
      onHover: (value) {
        if (value) {
          setState(() {
            colorSeleccionadoH = Colors.blue.shade500;
          });
        } else {
          setState(() {
            colorSeleccionadoH = Colors.white;
          });
        }
      },
      onPressed: () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            alignment: Alignment.center,
            type: PageTransitionType.scale,
            child: QuestionFemale11(),
            duration: Duration(milliseconds: 800),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(600, 600),
        backgroundColor: colorSeleccionadoH,
        shadowColor: Colors.black,
        elevation: 20,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
      child: Column(
        children: [
          LottieBuilder.network(
              "https://assets10.lottiefiles.com/packages/lf20_ZF2YZt8blv.json"),
          Text(
            "HOMBRE",
            style: GoogleFonts.robotoSlab(
              fontSize: 25,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}
