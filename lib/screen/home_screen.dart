import 'package:flutter/material.dart';
import 'package:hello_world/screen/FormScreen/example.dart';
import 'package:hello_world/screen/FormScreen/form_screen.dart';
import 'package:hello_world/screen/list_view_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: Text("Hello Drawer"),
        ),
        appBar: AppBar(
          title: Text(
            "Home Screen",
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Container(color: Colors.red, child: Text("flwkrjgwiu;N;S")),
              Text("flwkrjgwiu;N;S"),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: Image.asset('assets/images/1.jpg'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListViewScreen(),
                    ),
                  );
                },
                child: Text("กดปุ่มนี้ดู"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormScreen(),
                    ),
                  );
                },
                child: Text("FoormScreen"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Example(),
                    ),
                  );
                },
                child: Text("Example"),
              ),
              DropdownButton(
                hint: Text("กรอบคือสีอะไร"),
                items: [
                  DropdownMenuItem(
                    onTap: () {},
                    value: 1,
                    child: Text("สีส้ม"),
                  ),
                  DropdownMenuItem(
                    onTap: () {},
                    value: 1,
                    child: Text("สีเขียว"),
                  )
                ],
                onChanged: (int value) {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: "Phone",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_customize),
              label: "Dashboard",
            ),
          ],
        ),
      ),
    );
  }
}
