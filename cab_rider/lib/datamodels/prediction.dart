class Prediction{
  String placeId;
  String mainText;
  String secudaryText;

  Prediction({
    this.placeId,
    this.mainText,
    this.secudaryText,
});

  Prediction.fromJson(Map<String, dynamic> json){
    placeId = json['place_id'];
    mainText = json['structured_formatting']['main_text'];
    secudaryText = json['structured_formatting']['secondary_text'];
  }

}