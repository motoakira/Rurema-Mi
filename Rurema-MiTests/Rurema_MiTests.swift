//
//  Rurema_MiTests.swift
//  Rurema-MiTests
//
//  Created by 進藤 元明 on 2023/03/25.
//

import UIKit
import WebKit
import XCTest

@testable import Rurema_Mi

final class Rurema_MiTests: XCTestCase {

    class func viewController() -> ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ViewController

        return viewController
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // Main.storyboardという名前のStoryboardを前提とします
/*        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        // Storyboardから特定のViewControllerのインスタンスを取得します
        let viewController = storyboard.instantiateViewController(withIdentifier: "RuremaViewControllerIdentifier")
  */
/*        let viewController = Rurema_MiTests.viewController()
//        while ( viewController.webView == nil ) {}
        viewController.viewDidLoad()
*/
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

/*    func testRootButtonTap() {
        let viewController = Rurema_MiTests.viewController()
        let webView: WKWebView = viewController.webView
 //        viewController.loadViewIfNeeded() // ビューをロード
         viewController.root(UIButton()) // ボタンをタップ
         // ボタンタップ後のアプリの状態を確認するアサーションを追加
        XCTAssertEqual(webView.url, URL(string: RUREMA_URI))
//        XCTAssertEqual(webView.url!.absoluteString, RUREMA_URI)
//        XCTAssertTrue(webView.url == URL(string: RUREMA_URI))
    }
*/
/*    func testSearchButtonTap() {
        let viewController = Rurema_MiTests.viewController()
        let webView: WKWebView = viewController.webView
//         viewController.loadViewIfNeeded() // ビューをロード
        viewController.search(UIButton()) // ボタンをタップ
         // ボタンタップ後のアプリの状態を確認するアサーションを追加
//        XCTAssertEqual(webView.url!.absoluteString, RUREMA_SEARCH_URI)
        XCTAssertEqual(webView.url, URL(string: RUREMA_SEARCH_URI))
     }
*/
}
