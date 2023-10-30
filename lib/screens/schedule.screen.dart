import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Horario'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Elegir Horario', style: TextStyle(fontSize: 18)),
            SizedBox(height: 5),
            Text('Cambiar Horario', style: TextStyle(fontSize: 14, color: Colors.grey)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...["D", "L", "M", "M", "J", "V", "S"].map((day) {
                  return Column(
                    children: [
                      Text(day),
                      SizedBox(height: 10),
                      Text(
                        ["11", "12", "13", "14", "15", "16", "17"][DateTime.now().weekday - 1],
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                }).toList()
              ],
            ),
            SizedBox(height: 20),
            Text('Turnos', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            SwitchListTile(
              title: Text('Turno noche'),
              subtitle: Text('00:00 - 08:00'),
              value: true, // You can manage the state for this
              onChanged: (bool value) {},
            ),
            SwitchListTile(
              title: Text('Turno mañana'),
              subtitle: Text('08:00 - 16:00'),
              value: false, // You can manage the state for this
              onChanged: (bool value) {},
            ),
            SwitchListTile(
              title: Text('Turno tarde'),
              subtitle: Text('16:00 - 00:00'),
              value: false, // You can manage the state for this
              onChanged: (bool value) {},
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Guardar turnos'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Horario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'Más',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}