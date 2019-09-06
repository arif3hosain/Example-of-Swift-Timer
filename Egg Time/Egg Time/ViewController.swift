//
//  ViewController.swift
//  Egg Time
//
//  Created by Arif Hosain on 19/8/19.
//  Copyright © 2019 mas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var showTime: UILabel!
    var time = 210
    var timer = Timer()
    

    @IBAction func play(_ sender: Any) {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.performTime), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
        showTime.text = String(time)
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if time > 10 {
            time -= 10
            showTime.text = String(time)
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        time = 210
        showTime.text = String(time)
    }
    
    @objc func performTime()  {
       time -= 1
        showTime.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.performTime), userInfo: nil, repeats: true)
    }
    
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

