//
//  ViewController.swift
//  StopWatch
//
//  Created by 佐々木八千代 on 2016/11/27.
//  Copyright © 2016年 myname. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count: Float = 0.0
    var timer: Timer = Timer()
    
    func up() {
        //
        count = count + 0.01
        //
        label.text = String(format: "%.2f", count)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func start() {
        if !timer.isValid {
            //
            timer = Timer.scheduledTimer(
                timeInterval: 0.01,
                target: self,
                selector: #selector(self.up),
                userInfo: nil,
                repeats: true
            
            )
            
        }
    }
    
    @IBAction func stop() {
        if timer.isValid {
            //
            timer.invalidate()
        }
        
    }
    @IBAction func reset() {
        if timer.isValid{
            //
            timer.invalidate()
        }
        
        count = 0.0
        label.text = String(format: "%.2f", count)
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   

}

