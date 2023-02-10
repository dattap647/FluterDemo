import 'package:demoapp/Model/test_model.dart';

List<DummyData> getListData() {
  List<DummyData> list = [];
  var test1 = DummyData();
  test1.time = "05:05 PM";
  test1.testName = "Test 1";
  list.add(test1);

  var test2 = DummyData();
  test1.time = "05:35 PM";
  test1.testName = "Test 2";
  list.add(test2);

  return list;
}
