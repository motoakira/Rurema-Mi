//
//  Rurema_MiUITests.swift
//  Rurema-MiUITests
//
//  Created by 進藤 元明 on 2023/03/25.
//

import UIKit
import WebKit
import XCTest

@testable import Rurema_Mi

final class Rurema_MiUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
//テストするビューコントローラーを初期化
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let ruby_ver = "Ruby 3.3"
        let rootStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["root"]/*[[".buttons[\"root\"].staticTexts[\"root\"]",".staticTexts[\"root\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        
        let webViewsQuery = app.webViews.webViews.webViews
        let top_page = webViewsQuery.staticTexts[ruby_ver]
        XCTAssertNotNil(top_page)
        top_page.tap()
        
        let some_link_text = "Rubyの起動"
        let some_link = webViewsQuery.staticTexts[some_link_text]
        XCTAssertNotNil(some_link)
        some_link.tap()
        let some_link_target = app.webViews.webViews.webViews.otherElements[some_link_text]
        XCTAssertNotNil(some_link_target)
        
        app.buttons["root"].tap()
        XCTAssertNotNil(webViewsQuery.staticTexts[ruby_ver])

        app/*@START_MENU_TOKEN@*/.staticTexts["search"]/*[[".buttons[\"search\"].staticTexts[\"search\"]",".staticTexts[\"search\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let search_title = app.webViews.webViews.webViews.otherElements["最速Rubyリファレンスマニュアル検索！ | るりまサーチ"]
        XCTAssertNotNil(search_title)
        let text_field = search_title.children(matching: .other).element(boundBy: 3).children(matching: .textField).element
        text_field.tap()
        text_field.typeText("map")
        XCTAssertNotNil(webViewsQuery.staticTexts["Array#map -> Enumerator"])
        rootStaticText.tap()
        XCTAssertNotNil(webViewsQuery.staticTexts[ruby_ver])
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
/*
    func testSearchString() throws {
        let app = XCUIApplication()
        app.launch()
        XCUIApplication()/*@START_MENU_TOKEN@*/.staticTexts["search"]/*[[".buttons[\"search\"].staticTexts[\"search\"]",".staticTexts[\"search\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
*/
}
