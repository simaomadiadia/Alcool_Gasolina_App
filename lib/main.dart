import 'package:flutter/material.dart';

void main(){
  
  
  runApp( MaterialApp(
    home: Home(),
  )
    
  );
  
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Álcool ou gasolina"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("Imagens/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Saiba qual a melhor opção para abastecimento do seu carro.",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Preço Alcool ex:1.59"
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Preço Gasolina ex:3.59"
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    
                  }, 
                  child: Text("Calcular"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  fixedSize:  Size(350,45),


                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
