import 'package:Providers/SecondPage.dart';
import 'package:Providers/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/SecondPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
        builder: (context, numbersProviderModel, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    numbersProviderModel.add();
                  });
                },
                child: const Icon(Icons.add),
              ),
              appBar: AppBar(),
              body: SizedBox(
                child: Column(
                  children: [
                    Text(
                      numbersProviderModel.numbers.last.toString(),
                      style: TextStyle(fontSize: 30),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: numbersProviderModel.numbers.length,
                        itemBuilder: (context, index) {
                          return Text(
                            numbersProviderModel.numbers[index].toString(),
                            style: TextStyle(fontSize: 30),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Second_page()));
                          },
                          child: Text(
                            'SecondPage',
                            style: TextStyle(fontSize: 30),
                          )),
                    )
                  ],
                ),
              ),
            ));
  }
}
