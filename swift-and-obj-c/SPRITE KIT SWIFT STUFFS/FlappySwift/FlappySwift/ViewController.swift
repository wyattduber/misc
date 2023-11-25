//
//  ViewController.swift
//  FlappySwift
//
//  Created by Todd Duberstein on 2/25/19.
//  Copyright © 2019 DuberFam. All rights reserved.
//

import UIKit
import SpriteKit

extension SKNode {
    
    class func unarchiveFromFile(_ file : String) -> SKNode? {
        
        let path = Bundle
        
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let scene = GameScene.unarchiveFromFile("GameScene") as? GameScene {
            
            let skView = self.view as! SKView
            skView.showFPS = true
            skView.showsNodeCount = True
            
        }
        
    }


}

