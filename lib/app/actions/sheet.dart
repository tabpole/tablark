import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

import '../widgets/atoms/icons.dart';
import '../widgets/atoms/texts.dart';

//*********************************************/
// ************* Sheet Action     *************/
//*********************************************/
class SheetAction extends StatelessWidget {
  final VoidCallback onConfirm;
  const SheetAction({
    super.key,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          onPressed: () => Get.back(),
          child: const Text('No'),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () {
            onConfirm();
            Get.back();
          },
          child: const Text("Yes"),
        ),
      ],
    );
  }
}

//*********************************************/
//*************  Show  Top  Sheet *************/
//*********************************************/
class ShowTopSheet {
  static handle({
    required Widget child,
  }) {
    return showTopModalSheet(
      Get.context!,
      child,
    );
  }
}

//*********************************************/
//************* Confirm Top Sheet *************/
//*********************************************/
class ConfirmTopSheet {
  static handle({
    String title = "Are you sure ?",
    required VoidCallback onConfirm,
  }) {
    return ShowTopSheet.handle(
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LargeBoldText(title),
            const SizedBox(height: 16),
            const CircularLargeIcon(Icons.question_mark_sharp),
            const SizedBox(height: 16),
            SheetAction(onConfirm: onConfirm),
          ],
        ),
      ),
    );
  }
}

//*********************************************/
//******** Confirm Message Top Sheet **********/
//*********************************************/
class ConfirmMessageTopSheet {
  static handle({
    String title = "Are you sure ?",
    String message = "",
    required VoidCallback onConfirm,
  }) {
    return ShowTopSheet.handle(
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LargeBoldText(title),
            const SizedBox(height: 16),
            RegularText(message),
            const SizedBox(height: 32),
            SheetAction(onConfirm: onConfirm),
          ],
        ),
      ),
    );
  }
}

//*********************************************/
// ***********  Show  Bottom  Sheet ***********/
//*********************************************/
class ShowBottomSheet {
  static handle({
    required Widget child,
  }) {
    return Get.bottomSheet(
      child,
      backgroundColor: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

//*********************************************/
// *********** Confirm Bottom Sheet ***********/
//*********************************************/
class ConfirmBottomSheet {
  static handle({
    String title = "Are you sure ?",
    required VoidCallback onConfirm,
  }) {
    return ShowBottomSheet.handle(
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LargeBoldText(title),
            const SizedBox(height: 16),
            const CircularLargeIcon(Icons.question_mark_sharp),
            const SizedBox(height: 16),
            SheetAction(onConfirm: onConfirm),
          ],
        ),
      ),
    );
  }
}

//*********************************************/
// ******* Confirm Message Bottom Sheet *******/
//*********************************************/
class ConfirmMessageBottomSheet {
  static handle({
    String title = "Are you sure ?",
    String message = "",
    required VoidCallback onConfirm,
  }) {
    return ShowBottomSheet.handle(
      child: Container(
        height: 300,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LargeBoldText(title),
            const SizedBox(height: 16),
            RegularText(message),
            const SizedBox(height: 32),
            SheetAction(onConfirm: onConfirm),
          ],
        ),
      ),
    );
  }
}
