//
//  GameScene.swift
//  Actions Tutorial
//
//  Created by Todd Duberstein on 4/10/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        var spriteNode = SKSpriteNode(imageNamed: "myImage")
        spriteNode.size = CGSize(width: 180, height: 180)
        spriteNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        self.addChild(spriteNode)
        
        var actionOne = SKAction.moveTo(CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.2), duration: 1)
        var actionTwo = SKAction.scaleBy(0.5, duration: 0.5)
        var actionThree = SKAction.moveTo(CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.8), duration: 1)
        var actionSequence = SKAction.sequence([actionOne, actionTwo, actionTwo.reversedAction(), actionThree, actionTwo, actionTwo.reversedAction()])
        
        spriteNode.runAction(SKAction.repeatActionForever(actionSequence))
        
        var crackOneOffLabel = SKLabelNode(text: "I just cracked one off!")
        crackOneOffLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.8)
        crackOneOffLabel.fontColor = SKColor.blueColor()
        crackOneOffLabel.fontSize = 30
        crackOneOffLabel.fontName = "AmericanTypewriter"
        self.addChild(crackOneOffLabel)
        
        
    }
    
    
}
