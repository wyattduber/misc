//
//  GameScene.swift
//  Scenes Tutorial
//
//  Created by Todd Duberstein on 4/11/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {

        backgroundColor = SKColor.orangeColor()
        
        var myLabel = SKLabelNode(fontNamed: "AmericanTypewriter")
        myLabel.text = "I once had a job crushing soda cans..."
        myLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        myLabel.color = SKColor.blueColor()
        myLabel.fontSize = 20
        self.addChild(myLabel)
    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        let myScene = GameScene2(size: self.size)
        myScene.scaleMode = scaleMode
        let reveal = SKTransition.fadeWithDuration(3)
        self.view?.presentScene(myScene, transition: reveal)
    }
    
}
