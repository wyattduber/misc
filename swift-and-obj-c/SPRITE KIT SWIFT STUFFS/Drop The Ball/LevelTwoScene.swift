
//
//  GameScene.swift
//  Drop The Ball
//
//  Created by Todd Duberstein on 4/13/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit
import AVFoundation

class LevelTwoScene: SKScene, SKPhysicsContactDelegate {
    
    var ball = SKShapeNode(circleOfRadius: 25)
    var spriteNode = SKSpriteNode(imageNamed: "obstacleImage")
    var winLocationRightButton = SKSpriteNode(imageNamed: "obstacleImage")
    var pressAnywhere = SKLabelNode(text: "Touch the ball to begin!")
    var resetButton = SKSpriteNode(imageNamed: "resetButton")
    
    struct physicsCatagory {
        
        static let None : UInt32 = 0 //0
        static let Square : UInt32 = 0b1 //1
        static let Ball : UInt32 = 0b10 //2
        static let Border : UInt32 = 0b100 //4
        static let LeftWinButton : UInt32 = 0b101 //5
        static let RightWinButton : UInt32 = 0b110 //6
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
        
        if (contactBodyOne.categoryBitMask == 2) && (contactBodyTwo.categoryBitMask == 5){
            
            contactBodyOne.node!.removeFromParent()
            
            winLocationRightButton.isHidden = false
            spriteNode.isHidden = false
            ball.isHidden = false
            resetButton.isHidden = true
            
            let youWinLabel = SKLabelNode(text: "Level Clear!")
            youWinLabel.fontColor = SKColor.blue
            youWinLabel.fontSize = 40
            youWinLabel.fontName = "Consolas"
            youWinLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.66)
            self.addChild(youWinLabel)
            
            _ = SKAction.wait(forDuration: 0.01)
            _ = SKAction.run {
                
                youWinLabel.isHidden = false
                
                
            }
            
            if (youWinLabel.isHidden == false) {
                
                let nextLevelTimer = SKAction.wait(forDuration: 2.5)
                let nextLevelRun = SKAction.run{
                    
                    let newScene = LevelThreeScene(size: self.size)
                    newScene.scaleMode = self.scaleMode
                    let reveal = SKTransition.doorsOpenHorizontal(withDuration: 1)
                    self.view?.presentScene(newScene, transition: reveal)
                    
                }
                
                run(SKAction.sequence([nextLevelTimer, nextLevelRun]))
                
            }
            
            
        }
        
        if (contactBodyOne.categoryBitMask == 2) && (contactBodyTwo.categoryBitMask == 6){
            
            contactBodyOne.node!.removeFromParent()
            
            winLocationRightButton.isHidden = true
            spriteNode.isHidden = true
            ball.isHidden = true
            
            let youWinLabel = SKLabelNode(text: "Level Clear!")
            youWinLabel.fontColor = SKColor.blue
            youWinLabel.fontSize = 40
            youWinLabel.fontName = "Consolas"
            youWinLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.66)
            self.addChild(youWinLabel)
            
            let wait1 = SKAction.wait(forDuration: 0)
            let run1 = SKAction.run {
                
                youWinLabel.isHidden = false
            
            }
            
            if (youWinLabel.isHidden == false) {
                
                let nextLevelTimer = SKAction.wait(forDuration: 2.5)
                let nextLevelRun = SKAction.run{
                    
                    let newScene = LevelThreeScene(size: self.size)
                    newScene.scaleMode = self.scaleMode
                    let reveal = SKTransition.doorsOpenHorizontal(withDuration: 1)
                    self.view?.presentScene(newScene, transition: reveal)
                    
                }
                
                run(SKAction.sequence([nextLevelTimer, nextLevelRun]))
                
            }
            
            run(SKAction.sequence([wait1, run1]))
            
        }
        
        if (contactBodyOne.categoryBitMask == 2) && (contactBodyTwo.categoryBitMask == 4) {
            
            if let soundURL = Bundle.main.url(forResource: "jump", withExtension: "wav") {
                
                var mySound: SystemSoundID = 2
                
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
        self.physicsBody?.categoryBitMask = physicsCatagory.Border
        self.physicsBody?.collisionBitMask = physicsCatagory.Ball
        self.physicsBody?.contactTestBitMask = physicsCatagory.None
        
        spriteNode.size = CGSize(width: 80, height: 415)
        spriteNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        spriteNode.physicsBody = SKPhysicsBody(rectangleOf: spriteNode.size)
        spriteNode.physicsBody?.affectedByGravity = false
        spriteNode.physicsBody?.isDynamic = false
        spriteNode.physicsBody?.categoryBitMask = physicsCatagory.Square
        spriteNode.physicsBody?.collisionBitMask = physicsCatagory.None | physicsCatagory.Ball
        self.addChild(spriteNode)
        
        winLocationRightButton.size = CGSize(width: 200, height: 100)
        winLocationRightButton.position = CGPoint(x: self.frame.size.width*0.9, y: self.frame.size.height*0.2)
        winLocationRightButton.physicsBody = SKPhysicsBody(rectangleOf: winLocationRightButton.size)
        winLocationRightButton.physicsBody?.affectedByGravity = false
        winLocationRightButton.physicsBody?.isDynamic = false
        winLocationRightButton.physicsBody?.categoryBitMask = physicsCatagory.RightWinButton
        winLocationRightButton.physicsBody?.contactTestBitMask = physicsCatagory.Ball
        addChild(winLocationRightButton)
        
        pressAnywhere.position = CGPoint(x:self.frame.size.width/2, y:self.frame.size.height*0.66)
        pressAnywhere.fontSize = 40
        pressAnywhere.fontColor = SKColor.blue
        pressAnywhere.fontName = "Arial"
        self.addChild(pressAnywhere)
        
        backgroundColor = SKColor.orange
        
        ball.fillColor = SKColor.black
        ball.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.9)
        ball.name = "ball"
        self.addChild(ball)
        
        physicsWorld.contactDelegate = self
        
        winLocationRightButton.isHidden = false
        spriteNode.isHidden = false
        ball.isHidden = false
        
        let rotatingAction = SKAction.rotate(byAngle: CGFloat(M_PI), duration: 0.5)
        
        spriteNode.run(SKAction.repeatForever(rotatingAction))
        
        resetButton.position = CGPoint(x: self.frame.size.width*0.85, y: self.frame.size.height*0.97)
        resetButton.size = CGSize(width: 50, height: 50)
        resetButton.name = "resetButton"
        self.addChild(resetButton)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            /* Called when a touch begins */
            
            for touch: AnyObject in touches {
                
                let positionOfTouch = touch.location(in: self)
                
                let touchedNode = self.atPoint(positionOfTouch)
                
                if touchedNode.name == "ball" {
                    
                    ball.physicsBody = SKPhysicsBody(circleOfRadius: 25)
                    ball.physicsBody?.affectedByGravity = true
                    ball.physicsBody?.restitution = 0.75
                    ball.physicsBody?.linearDamping = 0
                    ball.physicsBody?.categoryBitMask = physicsCatagory.Ball
                    ball.physicsBody?.collisionBitMask = physicsCatagory.Border | physicsCatagory.Ball | physicsCatagory.Square
                    
                    pressAnywhere.isHidden = true
                    
                    
                }
                
                if touchedNode.name == "resetButton" {
                    
                    ball.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.9)
                    ball.physicsBody?.affectedByGravity = false
                    ball.physicsBody?.linearDamping = 1000
                    
                    resetTimes + 1
                    
                }
                
            }
            
        }
        
        /*for touch: nextLevelButton in touches {
        
        let location = touch.locationInNode(self)
        
        if nextLevelButton.containsPoint(location) {
        //println("tapped!")
        
        let nextScene = LevelThreeScene(size: self.size)
        nextScene.scaleMode = scaleMode
        let reveal = SKTransition.doorsOpenHorizontalWithDuration(0.01)
        self.view?.presentScene(nextScene, transition: nil)
        
        }
        }*/
        
    }
    
