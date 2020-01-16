import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(GoogleAnalyticsPublishPluginTests.allTests),
    ]
}
#endif
