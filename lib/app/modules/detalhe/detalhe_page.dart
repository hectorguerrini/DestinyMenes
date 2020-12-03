import 'package:destinymenes/app/shared/components/text_title_widget.dart';
import 'package:destinymenes/app/shared/models/item_definition_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'detalhe_controller.dart';

class DetalhePage extends StatefulWidget {
  final String title;
  const DetalhePage({Key key, this.title = "Detalhe"}) : super(key: key);

  @override
  _DetalhePageState createState() => _DetalhePageState();
}

class _DetalhePageState extends ModularState<DetalhePage, DetalheController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/logoHQ2.jpg'),
                    fit: BoxFit.cover,
                    alignment: Alignment(-0.5, 0))),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.deepPurple,
                      size: 32,
                    ),
                    onPressed: () => Modular.to.pop(),
                  ),
                ),
                Observer(
                  builder: (_) {
                    if (controller.getListItems.length == 0)
                      return Center(
                          child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ));

                    return Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 124,
                            crossAxisCount: 2,
                            childAspectRatio: 0.89),
                        itemCount: controller.getListItems.length,
                        itemBuilder: (context, index) {
                          ItemDefinitionModel item =
                              controller.getListItems[index];
                          return Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextTitleWidget(
                                texto: item.displayProperties.name,
                                fontSize: 16,
                              ),
                              Expanded(
                                child: Card(
                                    elevation: 5,
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1, color: Colors.black),
                                          image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: NetworkImage(
                                                'https://www.bungie.net' +
                                                    item.displayProperties.icon,
                                              )),
                                          color: item.backgroundColor.toRGB()),
                                    )),
                              ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
