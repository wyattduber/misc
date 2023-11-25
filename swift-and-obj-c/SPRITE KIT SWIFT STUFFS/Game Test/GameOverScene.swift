//
//  GameOverScene.swift
//  Game Test
//
//  Created by Todd Duberstein on 6/10/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    
    init(size: CGSize, won:Bool){
        
        super.init(size: size)
        
        backgroundColor = SKColor.whiteColor()
        
        var message = won ? "You Won!" : "You Lose :("
        
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.blackColor()
        label.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        self.addChild(label)
        
        runAction(SKAction.sequence([
        SKAction.waitForDuration(1.0),
            SKAction.runBlock() {
                let reveal = SKTransition.flipHorizontalWithDuration(0.5)
                let scene = GameScene(size: size)
                self.view?.presentScene(scene, transition: reveal)
          }
      ]))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}