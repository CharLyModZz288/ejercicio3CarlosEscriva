import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {


  Function(int indice)? onItemTap;
  String imagen;

  CustomDrawer({Key? key, required this.onItemTap, required this.imagen
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  imagen,
                  width: 100,
                  height: 100,
                ),
                Text(
                  "Selecciona lo que desees",
                  style: TextStyle(color: Colors.red,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
                'resources/backiee-205739.jpg', width: 50, height: 50),
            selectedColor: Colors.yellow,
            selected: true,
            title: const Text('Perfil'),
            onTap: () {
              onItemTap!(1);
            },
          ),
          ListTile(
            leading: Image.asset(
                'resources/backiee-205739.jpg', width: 50, height: 50),
            title: const Text('Cerrar Sesion'),
            onTap: () {
              onItemTap!(0);
            },
          ),
          ListTile(
            leading: Image.asset(
                'resources/backiee-205739.jpg', width: 50, height: 50),

            title: const Text('Consultar Temperatura'),
            onTap: () {
              onItemTap!(2);
            },

          ),
          ListTile(
            leading: Image.asset(
                'resources/backiee-205739.jpg', width: 50, height: 50),
            title: const Text('Consultar Mapa'),
            onTap: () {
              onItemTap!(3);
            },
          ),
             ListTile(
              leading: Image.asset(
                  'resources/backiee-205739.jpg', width: 50, height: 50),
               title: const Text('Consultar Pokemon'),
                onTap: () {
                onItemTap!(4);
               },
             ),
          ListTile(
            leading: Image.asset(
                'resources/backiee-205739.jpg', width: 50, height: 50),
            title: const Text('Chiste Aleatorio'),
            onTap: () {
              onItemTap!(5);
            },

          ),
          ListTile(
            leading: Image.asset(
                'resources/backiee-205739.jpg', width: 50, height: 50),
            title: const Text('Busqueda Titulo'),
            onTap: () {
              onItemTap!(6);
            },

          ),

          ListTile(
            leading: Image.asset(
                'resources/backiee-205739.jpg', width: 50, height: 50),
            title: const Text('Busqueda Personas Cercanas'),
            onTap: () {
              onItemTap!(7);
            },

          ),

        ],
      ),
    );
  }
}
