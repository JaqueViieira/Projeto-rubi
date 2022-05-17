import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
                size: 30, 
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 30, 23, 22),
            ),
          ),
          const Card(
            color: Color.fromARGB(255, 30, 23, 22),
            child: ListTile(
              leading: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              title: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          const Card(
            color: Color.fromARGB(255, 30, 23, 22),
            child: ListTile(
              leading: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              title: Text(
                "Notificações",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          const Spacer(),
          Column(
            children: [
              Card(
                color: const Color.fromARGB(255, 30, 23, 22),
                child: ListTile(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  leading: const Icon(
                    Icons.keyboard_return_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Voltar",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
