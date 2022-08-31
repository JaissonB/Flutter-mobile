import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  late String valor;
  TelaEmpresa(this.valor);

  @override
  State<TelaEmpresa> createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Sobre a empresa"),
                  ),
                  Text(widget.valor)
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text("Lorem ipsum eleifend nisi ornare curae leo ultricies, faucibus vehicula sem duis ut ullamcorper, aliquet ante vitae tortor dictum sollicitudin. ultricies viverra amet dictumst accumsan imperdiet eleifend leo, sed quisque felis primis congue donec nisl dictumst, venenatis mattis posuere ultrices adipiscing etiam. condimentum fermentum lorem nullam leo, dolor orci taciti placerat lectus, aenean mattis donec. dui metus ante dapibus nec vestibulum praesent rutrum rhoncus integer, euismod diam rhoncus varius leo pellentesque facilisis scelerisque hac consectetur, condimentum cras molestie nullam etiam fusce elit odio. laoreet erat donec sociosqu turpis pellentesque odio rutrum habitasse, nibh scelerisque sed habitant ultrices nunc imperdiet platea rutrum, nisi fringilla torquent aenean rhoncus nulla donec. Fermentum elementum bibendum aliquet per neque tristique lobortis id libero aliquam est, integer curabitur praesent etiam aliquam vivamus scelerisque mi nam maecenas vulputate, bibendum ut habitasse porttitor suscipit tempus nostra molestie dictumst vehicula. id posuere ultricies curabitur aenean condimentum ligula ut aenean, conubia pharetra phasellus aenean massa torquent mattis aenean, ut morbi hendrerit euismod dictumst sodales fermentum. urna mi faucibus posuere cubilia sagittis nulla eleifend in tempor porttitor, tincidunt faucibus quis habitant accumsan lobortis congue taciti suspendisse arcu, porta metus dapibus tempus pretium tortor vitae arcu eleifend. maecenas litora felis vivamus mi iaculis faucibus dictum sed nibh a viverra, arcu class sociosqu vel elementum suspendisse mauris at tristique viverra, nullam at porta iaculis lorem malesuada hac curabitur praesent cursus. Non lobortis sociosqu donec tincidunt dictum habitant primis elementum, per id porttitor nibh neque est congue condimentum, commodo elit interdum varius aptent id senectus. facilisis dolor velit pellentesque lacus in consectetur mollis sit mi, facilisis urna mi tempor blandit enim lobortis malesuada dolor, dapibus dictum mollis lobortis dui urna blandit curabitur. sapien semper euismod platea vel aenean auctor sed nullam, cras neque felis pellentesque mauris dui bibendum, vehicula semper dapibus rutrum sed egestas ante. taciti potenti ad nunc netus venenatis accumsan faucibus nibh aenean mattis aliquam, sociosqu felis eget inceptos aptent ullamcorper aliquam vitae himenaeos vel. Habitasse curabitur fermentum eget cubilia litora donec a tristique euismod curabitur, cursus torquent nisl dictum varius facilisis lectus pharetra libero vitae, nec orci magna molestie hendrerit gravida justo at aliquam. nunc varius primis hac fames pretium ante rutrum sed cubilia varius, metus eros litora lacinia taciti lacinia gravida nibh a habitasse phasellus, pharetra placerat libero feugiat integer quam pellentesque tortor ullamcorper. aliquet habitasse porta dictumst commodo pellentesque convallis velit eleifend adipiscing elementum, dolor posuere duis vel consequat magna cursus ac sodales. libero auctor pharetra quis lacinia etiam aenean posuere vel, nisl nisi augue nisl sollicitudin nec dolor, bibendum convallis condimentum pulvinar quisque accumsan felis. Tellus egestas torquent tempor scelerisque cursus cras ante non convallis nostra etiam, ullamcorper sagittis molestie dictumst donec euismod pretium volutpat dui pharetra. tempor cursus pulvinar molestie turpis luctus nam lacinia accumsan, donec nullam tristique varius id ut suscipit habitant, mi nisi vel platea himenaeos viverra erat. potenti suscipit sit varius ante laoreet per aliquam pretium auctor, curae donec facilisis rhoncus morbi fames urna faucibus fringilla, adipiscing bibendum neque nunc magna nibh semper vel."),
              )
            ]
          ),
        ),
      ),
    );
  }
}