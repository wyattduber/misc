//
//  GameScene.swift
//  Nodes Tutorial
//
//  Created by Todd Duberstein on 4/9/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {

        var exampleLabelNode = SKLabelNode(fontNamed: "AmericanTypewriter")
        exampleLabelNode.text = "Im Coding Swift! :D"
        exampleLabelNode.fontSize = 30
        exampleLabelNode.color = SKColor.orangeColor()
        exampleLabelNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.75)
        self.addChild(exampleLabelNode)
        
        var exampleSpriteNode = SKSpriteNode(imageNamed: "myImage")
        exampleSpriteNode.size = CGSize(width: 200, height: 200)
        exampleSpriteNode.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        exampleSpriteNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.25)
        exampleSpriteNode.zPosition = 100
        exampleSpriteNode.name = "exampleName"
        self.addChild(exampleSpriteNode)
        
    }
    
}