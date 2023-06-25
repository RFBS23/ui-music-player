import 'package:flutter/material.dart';
import 'package:musicplayerui/cajas.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PagSonido extends StatefulWidget {
  const PagSonido({Key? key}) : super(key: key);
  @override
  State<PagSonido> createState() => _PagSonidoState();
}

class _PagSonidoState extends State<PagSonido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
          child: Column(
              children: [
                // boton menu
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewCaja(child: Icon(Icons.arrow_back_ios_new_rounded)),
                    ),
                    Text('P L A Y L I S T'),
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: NewCaja(child: Icon(Icons.menu_rounded)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // nombre artista, nombre cancion, img de musica
                NewCaja(
                    child: Column(
                      children: [
                        ClipRRect(
                          //borderRadius: BorderRadius.circular(10), //la img es png y redondeada xd
                          child: Image.asset('lib/img/album-musica.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.music_note_rounded,
                                        color: Colors.blueAccent,
                                      ),
                                      Text(
                                        'nombre de musica',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(
                                    height: 6,
                                  ),

                                  Row(
                                    children: [
                                      Icon(
                                        Icons.perm_identity_rounded,
                                      ),
                                      const Text(
                                        'artista',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.favorite_rounded,
                                color: Colors.redAccent,
                                size: 28,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                ),
                const SizedBox(height: 20),

                //barra de progreso
                NewCaja(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.7,
                    progressColor: Colors.greenAccent,
                  ),
                ),

                //tiempo de inicio y fin, botones de mixto, repetir
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('0:00'),
                      Text('4:22')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.shuffle_rounded),
                      Icon(Icons.repeat_rounded),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                //musica previa, play, pausa
                SizedBox(
                  height: 80,
                  child: Row(
                    children: const [
                      Expanded(
                        child: NewCaja(
                          child: Icon(Icons.skip_previous_rounded, size: 32,),
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: NewCaja(
                            child: Icon(Icons.play_arrow_rounded, size: 32,),
                          ),
                        ),
                      ),

                      Expanded(
                        child: NewCaja(
                          child: Icon(Icons.skip_next_rounded, size: 32,),
                        ),
                      ),
                    ],
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}