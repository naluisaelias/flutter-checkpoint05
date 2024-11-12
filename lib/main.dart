import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Formulário de Inscrições';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final nomeController = TextEditingController();
  final idadeController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(32),
        children: <Widget>[
          buildNome(),
          const SizedBox(
            height: 24,
          ),
          buildIdade(),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              print('Nome: ${nomeController.text}');
              print('Idade: ${idadeController.text}');
              if (_formKey.currentState!.validate()) {
                setState(() {
                  print('Inscrição realizada com sucesso!');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SucessPage(nome: nomeController.text)),
                  );
                });
              }
              ;
            },
            child: const Text('Inscrever'),
          )
        ],
      ),
    );
  }

  Widget buildNome() => TextFormField(
        controller: nomeController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Obrigatório informar o nome';
          } else if (value.length < 5) {
            return 'Seu nome deve ter mais de 05 caracteres';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          labelText: 'Nome:',
          hintText: 'Digite seu nome...',
          border: const OutlineInputBorder(),
          prefixIcon: const Icon(Icons.person),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              nomeController.clear();
            },
          ),
        ),
        keyboardType: TextInputType.emailAddress,
      );

  Widget buildIdade() => TextFormField(
        controller: idadeController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Obrigatório informar a idade';
          } else if (int.parse(value) > 60 || int.parse(value) < 18) {
            return 'Sua idade deve ser entre 18 e 60 anos';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          hintText: 'Digite sua idade...',
          labelText: 'Idade:',
          border: OutlineInputBorder(),
          prefixIcon: const Icon(Icons.numbers),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              idadeController.clear();
            },
          ),
        ),
      );
}

class SucessPage extends StatelessWidget {

  final String nome;

  const SucessPage({Key? key, required this.nome}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('Inscrição confirmada! Seja bem-vindo(a), $nome.')
      ),
    );
  }
}