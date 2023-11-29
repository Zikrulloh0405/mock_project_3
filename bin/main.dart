import 'service/network_service.dart';

void main(List<String> args) async {
  String deleteData = await NetworkService.deleteData('2');
  print(deleteData);
}
