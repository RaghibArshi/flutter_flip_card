import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('𝔽𝕝𝕚𝕡 ℂ𝕒𝕣𝕕'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: FlipCard(
          direction: FlipDirection.HORIZONTAL,
          speed: 1000,
          onFlip: (){
            print('Card Flip');
          },
          front: Card(
            elevation: 5.0,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/deliveryboy.png', height: 200, width: 200, fit: BoxFit.fill,),
                  const Text('Your order is out for delivery', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  const Text('Please tap, to share your feedback with us.')
                ],
              ),
            ),
          ),
          back: Card(
            elevation: 5.0,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/rating.png', height: 200, width: 200, fit: BoxFit.fill,),
                  const Text('Share your valuable feedback. Rate Us.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  ElevatedButton(
                      onPressed: (){
                        print('Rating-button');
                      },
                      child: Text('Give Rating'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
