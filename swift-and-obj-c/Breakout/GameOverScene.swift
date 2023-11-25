//
//  GameOverScene.swift
//  Breakout
//
//  Created by Todd Duberstein on 6/12/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit

let GameOverLabelCategoryName = "gameOverLabel"

class GameOverScene: SKScene {
 
    var gameWon : Bool = false {
        
        didSet {
            
            let gameOverLabel = childNodeWithName(GameOverLabelCategoryName) as! SKLabelNode
            gameOverLabel.text = gameWon ? "You Win!" : "You Lose!"
            
        }
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        if let view = view{
            
            let gameScene = GameScene.unarchiveFromFile("GameScene") as! GameScene
            view.presentScene(gameScene)
            
        }
        
    }
    
}
