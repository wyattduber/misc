//
//  GameScene.swift
//  Dodge The Blades
//
//  Created by Todd Duberstein on 6/13/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit
import AVFoundation
import UIKit
import Foundation

var player = SKSpriteNode(imageNamed: "player")

var leftButton = SKLabelNode(fontNamed: "TimesNewRoman")
var rightButton = SKLabelNode(fontNamed: "TimesNewRoman")
var startGame = SKLabelNode(fontNamed: "TimesNewRoman")

var rightButtonUnderlay = SKShapeNode(circleOfRadius: 80)
var leftButtonUnderlay = SKShapeNode(circleOfRadius: 80)

var backgroundMusicPlayer: AVAudioPlayer!

var movingAction = SKAction()

let projectilesDodged = 0

let bottom = SKSpriteNode(imageNamed: "DangerZone")

func playBackgroundMusic(filename: String) {
    
    let url = NSBundle.mainBundle().URLForResource("Benny Hill Theme", withExtension: "mp3")
    if (url == nil) {
        println("Could not find file: \(filename)")
        return
    }
    
    var error: NSError? = nil
    backgroundMusicPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
    if backgroundMusicPlayer == nil {
        println("Could not create audio player: \(error!)")
        return
    }
    
    backgroundMusicPlayer.numberOfLoops = -1
    backgroundMusicPlayer.prepareToPlay()
    backgroundMusicPlayer.play()
    
}

func + (left: CGPoint, right: CGPoint) -> CGPoint {
    return CGPoint(x: left.x + right.x, y: left.y + right.y)
}

func - (left: CGPoint, right: CGPoint) -> CGPoint{
    return CGPoint(x: left.x - right.x, y: left.y - right.y)
}

func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x * scalar, y: point.y * scalar)
}

func / (point: CGPoint, scalar: CGFloat) -> CGPoint {
    return CGPoint(x: point.x / scalar, y: point.y / scalar)
}

#if !(arch(x86_84) || arch(arm64))
    func squrt(a: CGFloat) -> CGFloat {
        return CGFloat(sqrtf(Float(a)))
    }
#endif

extension CGPoint {
    func length() -> CGFloat {
        return sqrt(x*x + y*y)
    }
    
    func normalized() -> CGPoint {
        return self / length()
    }
}

struct physicsCategory {
    
    static let None : UInt32 = 0 //0 
    static let All : UInt32 = UInt32.max //Maximum
    static let Player : UInt32 = 0b1 //1
    static let Projectile : UInt32 = 0b10 //2
    static let Bottom : UInt32 = 0b11 //3
    
}

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    override func didMoveToView(view: SKView) {
        
        bottom.size = CGSizeMake(1000, 10)
        bottom.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.1)
        bottom.physicsBody = SKPhysicsBody(rectangleOfSize: bottom.size)
        bottom.physicsBody?.dynamic = false
        bottom.physicsBody?.affectedByGravity = false
        bottom.physicsBody?.allowsRotation = false
        bottom.physicsBody?.categoryBitMask = physicsCategory.Bottom
        bottom.physicsBody?.contactTestBitMask = physicsCategory.Projectile
        bottom.physicsBody?.collisionBitMask = physicsCategory.None
        self.addChild(bottom)
        
        leftButton.position = CGPoint(x: self.frame.size.width*0.2, y: self.frame.size.height*0.2)
        leftButton.text = "->"
        leftButton.fontSize = 200
        leftButton.fontColor = SKColor.blackColor()
        leftButton.name = "leftButton"
        self.addChild(leftButton)
        
        rightButton.position = CGPoint(x: self.frame.size.width*0.8, y: self.frame.size.height*0.2)
        rightButton.text = "<-"
        rightButton.fontSize = 200
        rightButton.fontColor = SKColor.blackColor()
        rightButton.name = "rightButton"
        self.addChild(rightButton)
        
        player.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.2)
        player.size = CGSizeMake(100,100)
        player.physicsBody = SKPhysicsBody(rectangleOfSize: player.size)
        player.physicsBody?.dynamic = false
        player.physicsBody?.affectedByGravity = false
        player.physicsBody?.allowsRotation = false
        player.physicsBody?.categoryBitMask = physicsCategory.Player
        player.physicsBody?.contactTestBitMask = physicsCategory.Projectile
        player.physicsBody?.collisionBitMask = physicsCategory.None
        self.addChild(player)
        
        rightButtonUnderlay.position = CGPoint(x: self.frame.size.width*0.8, y: self.frame.size.height*0.2)
        self.addChild(rightButtonUnderlay)
        
        leftButtonUnderlay.position = CGPoint(x: self.frame.size.width*0.2, y: self.frame.size.height*0.2)
        self.addChild(leftButtonUnderlay)
        
        backgroundColor = SKColor.whiteColor()
        
        physicsWorld.contactDelegate = self
        physicsWorld.gravity = CGVectorMake(0, 0)
        
        startGame.text = "Start Game!"
        startGame.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.width/2)
        startGame.fontSize = 40
        startGame.fontColor = SKColor.redColor()
        startGame.name = "startGameButton"
        self.addChild(startGame)
        
    }
    
    func didBeginContact(contact: SKPhysicsContact) {
        
        var firstBody: SKPhysicsBody
        var secondBody: SKPhysicsBody
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask {
            firstBody = contact.bodyA
            secondBody = contact.bodyB
        } else {
            firstBody = contact.bodyB
            secondBody = contact.bodyA
        }
        
        if contact.bodyA.categoryBitMask == 1 && contact.bodyB.categoryBitMask == 2 {
            
            let won = false
            
            var gameOverScene = GameOverScene(size: self.size, won:Bool())
            gameOverScene.scaleMode = self.scaleMode
            let reveal = SKTransition.fadeWithColor(SKColor.blackColor(), duration: 1)
            self.view?.presentScene(gameOverScene, transition: reveal)
        }
     
        if contact.bodyA.categoryBitMask == 2 && contact.bodyB.categoryBitMask == 3 {
            
            projectileDidCollideWithPlayer(firstBody.node as! SKSpriteNode, projectile: secondBody.node as! SKSpriteNode)
            
        }
        
    }
    
    func projectileDidCollideWithPlayer(player:SKSpriteNode, projectile:SKSpriteNode) {
        
        let won = true
        
        println("Dodged")
        projectile.removeFromParent()
        
        projectilesDodged == projectilesDodged + 1
        
        if projectilesDodged == 30 {
            
            let newScene = GameOverScene(size: self.size, won:Bool())
            newScene.scaleMode = self.scaleMode
            let reveal = SKTransition.fadeWithColor(SKColor.blackColor(), duration: 1)
            self.view?.presentScene(newScene, transition: reveal)

            
        }
        
    }
    
    func addProjectile() {
        
        let blade = SKSpriteNode(imageNamed: "projectile")
        
        let actualX = random(min: size.height - blade.size.height/2, max: blade.size.height)
        
        // Position the blade slightly off-screen along the right edge,
        // and along a random position along the Y axis as calculated above
        blade.position = CGPoint(x: actualX, y: size.width + blade.size.width/2)
        
        // Add the blade to the scene
        addChild(blade)
        
        // Determine speed of the blade
        let actualDuration = random(min: CGFloat(2.0), max: CGFloat(4.0))
        
        // Create the actions
        let actionMove = SKAction.moveTo(CGPoint(x: actualX, y: actualX), duration: NSTimeInterval(actualDuration))
        let actionMoveDone = SKAction.removeFromParent()
        
        blade.runAction(SKAction.sequence([actionMove, actionMoveDone]))
        blade.runAction(SKAction.sequence([actionMove, actionMoveDone]))
        
        blade.physicsBody = SKPhysicsBody(rectangleOfSize: blade.size)
        blade.physicsBody?.dynamic = true
        blade.physicsBody?.categoryBitMask = physicsCategory.Projectile
        blade.physicsBody?.contactTestBitMask = physicsCategory.Bottom
        blade.physicsBody?.contactTestBitMask = physicsCategory.Player
        blade.physicsBody?.collisionBitMask = physicsCategory.None
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            if touchedNode.name == "rightButton" {
                
                movingAction = SKAction.moveByX(self.frame.size.width+0.01, y: self.frame.size.width*0.1, duration: 1)
                
                player.runAction(movingAction, withKey: "movingRightButton")
                
            }
            
            if touchedNode.name == "leftButton" {
                
                movingAction = SKAction.moveByX(self.frame.size.width-0.01, y: self.frame.size.width*0.1, duration: 1)
                
                player.runAction(movingAction, withKey: "movingLeftAction")
                
            }
            
        }
        
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            if touchedNode.name == "rightButton" {
                
                player.removeActionForKey("movingRightAction")
                
            }
            
            if touchedNode.name == "leftButton" {
                
                player.removeActionForKey("movingLeftAction")
                
            }
            
            if touchedNode.name == "startGameButton" {
             
                runAction(SKAction.repeatActionForever(
                    SKAction.sequence([
                        SKAction.runBlock(addProjectile),
                        SKAction.waitForDuration(0.5)
                        ])
                    ))
                
                startGame.hidden = true
                
                playBackgroundMusic("Benny Hill Theme.m4a")
                
            }
            
        }
        
    }
    
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    func random(#min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
    
        
    }
    

