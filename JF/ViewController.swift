//
//  ViewController.swift
//  JF
//
//  Created by AY on 7/18/19.
//  Copyright © 2019 Mango. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func LEDOn(_ sender: Any) {
        let url = URL(string:"http://10.0.0.176/ledon")
        let urlreq = URLRequest(url: url!)
        webview.loadRequest(urlreq)
    }
    
    
    @IBAction func LEDOff(_ sender: Any) {
        let url = URL(string:"http://10.0.0.176/ledoff")
        let urlreq = URLRequest(url: url!)
        webview.loadRequest(urlreq)
    }
    
    @IBAction func TVPower(_ sender: Any) {
    
    let url = URL(string:"http://10.0.0.176/ir?code=1086218909")
    let urlreq = URLRequest(url: url!)
    webview.loadRequest(urlreq)
    }
    
    @IBAction func BlindOpen(_ sender: Any) {
        let url = URL(string:"http://10.0.0.127/Req=90")
        let urlreq = URLRequest(url: url!)
        webview.loadRequest(urlreq)
    }
    
    @IBAction func BlindClose(_ sender: Any) {
        let url = URL(string:"http://10.0.0.127/Req=0")
        let urlreq = URLRequest(url: url!)
        webview.loadRequest(urlreq)
    }
}

