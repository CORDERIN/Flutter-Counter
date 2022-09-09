import 'package:flutter/material.dart';

//main feito por Arthur Cordeiro Ferreira Souza

void main(){
  runApp(MaterialApp(
    title: "Contador De Alunos",
      home: Home()
  ));
}

class _HomeState extends State<Home>{
  int _qtdAlunos = 0;
  String _text = "Chega mais!";

  String _testText(int numAlunos){
    if (numAlunos > 36){

      return "Sala Lotada";
    }
    if (numAlunos < 0){

      return "Impossível!!!";
    }

    return "Chega mais!";

  }



  void _changeAlunos (int increment){

    setState(() {
      _qtdAlunos += increment;

      if (_qtdAlunos > 36){

        _text = "Sala Lotada";
      }
      if (_qtdAlunos < 0){

        _text = "Impossível!!!";
      }

      if (_qtdAlunos >= 0 && _qtdAlunos <= 36){

        _text = "Chega mais!";
      }


    });
  }

  @override
  Widget build(BuildContext context){
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children : <Widget>[
        Text("Alunos: $_qtdAlunos", style : TextStyle ( color : Colors .blue, fontWeight: FontWeight.bold, fontSize: 50.0, decoration: TextDecoration.none),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              TextButton(
                  onPressed: (){
                    _changeAlunos(1);
                  },
                  child: Text("+1",
                    style:TextStyle(color: Colors.green, fontSize: 30.0),)
              ),
              TextButton(
                onPressed: (){
                  _changeAlunos(-1);
                },
                child: Text("-1",
                  style:TextStyle(color: Colors.red, fontSize: 30.0),
                ),
              ),
            ]
        ),
        Padding(padding: EdgeInsets.all(12.0),
          child: Text("$_text",
            style : TextStyle( color : Colors .blue, backgroundColor: Colors.white, fontStyle : FontStyle. italic , fontSize : 30.0, decoration: TextDecoration.none),
          ),
        )
      ],
    ));
  }

}

class Home extends StatefulWidget {

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}






