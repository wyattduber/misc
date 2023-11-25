//
//  LevelFourScene.swift
//  Drop The Ball
//
//  Created by Todd Duberstein on 4/22/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import Foundation
import SpriteKit
import AVFoundation


class EndScene : SKScene, SKPhysicsContactDelegate {
    
    var youWinLabel = SKLabelNode(text: "You Win!")
    var youWinLabel2 = SKLabelNode(text: "You Win!")
    var playAgainLabel = SKLabelNode(text: "Play Again!")
    var menuLabel = SKLabelNode(text: "Main Menu")
    var removeBalls = SKLabelNode(text: "Remove Balls")
    
    struct physicsCategory {
    
        static let None : UInt32 = 0 //0
        static let Ball : UInt32 = 0b1 //1
        static let Delete1 : UInt32 = 0b10 //2
        static let Delete2 : UInt32 = 0b11 //3
        static let Border : UInt32 = 0b100 //4
        static let Delete3 : UInt32 = 0b101 //5
        static let All : UInt32 = UInt32.max
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        
        var contactBodyOne: SKPhysicsBody
        var contactBodyTwo: SKPhysicsBody
        
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask{
            
            contactBodyOne = contact.bodyA
            contactBodyTwo = contact.bodyB
            
        }
        else{
            
            contactBodyOne = contact.bodyB
            contactBodyTwo = contact.bodyA
            
        }
        
        if (contactBodyOne.categoryBitMask == 2) && (contactBodyTwo.categoryBitMask == 1){
        
            contactBodyOne.node!.removeFromParent()
            
        }
        
        if (contactBodyOne.categoryBitMask == 3) && (contactBodyTwo.categoryBitMask == 1){
            
            contactBodyOne.node!.removeFromParent()
            
        }
        
        if (contactBodyOne.categoryBitMask == 5) && (contactBodyTwo.categoryBitMask == 1){
            
            contactBodyOne.node!.removeFromParent()
            
        }
        
        if (contactBodyOne.categoryBitMask == 1) && (contactBodyTwo.categoryBitMask == 4) {
            
            if let soundURL = Bundle.main.url(forResource: "jump", withExtension: "wav") {
                
                var mySound: SystemSoundID = 5
                
                AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
                AudioServicesPlaySystemSound(mySound)
                
            }
            
        }
        
    }
    
    override func didMove(to view: SKView) {

        self.physicsWorld.gravity = CGVector(dx: 0, dy: -9.8)
        
        let sceneBody = SKPhysicsBody(edgeLoopFrom: self.frame)
        sceneBody.friction = 0
        self.physicsBody = sceneBody
        self.physicsBody?.categoryBitMask = physicsCategory.Border
        self.physicsBody?.collisionBitMask = physicsCategory.Ball
        self.physicsBody?.contactTestBitMask = physicsCategory.None

        youWinLabel.fontName = "Consolas"
        youWinLabel.fontSize = 100
        youWinLabel.fontColor = SKColor.orange
        youWinLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.6)
        youWinLabel.physicsBody = SKPhysicsBody(size = self.size)
        youWinLabel.physicsBody?.affectedByGravity = false
        youWinLabel.physicsBody?.isDynamic = false
        youWinLabel.physicsBody?.contactTestBitMask = physicsCategory.Ball
        youWinLabel.physicsBody?.contactTestBitMask = physicsCategory.None | physicsCategory.Ball
        self.addChild(youWinLabel)
        
        youWinLabel2.fontName = "Consolas"
        youWinLabel2.fontSize = 40
        youWinLabel2.fontColor = SKColor.orange
        youWinLabel2.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.3)
        youWinLabel2.physicsBody = SKPhysicsBody(size = self.size)
        youWinLabel2.physicsBody?.affectedByGravity = false
        youWinLabel2.physicsBody?.isDynamic = false
        youWinLabel2.physicsBody?.contactTestBitMask = physicsCategory.None | physicsCategory.Ball
        self.addChild(youWinLabel2)
        
        playAgainLabel.position = CGPoint(x: self.frame.size.width*0.70, y: self.frame.size.height*0.95)
        playAgainLabel.fontName = "AmericanTypewriter"
        playAgainLabel.fontSize = 30
        playAgainLabel.fontColor = SKColor.green
        playAgainLabel.name = "playAgainButton"
        playAgainLabel.physicsBody = SKPhysicsBody(size = self.size)
        playAgainLabel.physicsBody?.affectedByGravity = false
        playAgainLabel.physicsBody?.isDynamic = false
        playAgainLabel.physicsBody?.categoryBitMask = physicsCategory.Delete1
        playAgainLabel.physicsBody?.contactTestBitMask = physicsCategory.None | physicsCategory.Ball
        self.addChild(playAgainLabel)
        
        menuLabel.position = CGPoint(x: self.frame.size.width*0.4, y: self.frame.size.height*0.95)
        menuLabel.fontColor = SKColor.green
        menuLabel.fontSize = 30
        menuLabel.fontName = "AmericanTypewriter"
        menuLabel.name = "menuButton"
        menuLabel.physicsBody = SKPhysicsBody(size = self.size)
        menuLabel.physicsBody?.affectedByGravity = false
        menuLabel.physicsBody?.categoryBitMask = physicsCategory.Delete2
        menuLabel.physicsBody?.contactTestBitMask = physicsCategory.None | physicsCategory.Ball
        self.addChild(menuLabel)
        
        removeBalls.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        removeBalls.fontColor = SKColor.red
        removeBalls.fontName = "Helvetica"
        removeBalls.fontSize = 30
        removeBalls.name = "removeBalls"
        self.addChild(removeBalls)
        
        let rotating = SKAction .rotate(byAngle: CGFloat(M_PI), duration: 0.1)
        
        youWinLabel.run(SKAction.repeatForever(rotating))
        
        backgroundColor = SKColor.blue
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches{
        
        let positionOfTouch = touch.location(in: self)
        
        let touchedNode = self.atPoint(positionOfTouch)
            
            let ball = SKShapeNode(circleOfRadius: 25)
            ball.fillColor = SKColor.red
            ball.position = positionOfTouch
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 25)
            ball.physicsBody?.affectedByGravity = true
            ball.physicsBody?.linearDamping = 0
            ball.physicsBody?.restitution = 0.9
            self.addChild(ball)
        
            if touchedNode.name == "playAgainButton" {
              
                let newScene = LevelOneScene(size: self.size)
                newScene.scaleMode = self.scaleMode
                let reveal = SKTransition.doorsOpenHorizontal(withDuration: 1)
                self.view?.presentScene(newScene, transition: reveal)
                
              }
            
            if touchedNode.name == "menuButton" {
                
                let newScene = MenuScene(size: self.size)
                newScene.scaleMode = self.scaleMode
                let reveal = SKTransition.doorsOpenHorizontal(withDuration: 1)
                self.view?.presentScene(newScene, transition: reveal)
                
            }
            
            if touchedNode.name == "resetBalls" {
                
                self.removeFromParent()
                
            }
                
            }
            
        }
    
    
}
            
    


        
    
    

