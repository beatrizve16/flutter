import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin{

  var tarefas = <Map>[
    {
      'title': 'Minha tarefa',
      'subtitle': 'Descrição',
      'checked': false,
      'favorited': false,
    },
    {
      'title': 'Minha tarefa 1',
      'subtitle': 'Descrição',
      'checked': false,
      'favorited': false,
    },
    {
      'title': 'Minha tarefa',
      'subtitle': 'Descrição',
      'checked': false,
      'favorited': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tarefas.length,
      itemBuilder: (context, index) {
        final tarefa = tarefas[index];
        return CheckboxListTile(
          value: tarefa['checked'],
          onChanged: (v) {
            setState(() {
              tarefa['checked'] = !tarefa['checked'];
            });
          },
          title: Text(tarefa['title']),
          subtitle: Text(tarefa['subtitle']),
          secondary: IconButton(
            icon: Icon(tarefa['favorited'] ? Icons.star : Icons.star_border),
            onPressed: () {
              setState(() {
                tarefa['favorited'] = !tarefa['favorited'];
              });
            },
          ),
          controlAffinity: ListTileControlAffinity.leading,
        );
      },
    );
  }




@override
bool get wantKeepAlive => true;
}
