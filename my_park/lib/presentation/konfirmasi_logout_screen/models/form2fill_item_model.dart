import '../../../core/app_export.dart';

/// This class is used in the [form2fill_item_widget] screen.
class Form2fillItemModel {
  Form2fillItemModel({
    this.emailAddress,
    this.wahabkIcloudCom,
    this.id,
  }) {
    emailAddress = emailAddress ?? Rx("Full name");
    wahabkIcloudCom = wahabkIcloudCom ?? Rx("Sajin Tamang");
    id = id ?? Rx("");
  }

  Rx<String>? emailAddress;

  Rx<String>? wahabkIcloudCom;

  Rx<String>? id;
}
