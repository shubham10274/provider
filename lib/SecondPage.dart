import 'package:Providers/list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
        builder: (context, numbersListProvider, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    numbersListProvider.add();
                  });
                },
                child: const Icon(Icons.add),
              ),
              appBar: AppBar(),
              body: SizedBox(
                child: Column(
                  children: [
                    Text(
                      numbersListProvider.numbers.last.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                    Container(
                      height: 200,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: numbersListProvider.numbers.length,
                        itemBuilder: (context, index) {
                          return Text(
                            numbersListProvider.numbers[index].toString() + " ",
                            style: const TextStyle(fontSize: 30),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
