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
     
    override func viewDidLoad() {
        super.viewDidLoad()

        let request = URLRequest(url: URL(string: RUREMA_URI)!)
        webView.load(request)

    }


}

