import '../../../core/app_export.dart';
import 'hotelcard_item_model.dart';

/// This class defines the variables used in the [cari_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CariModel {
  Rx<List<HotelcardItemModel>> hotelcardItemList = Rx([
    HotelcardItemModel(
        hotelName: "Grand Hyatt".obs,
        address:
            "Jl. M.H. Thamrin, RT.9/RW.5, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350"
                .obs),
    HotelcardItemModel(
        hotelName: "Plaza Indonesia".obs,
        address:
            "Jl. M.H. Thamrin No.Kav.28-30, Gondangdia, Kec. Menteng, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10350"
                .obs)
  ]);
}
