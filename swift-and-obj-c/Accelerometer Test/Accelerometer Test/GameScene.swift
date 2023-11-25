//
//  GameScene.swift
//  Accelerometer Test
//
//  Created by Todd Duberstein on 6/11/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit
import CoreMotion

var airplane = SKSpriteNode()
var motionManager = CMMotionManager()
var destX: CGFloat = 0.0

class GameScene: SKScene {

    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        // 1
        airplane = SKSpriteNode(imageNamed: "Airplane")
        airplane.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(airplane)
        
        
        if motionManager.accelerometerAvailable == true {
            // 2
            motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue(), withHandler:{
                data, error in
                
                var currentX = airplane.position.x
                
                // 3
                if data.acceleration.x < 0 {
                    destX = currentX + CGFloat(data.acceleration.x * 100)
                }
                    
                else if data.acceleration.x > 0 {
                    destX = currentX + CGFloat(data.acceleration.x * 100)
                }
                
            })
            
        }
    }
    
    override func update(currentTime: NSTimeInterval) {
        
        var action = SKAction.moveToX(destX, duration: 1)
        airplane.runAction(action)
        
    }
    
}
