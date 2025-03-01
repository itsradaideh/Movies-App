import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/card_controller.dart';
import '../../../utils/constants.dart';

//Repetitious IMBd Text
class RepetitiousIMBd extends StatelessWidget {
  final  _cardController = Get.find<CardController>();

   RepetitiousIMBd({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Colors.yellow,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Obx(() {
          return Text(
            _cardController
                .listOfMovies[_cardController.currentIndex.value].iMBd,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
            ),
          );
        })
      ],
    );
  }
}

//Repetitious Time Text
class RepetitiousTime extends StatelessWidget {
  final  _cardController = Get.find<CardController>();

   RepetitiousTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.access_time_filled,
          color: iconColor,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Obx(() {
          return Text(
            _cardController
                .listOfMovies[_cardController.currentIndex.value].time,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
            ),
          );
        })
      ],
    );
  }
}

//Repetitious Watch Text
class RepetitiousWatch extends StatelessWidget {
  const RepetitiousWatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.play_circle_filled,
          color: iconColor,
          size: 20,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "Watch",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
