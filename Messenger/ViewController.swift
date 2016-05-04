//
//  ViewController.swift
//  messenger
//
//  Created by Bror Brurberg on 04.05.2016.
//  Copyright © 2016 Bror Brurberg. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    
    @IBOutlet var webView: WebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://messenger.com"
        self.webView.mainFrame.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // do nothing
        }
    }
}

