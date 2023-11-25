//
//  View2ViewController.swift
//  Hellow World Swift Tutorial
//
//  Created by Todd Duberstein on 9/20/14.
//  Copyright (c) 2014 Todd Duberstein. All rights reserved.
//

import UIKit

class View2ViewController: UIViewController {

    @IBOutlet weak var NowPressMe: UIButton!
    @IBOutlet weak var PressMe: UIButton!
    @IBOutlet weak var HelloWorld: UILabel!
    
    @IBAction func PushMeAction(sender: UIButton) {
        
        PressMe.hidden = true
        NowPressMe.hidden = true
        HelloWorld.hidden = false
        
    }
    
    @IBAction func NowPushMeAction(sender: UIButton) {
        
        NowPressMe.hidden = true
        HelloWorld.hidden = true
        PressMe.hidden = false
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HelloWorld.hidden = true
        NowPressMe.hidden = true
        PressMe.hidden = false
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
