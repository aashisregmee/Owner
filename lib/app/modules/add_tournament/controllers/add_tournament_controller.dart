import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:owner_app/app/utils/constants.dart';

class AddTournamentController extends GetxController {
  late final TextEditingController nameController;
  late final TextEditingController organizerController;
  late final TextEditingController dateController;
  late final TextEditingController entryFeeController;
  late final TextEditingController prizeMoneyController;
  late final TextEditingController additionalDetailsController;
  
  
  final isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    organizerController = TextEditingController();
    dateController = TextEditingController();
    entryFeeController = TextEditingController();
    prizeMoneyController = TextEditingController();
    additionalDetailsController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future<void> addTournament()async{
    
    String tournamentName = nameController.text.trim();
    String tournamentOrganizer = organizerController.text.trim();
    String tournamentDate = dateController.text.trim();
    String tournamentEntryFee = entryFeeController.text.trim();
    String tournamentPrizeMoney = prizeMoneyController.text.trim();
    String tournamentAdditionalDetails = additionalDetailsController.text.trim();

    if (tournamentName.isEmpty || tournamentOrganizer.isEmpty || tournamentDate.isEmpty || tournamentEntryFee.isEmpty || tournamentPrizeMoney.isEmpty || tournamentAdditionalDetails.isEmpty){
      showSnackbar("All fields are required!", isError: true);
      return;
    } 

    isLoading(true);
    CollectionReference tournamentDetail = FirebaseFirestore.instance.collection("tournament");
    await tournamentDetail.add({
      "name": tournamentName,
      "organizer": tournamentOrganizer,
      "date": tournamentDate,
      "entryFee": tournamentEntryFee,
      "prizeMoney": tournamentPrizeMoney,
      "additionalDetails": tournamentAdditionalDetails,
      "created": DateTime.now().millisecondsSinceEpoch
      }).then((value){
      
      isLoading(false);
      Get.back();
      showSnackbar("Tournament Added!");

    }).catchError((error){
      isLoading(false);
      showSnackbar(error.toString(), isError: true);
    });
    
  }

  @override
  void onClose() {
    super.onClose();
  }


}