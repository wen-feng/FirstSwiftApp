//
//  ViewController.swift
//  Swift_Lesson1
//
//  Created by Wu, Weng-Feng on 2016/6/20.
//  Copyright © 2016年 Wu, Weng-Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var upImage1: UIImageView!
    @IBOutlet weak var upImage2: UIImageView!
    @IBOutlet weak var GButton: UIButton!
    @IBOutlet weak var OButton: UIButton!
    @IBOutlet weak var oopsView: UIView!
    @IBOutlet weak var oopsLabel: UILabel!
    @IBOutlet weak var sadCountLabel: UILabel!

    var sadCount = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.upImage2.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func GButton (sender: AnyObject) {
        self.upImage1.isHidden = true
        self.upImage2.isHidden = false
        self.OButton.isEnabled = true
        self.GButton.isEnabled = false
    }
    
    @IBAction func OButton (sender: AnyObject) {

        let alertView = UIAlertController(title: "You Got Message", message: "啊～要先買機票啊！", preferredStyle: .alert)
        alertView.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        present(alertView, animated: true, completion: nil)
        
        self.oopsView.isHidden = false
//        self.oopsLabel.isHidden = false
    }
    @IBAction func GotSad(sender: AnyObject) {
        if sadCount >= 10 {
            self.sadCountLabel.text = "full"
        } else {
            sadCount = sadCount + 1
            self.sadCountLabel.text = "\(sadCount)"
        }
    }

    @IBAction func closeBtn(_ sender: AnyObject) {
        self.oopsView.isHidden = true
        self.GButton.isEnabled = true
        self.OButton.isEnabled = false
        self.upImage1.isHidden = false
        self.upImage2.isHidden = true
    }
}

