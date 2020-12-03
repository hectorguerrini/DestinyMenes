import 'package:destinymenes/app/enumeration/destiny_class_enum.dart';
import 'package:destinymenes/app/enumeration/destiny_race_enum.dart';
import 'package:destinymenes/app/shared/components/text_title_widget.dart';
import 'package:destinymenes/app/shared/models/character_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/logoHQ.jpg'),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(
                'assets/logoGrande.png',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextTitleWidget(
                  texto: controller.getDisplayName,
                  fontSize: 32,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selecionar Personagem: ',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(offset: Offset(2.5, 2.5), color: Colors.black)
                      ]),
                ),
              ),
              Observer(builder: (_) {
                if (controller.getListCharacters.length == 0) {
                  return CircularProgressIndicator();
                }

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.getListCharacters.length,
                    itemBuilder: (context, index) {
                      CharacterModel characterModel =
                          controller.getListCharacters[index];
                      return GestureDetector(
                        onTap: () => controller.goDetalhe(characterModel),
                        child: Card(
                          elevation: 10,
                          margin: EdgeInsets.symmetric(vertical: 16),
                          child: Container(
                            child: ListTile(
                              title: Text(
                                DestinyClassEnum
                                    .values[characterModel.classType]
                                    .toShortString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                ),
                              ),
                              subtitle: Text(
                                DestinyRaceEnum.values[characterModel.raceType]
                                    .toShortString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              trailing: Text(
                                characterModel.light.toString(),
                                style: TextStyle(
                                    color: Colors.yellow[800],
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                          offset: Offset(2.5, 2.5),
                                          color: Colors.black54)
                                    ]),
                              ),
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://www.bungie.net' +
                                            characterModel
                                                .emblemBackgroundPath))),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
