//
//  GameScene.swift
//  UberJump
//
//  Created by Todd Duberstein on 1/10/16.
//  Copyright (c) 2016 DuberFam. All rights reserved.
//

import SpriteKit

// Layered Nodes
var backgroundNode: SKNode!
var midgroundNode: SKNode!
var foregroundNode: SKNode!
var hudNode: SKNode!

// To Accommodate iPhone 6
var scaleFactor: CGFloat!

class GameScene: SKScene {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        backgroundColor = SKColor.whiteColor()
        
        // Foreground
        foregroundNode = SKNode()
        addChild(foregroundNode)
        scaleFactor = self.size.width / 320.0
        
        // Create the game nodes
        // Background
        backgroundNode = createBackgroundNode()
        addChild(backgroundNode)
    }
}

func createBackgroundNode() -> SKNode {
    // 1
    // Create the node
    let backgroundNode = SKNode()
    let ySpacing = 64.0 * scaleFactor
    
    // 2
    // Go through images until the entire background is built
    for index in 0...19 {
        // 3
        let node = SKSpriteNode(imageNamed:String(format: "Background%02d", index + 1))
        // 4
        node.setScale(scaleFactor)
        node.anchorPoint = CGPoint(x: 0.5, y: 0.0)
        node.position = CGPoint(x: self.size.width / 2, y: ySpacing * CGFloat(index))
        //5
        backgroundNode.addChild(node)
    }
    
    // 6
    // Return the completed background node
    return backgroundNode
}

func createPlayer() -> SKNode {
    let playerNode = SKNode()
    playerNode.position = CGPoint(x: self.size.width / 2, y: 80.0)
    
    let sprite = SKSpriteNode(imageNamed: "Player")
    playerNode.addChild(sprite)
    
    return playerNode
}
