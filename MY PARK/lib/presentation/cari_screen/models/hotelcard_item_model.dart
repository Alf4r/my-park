import '../../../core/app_export.dart';

/// This class is used in the [hotelcard_item_widget] screen.
class HotelcardItemModel {
  HotelcardItemModel({
    this.hotelName,
    this.address,
    this.id,
  }) {
    hotelName = hotelName ?? Rx("Grand Hyatt");
    address = address ??
        Rx("Jl. M.H. Thamrin, RT.9/RW.5, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350");
    id = id ?? Rx("");
  }

  Rx<String>? hotelName;

  Rx<String>? address;

  Rx<String>? id;
}
