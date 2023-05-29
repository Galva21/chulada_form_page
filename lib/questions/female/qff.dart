import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:chulada_form_page/providers/info_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class QuestionFemaleF extends StatefulWidget {
  const QuestionFemaleF({super.key});

  @override
  State<QuestionFemaleF> createState() => _QuestionFemaleFState();
}

class _QuestionFemaleFState extends State<QuestionFemaleF> {
  String titulo = "Outfit Ideal";
  bool cargando = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 4000), () {
      setState(() {
        cargando = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final info_provider = Provider.of<InfoProvider>(context);
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
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: cargando
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          LottieBuilder.network(
                            "https://assets7.lottiefiles.com/packages/lf20_raiw2hpe.json",
                            height: 400,
                          ),
                          Text("Buscando tu outfit ideal...")
                        ],
                      )
                    : Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/chulada.png',
                            scale: 3,
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            titulo,
                            style: GoogleFonts.dancingScript(
                              fontSize: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: AutoSizeText(
                              maxLines: 10,
                              textAlign: TextAlign.center,
                              info_provider.textoMostrar,
                              style: GoogleFonts.caveat(
                                color: Colors.black87,
                                fontWeight: FontWeight.w900,
                                fontSize: 30
                              ),
                            ),
                          ),
                          Image.network(
                            info_provider.urlImagen,
                            height: 500,
                            width: 550,
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
}
