import 'package:flutter/material.dart';

class FlightDepature extends StatelessWidget {
  const FlightDepature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allSearchs = Container(
      width: double.infinity,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.black26.withOpacity(0.1),
            width: 1.0
          ) 
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 7,
            child: Container(
              width: 150.0,
              margin: const EdgeInsets.only(
                left: 20.0
              ),
              child: const Text(
                "38 Search Results",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500
                ),
              ),
            )
          ),
          const Expanded(
            flex: 2,
            child: IconButton(
              icon: Icon(
                Icons.filter_alt_outlined,
                color: Colors.black26,
              ),
              onPressed: null,
            )
          )
        ]
      ),
    );

    final iconArrow = Stack(
      children: [
        Container(
          width: 80.0,
          height: 1.0,
          margin: const EdgeInsets.only(
            top: 24.0
          ),
          color: Colors.black26.withOpacity(0.1),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Transform.rotate(
            angle: 1.5708, //Esta en Radianes, se debe hacer conversion de angulo a Radian
            child: const IconButton(
              icon: Icon(
                Icons.airplanemode_active ,
                color: Colors.black45,
              ),
              onPressed: null,
            ),
          ),
        )
      ],
    );

    final salida_destino = Container(
      margin: const EdgeInsets.only(
        top: 50.0,
        bottom: 50.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "DRS",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black87, 
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sat, 20 Jan",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black45, 
                  fontWeight: FontWeight.normal
                ),
              )
            ],
          ),
          Container(
            width: 80.0,
            child: iconArrow,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "JFK",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black87, 
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                "Sun, 21 Jan",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black45, 
                  fontWeight: FontWeight.normal
                ),
              )
            ],
          )
        ],
      ),
    );

    final depatureDetails = Container(
      width: double.infinity,
      height: 250.0,
      margin: const EdgeInsets.only(
        top: 150.0, 
        right: 20.0, 
        left: 20.0
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
        ]
      ),
      child: Column(
        children: [
          salida_destino, 
          allSearchs
        ],
      ),
    );
    return depatureDetails;
  }
}