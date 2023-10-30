import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:nssystem/db/db_helper.dart';
import 'package:nssystem/models/preference.dart';



class PreferenceController extends GetxController{
  @override
  void onReady(){
    super.onReady();

  }
  var preferenceList = <Preference>[].obs;

  Future<int> addPreference ({Preference? preference}) async{
    return await DBHelper.insert(preference);
  }

  void getPreferences() async{
    List<Map<String, dynamic>> preferences = await DBHelper.query();
    preferenceList.assignAll(preferences.map((data) => new Preference.fromJson(data)).toList());

  }
}