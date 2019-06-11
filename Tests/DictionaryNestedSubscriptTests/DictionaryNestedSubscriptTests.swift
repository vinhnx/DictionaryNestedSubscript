@testable import DictionaryNestedSubscript
import XCTest

final class DictionaryNestedSubscriptTests: XCTestCase {
    func testExample() {
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

        let result = dictionary[jsonDict: "countries"]?[jsonDict: "japan"]?[jsonDict: "capital"]?["name"] as? String
        XCTAssertEqual(result, "tokyo")
    }

    static var allTests = [
        ("testExample", testExample)
    ]
}
