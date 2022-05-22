class DatabaseModel {
  int? id;
  int? productid;
  String? ProductName;
  String? productImg;
  int? initialPrice;
  int? productPrice;
  int? quantity;
  var uniTag;

  DatabaseModel(
      {this.id,
      this.productid,
      this.ProductName,
      this.productImg,
      this.initialPrice,
      this.productPrice,
      this.quantity,
      this.uniTag});
  DatabaseModel.fromMap(Map<String, dynamic> res)
      : id = res['id'],
        productid = res['productid'],
        ProductName = res['ProductName'],
        productImg = res['productImg'],
        initialPrice = res['initialPrice'],
        productPrice = res['productPrice'],
        quantity = res['quantity'],
        uniTag = res['uniTag'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productid': productid,
      'ProductName': ProductName,
      'productImg': productImg,
      'initialPrice': productPrice,
      'productPrice': productPrice,
      'quantity': quantity,
      'uniTag': uniTag
    };
  }
}
