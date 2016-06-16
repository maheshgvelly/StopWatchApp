//
//  ViewController.swift
//  StopWatch
//
//  Created by Mahesh on 2/18/16.
//  Copyright © 2016 Mahesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0


    @IBOutlet weak var timerDispaly: UILabel!
    
    func increseTimer(){
        
        time++
        timerDispaly.text = "\(time)"
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func paly(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increseTimer"), userInfo: nil, repeats: true)
        
    }

    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }

    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
       
        timerDispaly.text = "0"
        
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

