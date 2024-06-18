import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Alerta Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 206, 8, 8),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Botón de Alerta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 13, 179, 230)),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                    title: Text(
                    'OSORIO Titulo del Alertdialog',
                    style: GoogleFonts.lobster(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                    ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min, // Set the height to fit the content
                    children: [
                      Icon(
                        Icons.check_circle_outline_rounded,
                        size: 50,
                        color: Colors.greenAccent[400],
                      ),
                      Text(
                        'flutter alert',
                        style: GoogleFonts.caveat(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'lorem ipsum dolor sit amet consectetur adipiscing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                        style: GoogleFonts.dancingScript(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    
                    ],
                  ),
                  
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                          child: Text('Aceptar'
                          ),
                          style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 14, 173, 11)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                          onPressed: () {
                             Navigator.of(context).pop();
                            showDialog(
                            context: context,

                            builder: (BuildContext context) {
                              return AlertDialog(
                              title: Text(
                                'Alerta Aceptada',
                                style: TextStyle(
                                fontFamily: 'GoogleSans',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.greenAccent[400],
                                ),
                                textAlign: TextAlign.center,
                              ),
                              content: Text('Gracias por aceptar la alerta',
                              textAlign: TextAlign.center,
                              ),
                              actions: [
                                TextButton(
                                child: Text('Cerrar'),
                                style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                ),
                              ],
                              );
                            },
                            );
                          },
                          ),

                          SizedBox(width: 10),
                            TextButton(
                              child: Text(
                                'Cerrar',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                        ],
                      ),
                    ],
                    
                );
              },
            );

          },
        ),
      
      ),
    );
  }
}