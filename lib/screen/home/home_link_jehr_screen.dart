import 'package:flutter/material.dart';
import 'package:julianaehrlich/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeLinkJerhSreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
/*              Container(
                height: 130,
                width: 130,
                child: Image(
                  image: AssetImage("assets/images/PXEXP_logo_red_inv.png"),
                  fit: BoxFit.scaleDown,
                ),
              ),*/
              Text(
                "@JulianaEhrlich",
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Bem vindo.",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _end1(context);

                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapScreen()));*/
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                    color: Colors.pink.shade50,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "Consultório 1: cj 506 -  5º Andar (Ver Mapa)",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _end2(context);

                  /*Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapScreen()));*/
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                    color: Colors.pink.shade50,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "Consultório 2: cj 1110 - 11º Andar (Ver Mapa)",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _whatsApp(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Constants.greenWhatsApp,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "WhatsApp",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _phone(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Text(
                            "Telefone",
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Redes Sociais ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  _instagram(context);
                },
                //splashColor: Constants.greenWhatsApp,
                hoverColor: Colors.grey.shade300,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black87),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        //Icon(Icons.search),
                        Center(
                          child: Container(
                            height: 40,
                            width: 80,
                            child: Image(
                              image: AssetImage("assets/images/instagram.png"),
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Function?> _whatsApp(context) async {
    var tel = "(11) 94996-4444";
    final phone = tel.replaceAll(RegExp('[^0-9]'), '');

    var _url = "https://api.whatsapp.com/send?phone=55";

    if (await canLaunch(_url + phone)) {
      launch(_url + phone);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha abrir WhatsApp'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          },
        ),
      ));
    }
  }

  Future<Function?> _phone(context) async {
    var tel = "(11) 94996-4444";

    final phone = 'tel:${tel.replaceAll(RegExp('[^0-9]'), '')}';

    if (await canLaunch(phone)) {
      launch(phone);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha abrir Telefone'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          },
        ),
      ));
    }
  }

  Future<Function?> _instagram(context) async {
    var _url = "https://www.instagram.com/drajuehrlich/";

    if (await canLaunch(_url)) {
      launch(_url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha Instagram'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          },
        ),
      ));
    }
  }

  Future<Function?> _end1(context) async {
    var _url =
        "https://www.google.com.br/maps/place/Rua+Dr.+Luiz+Migliano,+1986+-+Jardim+Vazani,+São+Paulo+-+SP,+05711-001/@-23.6216928,-46.7436947,17z/data=!3m1!4b1!4m5!3m4!1s0x94ce5797457bd555:0x90541f398e0bdb44!8m2!3d-23.6216928!4d-46.7415007";

    if (await canLaunch(_url)) {
      launch(_url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha ao abrir endereço'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          },
        ),
      ));
    }
  }

  Future<Function?> _end2(context) async {
    var _url =
        "https://www.google.com.br/maps/place/Rua+Dr.+Luiz+Migliano,+1986+-+Jardim+Vazani,+São+Paulo+-+SP,+05711-001/@-23.6216928,-46.7436947,17z/data=!3m1!4b1!4m5!3m4!1s0x94ce5797457bd555:0x90541f398e0bdb44!8m2!3d-23.6216928!4d-46.7415007";

    if (await canLaunch(_url)) {
      launch(_url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text('Falha ao abrir endereço'),
        duration: const Duration(seconds: 2),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          },
        ),
      ));
    }
  }
}
