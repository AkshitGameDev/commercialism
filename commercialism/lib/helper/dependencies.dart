import 'package:commercialism/controllers/popular_product_controller.dart';
import 'package:commercialism/data/api/api_client.dart';
import 'package:commercialism/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';


Future<void> init() async {
//apiclient
  Get.lazyPut(() => ApiClient(appBaseUrl: 'https://yourapi.com') ); 
//repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
//controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}