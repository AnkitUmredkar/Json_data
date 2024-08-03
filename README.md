<h1 align="center"> 🔶🔸8.1 JSON & JSON Parsing🔸🔶 </h1>

## What is JSON?
- JSON stands for ```JavaScript Object Notation```
- ```JSON is a lightweight format for storing and transporting data```
- JSON is often used when data is sent from a server to a web page
- JSON is "self-describing" and easy to understand

### Example :
```bash
{
"employees": [
    {"firstName":"John", "lastName":"Doe"},
    {"firstName":"Anna", "lastName":"Smith"},
    {"firstName":"Peter", "lastName":"Jones"}
  ]
}
```

## How to Access Json Data Using Provider :
### Provider Class : 
```bash
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
- In This Provider class's jsonParsing() method convert the json data to the String data and after jsonDecode method decode the json data in the List format. The List which contains jsonDecode data it passing into the fromMap Named Constructor which given below and it convert into theList of object. 

### Model Class : 
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

<h1 align="center"> 🔶🔸8.2 Json Data In Nested Map Format 🔸🔶 </h1>

- ```When dealing with JSON data that contains nested maps, you often need to access deeply nested values. In Flutter, you can parse such JSON data using the jsonDecode function and then traverse the map to retrieve the desired values.```

```bash
{
  "user": {
    "id": 1,
    "name": "John Doe",
    "address": {
      "street": "123 Main St",
      "city": "Springfield",
      "zipcode": "12345"
    }
  }
}
```

- Other process will be same as it is above.

<h1 align="left"> </h1>

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

<h1 align="center"> 🔶🔸8.3 Json Data In Nested List Format 🔸🔶 </h1>

## Example : 

- ```When dealing with JSON data that contains nested lists, you need to iterate over the lists to access the values. Flutter provides the jsonDecode function to convert the JSON string into a map or list, which you can then travers```

```bash
{
  "posts": [
    {
      "id": 1,
      "title": "His mother had always taught him",
      "body": "His mother had always taught him not to ever think of himself as better than others. He'd tried to live by this motto. He never looked down on those who were less fortunate or who had less money than him. But the stupidity of the group of people he was talking to made him change his mind.",
      "tags": [
        "history",
        "american",
        "crime"
      ],
      "reactions": {
        "likes": 192,
        "dislikes": 25
      },
    },
    // Multiple Map add here...
  ],
  "total": 251,
  "skip": 0,
  "limit": 30
}
```

- Here the example of Nested List fromat in json data.

<h1 align="left"> </h1>

<div align="center">
  <img height="550" src="https://github.com/user-attachments/assets/1d79828d-5ed0-41dc-b871-1367ac1331c1"/>
</div>

<h1 align="left">

<div align="center">
<video height="550" src="https://github.com/user-attachments/assets/86d900b1-dac3-4c70-8a97-b63c263e37fa"/>
</div>

<h1 align="left"> </h1>

<div align = "center">
<a  href="https://github.com/AnkitUmredkar/Json_data/tree/master/lib/Screen/PostData">-> 📂 Go To Dart File 📂<-</a>
</div>

<h1 align="left"> </h1>
