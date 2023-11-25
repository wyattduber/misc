//
//  GameViewController.swift
//  Drop The Ball
//
//  Created by Todd Duberstein on 4/13/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import UIKit
import SpriteKit

extension SKNode {
    class func unarchiveFromFile(_ file : NSString) -> SKNode? {
        if let path = Bundle.main.path(forResource: file as String, ofType: "sks") {
            let sceneData = try! Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
            let archiver = NSKeyedUnarchiver(forReadingWith: sceneData)
            
            archiver.setClass(self.classForKeyedUnarchiver(), forClassName: "SKScene")
            let scene = archiver.decodeObject(forKey: NSKeyedArchiveRootObjectKey) as! MenuScene
            archiver.finishDecoding()
            return scene
        } else {
            return nil
        }
    }
}

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scene = MenuScene.unarchiveFromFile("GameScene") as? MenuScene {
            // Configure the view.
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .aspectFill
            
            skView.presentScene(scene)
            
            
        }
        
        /* if let scene2 = LevelTwoScene.unarchiveFromFile("LevelTwoScene") as? LevelTwoScene{
        // Configure the view.
        let skView2 = self.view as SKView
        skView2.showsFPS = true
        skView2.showsNodeCount = true
        
        /* Sprite Kit applies additional optimizations to improve rendering performance */
        skView2.ignoresSiblingOrder = true
        
        /* Set the scale mode to scale to fit the window */
        scene2.scaleMode = .AspectFill
        
        skView2.presentScene(scene2)
        
        }*/
        
    }
    
    override var shouldAutorotate : Bool {
        return true
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return UIInterfaceOrientationMask.allButUpsideDown
        } else {
            return UIInterfaceOrientationMask.all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
}
