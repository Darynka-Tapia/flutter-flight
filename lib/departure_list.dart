import 'package:flutter/material.dart';
import 'departure.dart';

class DepartureList extends StatelessWidget {
  const DepartureList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 400.0,
        left: 30.0,
        right: 30.0
      ),
      padding: const EdgeInsets.only(
        top: 20.0,
        bottom: 20.0
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0, 
            offset: Offset(0.0, 7.0)
          )
        ],
      ),
      width: double.infinity,
      child: Column(
        children: [
          Departure(airlineName: 'Air Canada', cost: 350,),
          Departure(airlineName: 'Interjet', cost: 400,),
          Departure(airlineName: 'Volaris', cost: 150,),
          Departure(airlineName: 'Aero México', cost: 300,),
          Departure(airlineName: 'easyJet', cost: 380,),
          Departure(airlineName: 'airlines', cost: 450,),
        ],
      )
    );
  }
}