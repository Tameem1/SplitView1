//
//  ViewController.swift
//  SplitView
//
//  Created by Make school on 4/27/18.
//  Copyright © 2018 tamem. All rights reserved.
//
import Foundation
import UIKit
import WebKit
import SVProgressHUD
class ViewController: UIViewController, WKNavigationDelegate {
    
    
    
    @IBOutlet var WebView1: WKWebView!
    @IBOutlet var WebView2: WKWebView!
    @IBOutlet var YTButton: UIButton!
    @IBOutlet var MenuButton1: UIButton!
    @IBOutlet var MenuButton2: UIButton!
    @IBOutlet var FYIStackView1: UIStackView!
    @IBOutlet var GTStackView1: UIStackView!
    @IBOutlet var CTStackView1: UIStackView!
    @IBOutlet var FYIStackView2: UIStackView!
    @IBOutlet var GTStackView2: UIStackView!
    @IBOutlet var CTStackView2: UIStackView!
    
    

    
    var isChecked = true
    var isChecked2 = true
    
    
    
    
    /*---------------------------*/
    // URL Request
    /*---------------------------*/
    let YouTubeURL = URL (string: "https://www.youtube.com/")
    let TwitterURL = URL (string: "https://twitter.com/")
    let FacebookURL = URL(string: "http://www.facebook.com/")
    let InstagramURL = URL(string: "https://www.instagram.com/?hl=en")
    let GoogleURL = URL(string: "https://www.google.com/")
    let GmailURL = URL(string: "https://www.google.com/gmail/")
    let calculatorURL = URL(string: "https://www.desmos.com/scientific")
    let googleKeepURL = URL(string: "https://keep.google.com/u/0/")
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        WebView1.navigationDelegate = self
        WebView2.navigationDelegate = self

        MenuButton1.isHidden = true
        MenuButton2.isHidden = true
        
        
//        WebView2 = WKWebView(frame: CGRect( x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height / 2 ), configuration: WKWebViewConfiguration() )
//
//        WebView1 = WKWebView(frame: CGRect( x: 0, y: 20, width: self.view.frame.width, height: self.view.frame.height / 2 ), configuration: WKWebViewConfiguration() )
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    /*---------------------------*/
    //Action buttons for WebView1
    /*---------------------------*/
    @IBAction func YTButtonAction(_ sender: Any) {
        MenuButton1.isHidden = false
        let YTRequest = URLRequest(url: YouTubeURL!)
        WebView1.load(YTRequest)
        
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    @IBAction func FButtonAction(_ sender: Any) {
        MenuButton1.isHidden = false
        let FRequest = URLRequest(url: FacebookURL!)
        WebView1.load(FRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    
    @IBAction func IButtonAction(_ sender: Any) {
        MenuButton1.isHidden = false
        let IRequest = URLRequest(url: InstagramURL!)
        WebView1.load(IRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    
    @IBAction func GButtonAction(_ sender: Any){
        MenuButton1.isHidden = false
        let GRequest = URLRequest(url: GoogleURL!)
        WebView1.load(GRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    @IBAction func TButtonAction(_ sender: Any) {
        MenuButton1.isHidden = false
        let TRequest = URLRequest(url: TwitterURL!)
        WebView1.load(TRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    
    @IBAction func MButtonAction(_ sender: Any) {
        MenuButton1.isHidden = false
        let GMRequest = URLRequest(url: GmailURL!)
        WebView1.load(GMRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    @IBAction func CalcButtonAction(_ sender: Any) {
        MenuButton1.isHidden = false
        let calcRequest = URLRequest(url: calculatorURL!)
        WebView1.load(calcRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    @IBAction func GKeepButtonAction(_ sender: Any) {
        MenuButton1.isHidden = false
        let GKeepRequest = URLRequest(url: googleKeepURL!)
        WebView1.load(GKeepRequest)
        FYIStackView1.isHidden = true
        GTStackView1.isHidden = true
        CTStackView1.isHidden = true
        if WebView1.isLoading {
            SVProgressHUD.show()
        }
    }
    
    
    
    
    /*---------------------------*/
    //Action buttons for WebView2
    /*---------------------------*/
    @IBAction func FButtonAction2(_ sender: Any) {
        MenuButton2.isHidden = false
        let FRequest = URLRequest(url: FacebookURL!)
        WebView2.load(FRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        if WebView2.isLoading {
            SVProgressHUD.show()
            print("is loading")
        }
    }
    @IBAction func YTButtonAction2(_ sender: Any) {
        MenuButton2.isHidden = false
        let YTRequest = URLRequest(url: YouTubeURL!)
        WebView2.load(YTRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        if WebView2.isLoading {
            SVProgressHUD.show()
            print("is loading")
        }
    }
    @IBAction func IButtonAction2(_ sender: Any) {
        MenuButton2.isHidden = false
        let IRequest = URLRequest(url: InstagramURL!)
        WebView2.load(IRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        if WebView2.isLoading {
            SVProgressHUD.show()
        }
    }
    @IBAction func GButtonAction2(_ sender: Any) {
        MenuButton2.isHidden = false
        let GRequest = URLRequest(url: GoogleURL!)
        WebView2.load(GRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        if WebView2.isLoading {
            SVProgressHUD.show()
        }
    }
    
    @IBAction func TButtonAction2(_ sender: Any) {
        MenuButton2.isHidden = false
        let TRequest = URLRequest(url: TwitterURL!)
        WebView2.load(TRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        if WebView2.isLoading {
            SVProgressHUD.show()
            print("is loading")
        }
    }
    @IBAction func MButtonAction2(_ sender: Any) {
        MenuButton2.isHidden = false
        let GMRequest = URLRequest(url: GmailURL!)
        WebView2.load(GMRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        if WebView2.isLoading {
            SVProgressHUD.show()
            print("is loading")
        }
    }
    @IBAction func CalcButtonAction2(_ sender: Any) {
        MenuButton2.isHidden = false
        let calcRequest = URLRequest(url: calculatorURL!)
        WebView2.load(calcRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        if WebView2.isLoading {
            SVProgressHUD.show()
            print("is loading")
        }
    }
    @IBAction func TipsButtonAction(_ sender: Any) {
        MenuButton2.isHidden = false
        let GKeepRequest = URLRequest(url: googleKeepURL!)
        WebView2.load(GKeepRequest)
        FYIStackView2.isHidden = true
        GTStackView2.isHidden = true
        CTStackView2.isHidden = true
        
    }
    //Exit Button
    @IBAction func ExitButton1(_ sender: Any) {
        isChecked = !isChecked
        if isChecked {
            FYIStackView1.isHidden = true
            GTStackView1.isHidden = true
            CTStackView1.isHidden = true
        } else {
            FYIStackView1.isHidden = false
            GTStackView1.isHidden = false
            CTStackView1.isHidden = false
        }
    }
    
    
    @IBAction func ExitButton2(_ sender: Any) {
        isChecked2 = !isChecked2
        if isChecked2 {
            FYIStackView2.isHidden = true
            GTStackView2.isHidden = true
            CTStackView2.isHidden = true
        } else {
            FYIStackView2.isHidden = false
            GTStackView2.isHidden = false
            CTStackView2.isHidden = false
        }
    }
    
   
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        // fill data
        let savedUsername = "USERNAME"
        let savedPassword = "PASSWORD"
        
        let fillForm = String(format: "document.getElementById('expert_email').value = '\(savedUsername)';document.getElementById('expert_password').value = '\(savedPassword)';")
        webView.stringByEvaluatingJavaScript(from: fillForm)
        
        //check checkboxes
        webView.stringByEvaluatingJavaScript(from: "document.getElementById('expert_remember_me').checked = true; document.getElementById('expert_terms_of_service').checked = true;")
        
    }
    /*-------------*/
    //Finsih Loading
    /*-------------*/
    func webView(_ webView: WKWebView,
                 didFinish navigation: WKNavigation!){
        SVProgressHUD.dismiss()
    }

}

