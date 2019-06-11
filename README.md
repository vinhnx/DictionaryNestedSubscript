# DictionaryNestedSubscript

A Swift Package that enable nested `subscript` on `Dictionary`.

I will publish this package to GitHub Package Registry when it comes out from beta.

> https://github.blog/2019-06-03-github-package-registry-will-support-swift-packages/

### Usage

```swift
import DictionaryNestedSubscript

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

### Integration (requires Xcode 11+)

1. from your project, Choose `Xcode > File > Swift Packages > Add Package Dependency...`

![demo](./screenshot/step_1.png)

2. put `https://github.com/vinhnx/DictionaryNestedSubscript` under `Choose Package Repository` field

![demo](./screenshot/step_2.png)

3. (optional) specify the version or branch or specific commit you want to use from the package

![demo](./screenshot/step_3.png)

4. then click `Next` for Xcode to resolve the package.

![demo](./screenshot/step_4.png)

5. Choose where to add Package framework to your app's target

![demo](./screenshot/step_5.png)

6. Profit :smile:

![demo](./screenshot/step_6.png)

### References

+ https://developer.apple.com/documentation/swift_packages/creating_a_swift_package_with_xcode
+ https://github.com/krzyzanowskim/CollectionSafeIndex (for the idea :happy:)
+ https://stackoverflow.com/a/41543070/1477298 (for the logic :rocket:)
