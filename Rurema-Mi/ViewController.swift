//
//  ViewController.swift
//  Rurema-Mi
//
//  Created by 進藤 元明 on 2023/03/25.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
     
    @IBAction func root(_ sender: UIButton) {
        webView.load(rootURLrequest())
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let request = rootURLrequest()
        webView.load(request)

    }

private
    func rootURLrequest() -> URLRequest {
        return URLRequest(url: URL(string: RUREMA_URI)!)
    }
}

