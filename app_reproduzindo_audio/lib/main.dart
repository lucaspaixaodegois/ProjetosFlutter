//importando libs
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

//iniciando main
void main() {
  runApp(const MaterialApp(
    home: Home(), //chamando classHome
    debugShowCheckedModeBanner: false, //desabilitando banerDebug
  ));
}

//declarando stful home
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//homeostate herdando
class _HomeState extends State<Home> {
  //instanciando player
  final player = AudioPlayer();
  double volume = 0.5;

  _volume(double volume) async {
    //setando volume inicial
    await player.setVolume(volume);
  }

  //função parar, ou seja executa o stop, logo quando clicar em play o audio irá tocar do começo
  _parar() async {
    print("função Parar");
    await player.stop();
  }

  //função pause, ou seja executa o pause, logo quando clicar em play o audio irá tocar de onde parou
  _pausar() async {
    await player.pause();
    print("função Pausar");
  }

  _executar() async {
    var volume = await player.setVolume(0.5); //volume inicial

    //configurando url do arquivo
    String url =
        "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-8.mp3";

    //executa metodo play da lib passando url de parametro
    await player.play(DeviceFileSource(url));

    /*
    //para executar dado de audio local
    // await player.setSource(AssetSource('assets/audios/musica.mp3'));
    */
  }

  @override
  Widget build(BuildContext context) {
    //chama a funcao executar, logo assim que rodar o app já começa tocando o audio
    _executar();
    _volume(volume);
    //desenhado tela com scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reproduzindo Áudios"), //nome na barra de titulo
        centerTitle: true, //centralizando o titulo
      ),
      //desenhando corpo da tela
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, //alinhado ao centro da coluna
        children: <Widget>[
          //criando elementos em linha, um ao lado do outro em tela
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, //setando espacamento automatico

            children: [
              //simbolo menos em tela
              const Text(
                "-",
                style: TextStyle(fontSize: 50, color: Colors.blue),
              ),
              //slider , barra de volume
              Slider(
                  value: volume,
                  min: 0,
                  max: 1,
                  //divisions: 10,
                  onChanged: (novoVolume) {
                    setState(() {
                      volume = novoVolume; //alterando volume ao tocar no slider
                    });

                    // audioPlayer.setVolume(novoVolume);
                  }),
              //simbolo mais em tela

              Text(
                "+",
                style: TextStyle(fontSize: 35, color: Colors.blue),
              ),
            ],
          ),
          //criando elementos em linha, um ao lado do outro em tela
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, //centralizando detro da linha
            children: <Widget>[
              //definido espacamentos em todos os lados
              Padding(
                padding: const EdgeInsets.all(8),

                //pegando toque na image
                child: GestureDetector(
                  child: Image.asset(
                      "assets/images/executar.png"), //desenhado imagem local
                  onTap: () {
                    _executar(); //ao tocar na imagem é chamado a funcao executar
                  },
                ),
              ),

              //definido espacamentos em todos os lados
              Padding(
                padding: const EdgeInsets.all(8),
                //pegando toque na image
                child: GestureDetector(
                  child: Image.asset(
                      "assets/images/pausar.png"), //desenhado imagem local
                  onTap: () {
                    _pausar(); //ao tocar na imagem é chamado a funcao pausar
                  },
                ),
              ),

              //definido espacamentos em todos os lados
              Padding(
                padding: const EdgeInsets.all(8),
                //pegando toque na image
                child: GestureDetector(
                  child: Image.asset(
                      "assets/images/parar.png"), //desenhado imagem local
                  onTap: () {
                    _parar(); //ao tocar na imagem é chamado a funcao parar
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
