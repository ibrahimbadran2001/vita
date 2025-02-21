class CategoriesModel {
  List<CategoryModel>? triviaCategories;

  CategoriesModel({this.triviaCategories});

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    if (json['trivia_categories'] != null) {
      triviaCategories = <CategoryModel>[];
      json['trivia_categories'].forEach((v) {
        triviaCategories!.add(new CategoryModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.triviaCategories != null) {
      data['trivia_categories'] =
          this.triviaCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryModel {
  int? id;
  String? name;

  CategoryModel({this.id, this.name});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
