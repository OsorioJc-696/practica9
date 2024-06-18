import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Avatar Page',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 206, 8, 8),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6uz8op26CmzX7z-3DBlxuIQhD2DS2nKGd_gxASCO8rpMthMFDFHwQ2nkx42gwV7oTisU&usqp=CAU'
              ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ_9GRlgJrsxgdpNAI_TBtyoCrZa6mBDa8gkJk_g0U76CZw0C_LFNYccbBhu5mZFVgjBw&usqp=CAU'),
          ),
          SizedBox(width: 10),
        ],
      ),
          backgroundColor: Colors.amber[900], // Fondo color plomo
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ_9GRlgJrsxgdpNAI_TBtyoCrZa6mBDa8gkJk_g0U76CZw0C_LFNYccbBhu5mZFVgjBw&usqp=CAU'),
            ),
            SizedBox(height: 20),
            Text(
              'Osorio Cayetano, José Jhunior',
              style: GoogleFonts.greatVibes(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  
               color: Colors.white
                ),
              ),
            ),
            Text(
              'Flutter Developer',
              style: GoogleFonts.merienda(
                textStyle:
              TextStyle(fontSize: 18, color: Colors.white54),
              )
            ),
            Divider(
              color: Color.fromARGB(181, 192, 189, 189),
              thickness: 0.5,
              indent: 100,
              endIndent: 100,
            ),
            SizedBox(height: 20),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.phone, color: Colors.orange),
                title: 
                Text('+51 918405247',
                
                  style:
                 TextStyle(fontSize: 18, color: Colors.amber[800])
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ListTile(
                leading: Icon(Icons.email, color: Colors.orange),
                title: Text('e_2019200661k@uncp.edu.pe',
                  style:
                 TextStyle(fontSize: 18, color: Colors.amber[800])
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
