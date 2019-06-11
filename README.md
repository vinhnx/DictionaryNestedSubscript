# DictionaryNestedSubscript

Enable nested `subscript` on `Dictionary`.

```swift
let dictionary: [String: Any] = [
"countries": [
    "japan": [
        "capital": [
            "name": "tokyo",
            "lat": "35.6895",
            "lon": "139.6917"
        ],
        "language": "japanese"
        ]
    ]
]

dictionary[jsonDict: "countries"]?[jsonDict: "japan"]?[jsonDict: "capital"]?["name"] // "tokyo"
```
