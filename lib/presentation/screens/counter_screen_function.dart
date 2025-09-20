import 'package:flutter/material.dart';

class CounterScreenFunction extends StatefulWidget {
  const CounterScreenFunction({super.key});

  @override
  State<CounterScreenFunction> createState() => _CounterScreenFunctionState();
}

class _CounterScreenFunctionState extends State<CounterScreenFunction> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Contador',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              contador = 0;
              setState(() {});
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$contador',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.w100),
            ),
            Text(
              'Click${contador <= 1 ? '' : 's'}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 20),
          CustomButton(
            icon: Icons.refresh,
            onPressed: () {
              contador = 0;
              setState(() {});
            },
          ),
          const SizedBox(width: 20),
          CustomButton(
            icon: Icons.plus_one,
            onPressed: () {
              contador++;
              setState(() {});
            },
          ),
          const SizedBox(width: 20),
          CustomButton(
            icon: Icons.exposure_minus_1,
            onPressed: () {
              contador--;
              if (contador < 0) {
                contador = 0;
              }
              setState(() {});
            },
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: StadiumBorder(),
      elevation: 5,
      backgroundColor: Colors.yellow,
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
