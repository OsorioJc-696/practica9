import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practica9/avatar/alerta_page.dart';
import 'package:practica9/avatar/avatar_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700], // Fondo color plomo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                'https://images.pexels.com/photos/14343143/pexels-photo-14343143.jpeg?auto=compress&cs=tinysrgb&w=600',
                width: 300,
                height: 470,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 200,
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter Componentes',
              style: GoogleFonts.oregano(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Divider(
              color: Color.fromARGB(181, 36, 36, 36),
              thickness: 0.5,
              indent: 100,
              endIndent: 100,
            ),
            SizedBox(height: 10),
            Container(
              width: 330,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AvatarPage()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.blue),
                    title: Text(
                      'Avatar',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Ir a detalle de Avatar'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 330,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AlertaPage()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.check_circle, color: Colors.blue),
                    title: Text(
                      'Alert',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Ir a detalle de Alert'),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
