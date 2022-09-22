import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner_app/app/widgets/primary_button.dart';

import '../controllers/add_tournament_controller.dart';


class AddTournamentView extends GetView<AddTournamentController> {
  const AddTournamentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Tournament'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: controller.nameController,
                  decoration: InputDecoration(
                      labelText: "Tournament Name", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),


                TextField(
                  controller: controller.organizerController,
                  decoration: InputDecoration(
                      labelText: "Tournament Organizer", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),

                TextField(
                  controller: controller.dateController,
                  decoration: InputDecoration(
                      labelText: "Tournament Date", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),

                TextField(
                  controller: controller.entryFeeController,
                  decoration: InputDecoration(
                      labelText: "Entry Fee", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),

                TextField(
                  controller: controller.prizeMoneyController,
                  decoration: InputDecoration(
                      labelText: "Prize Money", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),

                TextField(
                  maxLines: 5,
                  controller: controller.additionalDetailsController,
                  decoration: InputDecoration(
                      labelText: "Additional Details", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15,
                ),
                
                Obx(() => controller.isLoading.isTrue? CircularProgressIndicator(): PrimaryButton(text: "Submit", onPress: () {
                  controller.addTournament();
                }))
              ],
            ),
          ),
        ));
  }
}
