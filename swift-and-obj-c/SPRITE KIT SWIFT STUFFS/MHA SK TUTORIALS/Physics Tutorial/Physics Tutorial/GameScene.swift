//
//  GameScene.swift
//  Physics Tutorial
//
//  Created by Todd Duberstein on 4/12/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    struct physicsCatagory {
        
        static let None : UInt32 = 0 //0
        static let Square : UInt32 = 0b1 //1
        static let Ball : UInt32 = 0b10 //2
        static let Border : UInt32 = 0b100 //4
        static let All : UInt32 = UInt32.max
        
    }
    
    func didBeginContact(contact: SKPhysicsContact) {
        
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
        
        //CODE FOR REMOVING BALL: if (contactBodyOne.categoryBitMask == 1) && (contactBodyTwo.categoryBitMask == 2){
          //  contactBodyOne.node!.removeFromParent()
       // }
        
        if (contactBodyOne.categoryBitMask == 1) && (contactBodyTwo.categoryBitMask == 2){
            
          contactBodyTwo.node!.removeFromParent()
            
         }
        
    }
    
    override func didMoveToView(view: SKView) {
        
        self.physicsWorld.gravity = CGVectorMake(0, -9.8)
        
        let sceneBody = SKPhysicsBody(edgeLoopFromRect: self.frame)
        sceneBody.friction = 0
        self.physicsBody = sceneBody
        self.physicsBody?.categoryBitMask = physicsCatagory.Border
        self.physicsBody?.collisionBitMask = physicsCatagory.Ball
        self.physicsBody?.contactTestBitMask = physicsCatagory.None
        
        var spriteNode = SKSpriteNode(imageNamed: "myImage")
        spriteNode.size = CGSizeMake(180, 180)
        spriteNode.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        spriteNode.physicsBody = SKPhysicsBody(rectangleOfSize: spriteNode.size)
        spriteNode.physicsBody?.affectedByGravity = false
        spriteNode.physicsBody?.dynamic = false
        spriteNode.physicsBody?.categoryBitMask = physicsCatagory.Square
        spriteNode.physicsBody?.collisionBitMask = physicsCatagory.None
        spriteNode.physicsBody?.contactTestBitMask = physicsCatagory.Ball
        self.addChild(spriteNode)
        
        var rotationAction = SKAction.rotateByAngle(CGFloat(M_PI), duration: 10)
        
        spriteNode.runAction(SKAction.repeatActionForever(rotationAction))
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
            
            var positionOfTouch = touch.locationInNode(self)
            
            var ball = SKShapeNode(circleOfRadius: 25)
            ball.fillColor = SKColor.redColor()
            ball.position = positionOfTouch
            ball.physicsBody = SKPhysicsBody(circleOfRadius: 25)
            ball.physicsBody?.affectedByGravity = true
            ball.physicsBody?.restitution = 1
            ball.physicsBody?.linearDamping = 0
            ball.physicsBody?.categoryBitMask = physicsCatagory.Ball
            ball.physicsBody?.collisionBitMask = physicsCatagory.Border | physicsCatagory.Ball
            ball.physicsBody?.contactTestBitMask = physicsCatagory.Square
            self.addChild(ball)
            
            
        }
        
        
    }
    

    
}