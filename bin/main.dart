import 'model/modelling_data.dart';
import 'service/network_service.dart';

void main(List<String> args) async {
  String data = await NetworkService.getData(NetworkService.apiProduct);

  List<Shopping> list = fromListToObject(data);
  for (var i = 0; i < list.length; i++) {
    print("Product ${i + 1}  ${list[i].types.count}");
  }
}
