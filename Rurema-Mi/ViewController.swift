//
//  ViewController.swift
//  Rurema-Mi
//
//  Created by 進藤 元明 on 2023/03/25.
//

import UIKit
import WebKit

let RUREMA_URI: String = "https://docs.ruby-lang.org/ja/"
let RUREMA_SEARCH_URI: String = "https://docs.ruby-lang.org/ja/search/"

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
      
    @IBAction func root(_ sender: UIButton) {
        webView.load(rootURLrequest())
    }

    @IBAction func search(_ sender: UIButton) {
        webView.load(searchURLrequest())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(webView)
        let request = rootURLrequest()
        webView.load(request)

    }

    override func viewDidDisappear(_ animated: Bool) {
        webView.removeFromSuperview()
    }

private
    func rootURLrequest() -> URLRequest {
        return URLRequest(url: URL(string: RUREMA_URI)!)
    }
    func searchURLrequest() -> URLRequest {
        return URLRequest(url: URL(string: RUREMA_SEARCH_URI)!)
    }
}

