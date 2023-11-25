//
//  GameScene2.swift
//  Scenes Tutorial
//
//  Created by Todd Duberstein on 4/11/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import Foundation
import SpriteKit

class GameScene2: SKScene{
    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = SKColor.blueColor()
        
        var myLabel = SKLabelNode(fontNamed: "AmericanTypewriter")
        myLabel.text = "It was soda pressing"
        myLabel.color = SKColor.orangeColor()
        myLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        self.addChild(myLabel)
        
        
    }
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        let newScene = GameScene(size: self.size)
        newScene.scaleMode = self.scaleMode
        let reveal = SKTransition.doorsOpenHorizontalWithDuration(1)
        self.view?.presentScene(newScene, transition: reveal)
        
        
    }
    
    
}
