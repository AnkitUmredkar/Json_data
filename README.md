<h1 align="center"> 🔶🔸8.1 JSON & JSON Parsing🔸🔶 </h1>

## What is JSON?
- JSON stands for ```JavaScript Object Notation```
- ```JSON is a lightweight format for storing and transporting data```
- JSON is often used when data is sent from a server to a web page
- JSON is "self-describing" and easy to understand

### Example :
```
{
"employees": [
    {"firstName":"John", "lastName":"Doe"},
    {"firstName":"Anna", "lastName":"Smith"},
    {"firstName":"Peter", "lastName":"Jones"}
  ]
}
```

## How to Access Json Data Using Provider :
### Provider Class
```
{
class JsonProvider extends ChangeNotifier {
  List<JsonModel> photoList = [];

  Future<List> jsonParsing() async {
    String json = await rootBundle.loadString('assets/json/photos/photo.json');
    List photo = jsonDecode(json);
    return photo;
  }

  Future<void> fromList() async {
    List photo = await jsonParsing();
    photoList = photo.map((e) => JsonModel.fromMap(e)).toList();
    notifyListeners();
  }

  JsonProvider() {
    fromList();
  }
}
```

### Model Class
```
class JsonModel {
  late int albumId, id;
  late String title, url, thumbnailUrl;

  JsonModel({
    required this.title,
    required this.albumId,
    required this.id,
    required this.thumbnailUrl,
    required this.url,
  });

  factory JsonModel.fromMap(Map m1) {
    return JsonModel(
        title: m1['title'],
        albumId: m1['albumId'],
        id: m1['id'],
        thumbnailUrl: m1['thumbnailUrl'],
        url: m1['url']);
  }
}
```

### Show Data on Screen :
```
ListView.builder(
            itemCount: jsonProvider.photoList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Card(
                color: const Color(0xff222428),
                child: ListTile(
                  leading: Container(
                    width: width * 0.14,
                    height: width * 0.14,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                NetworkImage(jsonProvider.photoList[index].url),
                            fit: BoxFit.cover)),
                  ),
                  title: Text(jsonProvider.photoList[index].title),
                  subtitle: Text(
                      'id : ${jsonProvider.photoList[index].id.toString()}'),
                ),
              ),
            ),
          ),
```

<h1 align="left"> </h1>

<div align="center">
  <img height="550" src="https://github.com/user-attachments/assets/769cfdee-0cd4-4706-a220-a0600fe35c20"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src="https://github.com/user-attachments/assets/28a422d3-3095-4a6e-a71f-060a357c61a5"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Json_data/tree/master/lib/Screen/JSON%20Parsing">-> 📂 Go To Dart File 📂<-</a>
</div>
<h1 align="left"> </h1>

<h1 align="center"> 🔶🔸8.1 Json Data In Nested Map Format 🔸🔶 </h1>

<div align="center">
  <img height="550" src="https://github.com/user-attachments/assets/ba20c430-f1e3-4441-ac04-ee60e4f7d1fa"/>
</div>

<h1 align="left"> </h1>

<div align="center">
<video height="550" src="https://github.com/user-attachments/assets/6327a963-b918-4560-bae8-3adbb0bd72eb"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Json_data/tree/master/lib/Screen/UserData">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>
