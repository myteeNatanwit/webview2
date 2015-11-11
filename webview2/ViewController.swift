//
//  ViewController.swift
//  webview2
//
//  Created by Michael Tran on 10/11/2015.
//  Copyright © 2015 intcloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
//        webview.delegate = self; // this line is to link with the UIWebViewDelegate protocol for bridging purpose. More details later. - line 1
        webview.scrollView.bounces = false; // block your webview from bouncing so it works as an app. - line 2
        let localfilePath = NSBundle.mainBundle().URLForResource("index1.html", withExtension: "", subdirectory: "www"); // load file index.html in www - line 3
        let request = NSURLRequest(URL: localfilePath!); // get the request to the file - line 4
        webview.loadRequest(request); // load it on the webview - line 5
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

