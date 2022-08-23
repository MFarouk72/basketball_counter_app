import 'package:basketball_counter_app/cubit/counter_cubit.dart';
import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
    HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(builder: (context ,state){
      var cubit = BlocProvider.of<CounterCubit>(context);
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title:const Text('Points Counter'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${cubit.teamAPoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding:const EdgeInsets.all(8),
                            primary: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {
                            cubit.teamIncrement(team: 'A', buttonNumber: 1);
                          },
                          child:const Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {
                            cubit.teamIncrement(team: 'A', buttonNumber: 2);
                          },
                          child:const Text(
                            'Add 2 Point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {
                            cubit.teamIncrement(team: 'A', buttonNumber: 3);
                          },
                          child:const Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child:VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${cubit.teamBPoints}',
                          style:const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding:const EdgeInsets.all(8),
                            primary: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {
                            cubit.teamIncrement(team: 'B', buttonNumber: 1);
                          },
                          child:const Text(
                            'Add 1 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            cubit.teamIncrement(team: 'B', buttonNumber: 2);
                          },
                          child:const Text(
                            'Add 2 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize:const Size(150, 50),
                          ),
                          onPressed: () {
                            cubit.teamIncrement(team: 'B', buttonNumber: 3);
                          },
                          child:const Text(
                            'Add 3 Point ',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.all(8),
                  primary: Colors.orange,
                  minimumSize:const Size(150, 50),
                ),
                onPressed: () {
                  cubit.restCounter();
                },
                child:const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }, listener: (context , state){
    });
  }
}
