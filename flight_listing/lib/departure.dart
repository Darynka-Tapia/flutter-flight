import 'package:flutter/material.dart';

class Departure extends StatelessWidget {
  String airlineName;
  int cost;
  
  Departure({
    Key? key,
    required this.airlineName,
    required this.cost
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20.0
      ),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black26.withOpacity(0.1),
            width: 1.0
          ) 
        )
      ),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Column(
                children: [
                  Text(
                    airlineName, 
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  const Text(
                    "5 Results",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300, 
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Text(
                    "€ $cost",
                    style: const TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const Text(
                    "Onwards",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w300, 
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              // arrow_forward_ios_rounded 
              child: const IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black26,
                ),
                onPressed: null,
              ),
            ),
          )
        ],
      ),
    );
  }
}