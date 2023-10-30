class Preference{
  int? id;
  String? title;
  String? shift;
  String? date;
  String? startTime;
  String? endTime;

Preference({
    this.id,
    this.title,
    this.shift,
    this.date,
    this.startTime,
    this.endTime
});
Preference.fromJson(Map<String, dynamic> json){
  id = json['id'];
  title = json['title'];
  shift = json['shift'];
  date = json['date'];
  startTime = json['startTime'];
  endTime = json['endTime'];
}

Map<String, dynamic> toJson(){
  final Map<String, dynamic> data= new Map <String, dynamic>();

  data['id']=this.id;
  data['title']=this.title;
  data['shift']=this.shift;
  data['date']=this.date;
  data['startTime']=this.startTime;
  data['endTime']=this.endTime;
  return data;

}


}