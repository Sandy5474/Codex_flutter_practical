import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseServices {
  Future addUserDetails(Map<String, dynamic> userInfo, String id) async {
    await FirebaseFirestore.instance.collection("User").doc(id).set(userInfo);
  }

  Future addAllProducts(Map<String, dynamic> userInfo) async {
    await FirebaseFirestore.instance.collection("Products").add(userInfo);
  }

  Future<Stream<QuerySnapshot>> getAllProduct() async {
    return await FirebaseFirestore.instance.collection("Products").snapshots();
  }

  Future AddProduct(
      Map<String, dynamic> addProductInfo, String categoryName) async {
    await FirebaseFirestore.instance
        .collection(categoryName)
        .add(addProductInfo);
  }

  updateStatus(String id) async {
    await FirebaseFirestore.instance
        .collection("Order")
        .doc(id)
        .update({"Status": "Delivered"});
  }

  Future<Stream<QuerySnapshot>> getProduct(String category) async {
    return await FirebaseFirestore.instance.collection(category).snapshots();
  }

  Future<Stream<QuerySnapshot>> allOrders() async {
    return await FirebaseFirestore.instance
        .collection("Order")
        .where("Status", isEqualTo: "On the way")
        .snapshots();
  }

  Future<Stream<QuerySnapshot>> getOrders(String email) async {
    return await FirebaseFirestore.instance
        .collection("Order")
        .where("Email", isEqualTo: email)
        .snapshots();
  }

  Future orderDetails(Map<String, dynamic> orderInfo) async {
    await FirebaseFirestore.instance.collection("Order").add(orderInfo);
  }

  Future<QuerySnapshot> search(String updatename) async {
    return await FirebaseFirestore.instance
        .collection("Products")
        .where("SearchKey", isEqualTo: updatename.substring(0, 1).toUpperCase())
        .get();
  }
}
