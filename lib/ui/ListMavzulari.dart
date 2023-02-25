import 'package:flutter/material.dart';

class ListMavzulari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<int> listningRaqamlari = List.generate(300, (index) => index);
    List<String> listBoshliq = List.generate(300, (index) => 'List elementi $index');

    return ListView(children: listningRaqamlari
        .map(
          (oshVaqtdagiElement) => Column(
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.yellowAccent,
                  margin: EdgeInsets.all(20),
                  elevation: 20,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.face),
                      radius: 12.0,
                    ),
                    title: Text('Salom men Cardtitlening ${oshVaqtdagiElement+1} - elementiman'),
                    subtitle: Text('Salom men subtitlening ${oshVaqtdagiElement+1} - elementiman'),
                    trailing: Icon(Icons.add_circle_outline),
                  ),
                ),
              ),
              Divider(color: Colors.black, height: 10, thickness: 2,),
            ],
          ),
      ).toList(),


    );
  }
}
