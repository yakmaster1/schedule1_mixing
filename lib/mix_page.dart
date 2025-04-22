import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:schedule_mixer/main.dart';
import 'package:schedule_mixer/my_provider.dart';
import 'package:schedule_mixer/tree_structure.dart';

class MixPage extends StatefulWidget {
  final MyProvider myProvider;

  const MixPage({
    super.key,
    required this.myProvider
  });

  @override
  State<MixPage> createState() => _MixPageState();
}

class _MixPageState extends State<MixPage> {
  bool _loading = true;
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() => _loading = true);

      
      Isolate.run(() {
        widget.myProvider.searchResults.clear();
        DrugTree.searchFor(widget.myProvider);
      });

      setState(() => _loading = false);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      backgroundColor: MainApp.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: (_loading) ?
              const CircularProgressIndicator() :
              Container(
                height: 30,
                width: 30,
                color: Colors.amber,
              )
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: MainApp.button(
              () {
                Navigator.of(context).pop();
              }, 
              "Cancel", 
              Colors.red
            ),
          )
        ],
      ),
    );
  }
}