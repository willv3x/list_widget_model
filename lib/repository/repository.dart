import 'package:list_widget_model/model/model.dart';
import 'package:list_widget_model/model/response_page.dart';

class Repository {
  Future<ResponsePage<Model>> getModels(int page) async {
    Map<String, dynamic> decodedJson;

    switch (page) {
      case 0:
        {
          decodedJson = pagina0;
          break;
        }
      case 1:
        {
          decodedJson = pagina1;
          break;
        }
      case 2:
        {
          decodedJson = pagina2;
          break;
        }
      case 3:
        {
          decodedJson = pagina3;
          break;
        }
      case 4:
        {
          decodedJson = pagina4;
          break;
        }
      case 5:
        {
          decodedJson = pagina5;
          break;
        }
      case 6:
        {
          decodedJson = pagina6;
          break;
        }
      case 7:
        {
          decodedJson = pagina7;
          break;
        }
      case 8:
        {
          decodedJson = pagina8;
          break;
        }
      case 9:
        {
          decodedJson = pagina9;
          break;
        }
    }
    await Future.delayed(Duration(seconds: 2));
    return ResponsePage.fromJson(
      decodedJson,
      (contentJson) => Model.fromJson(contentJson),
    );
  }
}

Map<String, dynamic> pagina0 = {
  "page": 0,
  "last": false,
  "content": [
    {
      "id": 0,
      "name": "Model 0",
    },
    {
      "id": 1,
      "name": "Model 1",
    },
    {
      "id": 2,
      "name": "Model 2",
    },
    {
      "id": 3,
      "name": "Model 3",
    },
    {
      "id": 4,
      "name": "Model 4",
    },
    {
      "id": 5,
      "name": "Model 5",
    },
    {
      "id": 6,
      "name": "Model 6",
    },
    {
      "id": 7,
      "name": "Model 7",
    },
    {
      "id": 8,
      "name": "Model 8",
    },
    {
      "id": 9,
      "name": "Model 9",
    },
  ],
};

Map<String, dynamic> pagina1 = {
  "page": 1,
  "last": false,
  "content": [
    {
      "id": 10,
      "name": "Model 10",
    },
    {
      "id": 11,
      "name": "Model 11",
    },
    {
      "id": 12,
      "name": "Model 12",
    },
    {
      "id": 13,
      "name": "Model 13",
    },
    {
      "id": 14,
      "name": "Model 14",
    },
    {
      "id": 15,
      "name": "Model 15",
    },
    {
      "id": 16,
      "name": "Model 16",
    },
    {
      "id": 17,
      "name": "Model 17",
    },
    {
      "id": 18,
      "name": "Model 18",
    },
    {
      "id": 19,
      "name": "Model 19",
    },
  ],
};

Map<String, dynamic> pagina2 = {
  "page": 2,
  "last": false,
  "content": [
    {
      "id": 20,
      "name": "Model 20",
    },
    {
      "id": 21,
      "name": "Model 21",
    },
    {
      "id": 22,
      "name": "Model 22",
    },
    {
      "id": 23,
      "name": "Model 23",
    },
    {
      "id": 24,
      "name": "Model 24",
    },
    {
      "id": 25,
      "name": "Model 25",
    },
    {
      "id": 26,
      "name": "Model 26",
    },
    {
      "id": 27,
      "name": "Model 27",
    },
    {
      "id": 28,
      "name": "Model 28",
    },
    {
      "id": 29,
      "name": "Model 29",
    },
  ],
};

Map<String, dynamic> pagina3 = {
  "page": 3,
  "last": false,
  "content": [
    {
      "id": 30,
      "name": "Model 30",
    },
    {
      "id": 31,
      "name": "Model 31",
    },
    {
      "id": 32,
      "name": "Model 32",
    },
    {
      "id": 33,
      "name": "Model 33",
    },
    {
      "id": 34,
      "name": "Model 34",
    },
    {
      "id": 35,
      "name": "Model 35",
    },
    {
      "id": 36,
      "name": "Model 36",
    },
    {
      "id": 37,
      "name": "Model 37",
    },
    {
      "id": 38,
      "name": "Model 38",
    },
    {
      "id": 39,
      "name": "Model 39",
    },
  ],
};

Map<String, dynamic> pagina4 = {
  "page": 4,
  "last": false,
  "content": [
    {
      "id": 40,
      "name": "Model 40",
    },
    {
      "id": 41,
      "name": "Model 41",
    },
    {
      "id": 42,
      "name": "Model 42",
    },
    {
      "id": 43,
      "name": "Model 43",
    },
    {
      "id": 44,
      "name": "Model 44",
    },
    {
      "id": 45,
      "name": "Model 45",
    },
    {
      "id": 46,
      "name": "Model 46",
    },
    {
      "id": 47,
      "name": "Model 47",
    },
    {
      "id": 48,
      "name": "Model 48",
    },
    {
      "id": 49,
      "name": "Model 49",
    },
  ],
};

Map<String, dynamic> pagina5 = {
  "page": 5,
  "last": false,
  "content": [
    {
      "id": 50,
      "name": "Model 50",
    },
    {
      "id": 51,
      "name": "Model 51",
    },
    {
      "id": 52,
      "name": "Model 52",
    },
    {
      "id": 53,
      "name": "Model 53",
    },
    {
      "id": 54,
      "name": "Model 54",
    },
    {
      "id": 55,
      "name": "Model 55",
    },
    {
      "id": 56,
      "name": "Model 56",
    },
    {
      "id": 57,
      "name": "Model 57",
    },
    {
      "id": 58,
      "name": "Model 58",
    },
    {
      "id": 59,
      "name": "Model 59",
    },
  ],
};

Map<String, dynamic> pagina6 = {
  "page": 6,
  "last": false,
  "content": [
    {
      "id": 60,
      "name": "Model 60",
    },
    {
      "id": 61,
      "name": "Model 61",
    },
    {
      "id": 62,
      "name": "Model 62",
    },
    {
      "id": 63,
      "name": "Model 63",
    },
    {
      "id": 64,
      "name": "Model 64",
    },
    {
      "id": 65,
      "name": "Model 65",
    },
    {
      "id": 66,
      "name": "Model 66",
    },
    {
      "id": 67,
      "name": "Model 67",
    },
    {
      "id": 68,
      "name": "Model 68",
    },
    {
      "id": 69,
      "name": "Model 69",
    },
  ],
};

Map<String, dynamic> pagina7 = {
  "page": 7,
  "last": false,
  "content": [
    {
      "id": 70,
      "name": "Model 70",
    },
    {
      "id": 71,
      "name": "Model 71",
    },
    {
      "id": 72,
      "name": "Model 72",
    },
    {
      "id": 73,
      "name": "Model 73",
    },
    {
      "id": 74,
      "name": "Model 74",
    },
    {
      "id": 75,
      "name": "Model 75",
    },
    {
      "id": 76,
      "name": "Model 76",
    },
    {
      "id": 77,
      "name": "Model 77",
    },
    {
      "id": 78,
      "name": "Model 78",
    },
    {
      "id": 79,
      "name": "Model 79",
    },
  ],
};

Map<String, dynamic> pagina8 = {
  "page": 8,
  "last": false,
  "content": [
    {
      "id": 80,
      "name": "Model 80",
    },
    {
      "id": 81,
      "name": "Model 81",
    },
    {
      "id": 82,
      "name": "Model 82",
    },
    {
      "id": 83,
      "name": "Model 83",
    },
    {
      "id": 84,
      "name": "Model 84",
    },
    {
      "id": 85,
      "name": "Model 85",
    },
    {
      "id": 86,
      "name": "Model 86",
    },
    {
      "id": 87,
      "name": "Model 87",
    },
    {
      "id": 88,
      "name": "Model 88",
    },
    {
      "id": 89,
      "name": "Model 89",
    },
  ],
};

Map<String, dynamic> pagina9 = {
  "page": 9,
  "last": false,
  "content": [
    {
      "id": 90,
      "name": "Model 90",
    },
    {
      "id": 91,
      "name": "Model 91",
    },
    {
      "id": 92,
      "name": "Model 92",
    },
    {
      "id": 93,
      "name": "Model 93",
    },
    {
      "id": 94,
      "name": "Model 94",
    },
    {
      "id": 95,
      "name": "Model 95",
    },
    {
      "id": 96,
      "name": "Model 96",
    },
    {
      "id": 97,
      "name": "Model 97",
    },
    {
      "id": 98,
      "name": "Model 98",
    },
    {
      "id": 99,
      "name": "Model 99",
    },
  ],
};
