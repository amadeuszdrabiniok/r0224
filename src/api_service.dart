import 'dart:convert';
import 'package:http/http.dart'
    as http; // http package is not a good choice for lager projects due to lack of error handling and overall simplicity. For example dio would be a better choice.
import 'data_model.dart';

class ApiService {
  //
  // Method fetchData should have some kind of error handling, for example try{} catch(). Checking only status code is not sufficient because errors may occur before request is done.
  // ApiService should extend some kind of abstraction or interface to keep the code clean and maintainable.
  //
  Future<DataModel> fetchData() async {
    final response = await http.get(Uri.parse('http://www.mock.com/example'));

    if (response.statusCode == 200) {
      return DataModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }
}
