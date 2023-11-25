//
//  GameScene.swift
//  Game Fun Test
//
//  Created by Todd Duberstein on 6/10/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit
import AVFoundation

var tank = SKSpriteNode(imageNamed: "TankLeft.png")
var tower1 = SKSpriteNode(imageNamed: "PT.png")
var tower2 = SKSpriteNode(imageNamed: "PT.png")
var tower3 = SKSpriteNode(imageNamed: "PT.png")
var tower4 = SKSpriteNode(imageNamed: "PT.png")
var tower5 = SKSpriteNode(imageNamed: "PT.png")
var tower1space = SKSpriteNode(imageNamed: "Tower.png")
var tower2space = SKSpriteNode(imageNamed: "towerspace")
var tower3space = SKSpriteNode(imageNamed: "towerspace")
var tower4space = SKSpriteNode(imageNamed: "towerspace")
var tower5space = SKSpriteNode(imageNamed: "towerspace")
var backgroundImage = SKSpriteNode(imageNamed: "Landscape.png")
var buyTower = SKLabelNode(fontNamed: "Arial")
var creditsNumber = 15
var creditsLabel = SKLabelNode(fontNamed: "Chalkduster")
var startGame = SKLabelNode(fontNamed: "Arial")

struct physicsCategory {
    
    static let None : UInt32 = 0
    static let All : UInt32 = UInt32.max
    static let Border : UInt32 = 0b1 //1
    static let Bullet : UInt32 = 0b10 //2
    static let Tank : UInt32 = 0b11 //3
    static let GoUp : UInt32 = 0b100 //4
    static let GoRight : UInt32 = 0b101 //5
    static let BulletOne : UInt32 = 0b110 //6
    static let BulletTwo : UInt32 = 0b111 //7
    static let BulletThree : UInt32 = 0b1000 //8
    static let BulletFour : UInt32 = 0b1001 //9
    static let BulletFive : UInt32 = 0b1010 //10
    static let End : UInt32 = 0b1011 //11
    
}

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    func didBeginContact(contact: SKPhysicsContact) {
        
        var firstBody: SKPhysicsBody
        var secondBody: SKPhysicsBody
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask{
            firstBody = contact.bodyA
            secondBody = contact.bodyB
        } else {
            firstBody = contact.bodyB
            secondBody = contact.bodyA
        }
        
        if (firstBody.categoryBitMask == 3) && (secondBody.categoryBitMask == 4) {
            
            tank.hidden = true
            var tankUp = SKSpriteNode(imageNamed: "TankUp.png")
            tankUp.position = tank.position
            tankUp.size = self.size
            self.addChild(tank)
            
        }
        
    }
    
    override func didMoveToView(view: SKView) {
        
        tank.physicsBody = SKPhysicsBody(rectangleOfSize: self.size)
        tank.position = CGPoint(x: self.frame.size.width*0, y: self.frame.size.height*0.3)
        self.addChild(tank)
        
        buyTower.name = "buyTower"
        buyTower.text = "Buy Tower (15 credits)"
        self.addChild(buyTower)
        
        creditsLabel.position = CGPoint(x: self.frame.size.width*0.2, y: self.frame.size.width*0.6)
        creditsLabel.zPosition = 1
        creditsLabel.text = "Credits: \(creditsNumber)"
        creditsLabel.fontColor = SKColor.blackColor()
        self.addChild(creditsLabel)
        
        tower1space.name = "tower1space"
        tower2space.name = "tower2space"
        tower3space.name = "tower3space"
        tower4space.name = "tower4space"
        tower5space.name = "tower5space"
        
        backgroundImage.size = self.size
        backgroundImage.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        backgroundImage.zPosition = 0
        self.addChild(backgroundImage)
        
    }
    
    func tankHit() {
        
        
        
    }
    
    func Moving() {
        
        
        
    }
    
    func buyingTower() {
        
        buyTower.text = "Cancel"
        buyTower.name = "Cancel"
        
        tower1space.hidden = false
        tower2space.hidden = false
        tower3space.hidden = false
        tower4space.hidden = false
        tower5space.hidden = false
        
        tank.hidden = true
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
        
        let positionOfTouch = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(positionOfTouch)
        
            if touchedNode.name == "buyTower"{
            
                self.buyingTower()
                
                if touchedNode.name == "tower1space" {
                    
                    tower1.position = tower1space.position
                    tower1.hidden = false
                    self.addChild(tower1)
                    
                    tower1space.hidden = true
                    tower2space.hidden = true
                    tower3space.hidden = true
                    tower4space.hidden = true
                    tower5space.hidden = true
                    
                }
                
                if touchedNode.name == "tower2space" {
                    
                    tower2.position = tower2space.position
                    tower2.hidden = false
                    self.addChild(tower2)
                    
                    tower1space.hidden = true
                    tower2space.hidden = true
                    tower3space.hidden = true
                    tower4space.hidden = true
                    tower5space.hidden = true
                    
                }
                
                if touchedNode.name == "tower3space" {
                    
                    tower3.position = tower3space.position
                    tower3.hidden = false
                    self.addChild(tower3)
                    
                    tower1space.hidden = true
                    tower2space.hidden = true
                    tower3space.hidden = true
                    tower4space.hidden = true
                    tower5space.hidden = true
                    
                }
                
                if touchedNode.name == "tower4space" {
                    
                    tower4.position = tower4space.position
                    tower4.hidden = false
                    self.addChild(tower4)
                    
                    tower1space.hidden = true
                    tower2space.hidden = true
                    tower3space.hidden = true
                    tower4space.hidden = true
                    tower5space.hidden = true
                    
                }
                
                if touchedNode.name == "tower5space" {
                    
                    creditsNumber = creditsNumber - 15
                    
                    if creditsNumber < 15 {
                        
                        var alert = UIAlertView()
                        
                        
                    } else {
                        
                        tower5.position = tower5space.position
                        tower5.hidden = false
                        self.addChild(tower5)
                        
                        tower1space.hidden = true
                        tower2space.hidden = true
                        tower3space.hidden = true
                        tower4space.hidden = true
                        tower5space.hidden = true
                        
                    }
                    
                }
                
                
            }
            
            if touchedNode.name == "Cancel"{
             
                tower1space.hidden = true
                tower2space.hidden = true
                tower3space.hidden = true
                tower4space.hidden = true
                tower5space.hidden = true
                
                tank.hidden = true
                
            }
            
            if touchedNode.name == "startGame" {
                
                self.Moving()
                
            }
            
        }
    }
    
}
