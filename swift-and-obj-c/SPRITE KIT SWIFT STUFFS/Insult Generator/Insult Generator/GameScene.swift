//
//  GameScene.swift
//  Insult Generator
//
//  Created by Todd Duberstein on 4/11/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var insultLabel = SKLabelNode(fontNamed: "Arial")
    var explosionImage = SKSpriteNode(imageNamed: "explosionImage")
    var insult1 = SKLabelNode(fontNamed: "Arial")
    var insult2 = SKLabelNode(fontNamed: "Arial")
    var insult3 = SKLabelNode(fontNamed: "Arial")
    var insult4 = SKLabelNode(fontNamed: "Arial")
    var insult5 = SKLabelNode(fontNamed: "Arial")
    var insult6 = SKLabelNode(fontNamed: "Arial")
    
    override func didMoveToView(view: SKView) {
        
        explosionImage.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.5)
        explosionImage.zPosition = 2
        explosionImage.size = CGSizeMake(300, 350)
        
        insultLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.5)
        insultLabel.fontSize = 15
        insultLabel.zPosition = 300
        insultLabel.fontColor = SKColor.blueColor()
        
        insult1.position = CGPoint(x: self.frame.size.width*0.10, y: self.frame.size.width*0.14)
        insult2.position = CGPoint(x: self.frame.size.width*0.25, y: self.frame.size.width*0.14)
        insult3.position = CGPoint(x: self.frame.size.width*0.40, y: self.frame.size.width*0.14)
        insult4.position = CGPoint(x: self.frame.size.width*0.55, y: self.frame.size.width*0.14)
        insult5.position = CGPoint(x: self.frame.size.width*0.70, y: self.frame.size.width*0.14)
        insult6.position = CGPoint(x: self.frame.size.width*0.85, y: self.frame.size.width*0.14)
        
        insult1.text = "Insult 1"
        insult2.text = "Insult 2"
        insult3.text = "Insult 3"
        insult4.text = "Insult 4"
        insult5.text = "Insult 5"
        insult6.text = "Insult 6"
        
        insult1.name = "insult1"
        insult2.name = "insult2"
        insult3.name = "insult3"
        insult4.name = "insult4"
        insult5.name = "insult5"
        insult6.name = "insult6"
        
        self.addChild(insultLabel)
        self.addChild(explosionImage)
        self.addChild(insult1)
        self.addChild(insult2)
        self.addChild(insult3)
        self.addChild(insult4)
        self.addChild(insult5)
        self.addChild(insult6)
        
        insultLabel.hidden = true
        explosionImage.hidden = true
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
        
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            if touchedNode.name == "insult1" {
                
                insultLabel.hidden = false
                explosionImage.hidden = false
                
                insultLabel.text = "Your are about as sharp as a bowling ball!"
                
            }
            
            if touchedNode.name == "insult2" {
                
                insultLabel.hidden = false
                explosionImage.hidden = false
                
                insultLabel.text = "You must have been born on a highway because that is where most accidents happen."
                
            }
            
            if touchedNode.name == "insult3" {
                
                insultLabel.hidden = false
                explosionImage.hidden = false
                
                insultLabel.text = "Is your butt jealous of all the crap that just came out of your mouth?"
                
            }
            
            if touchedNode.name == "insult4" {
                
                insultLabel.hidden = false
                explosionImage.hidden = false
                
                insultLabel.text = "At least when I do a handstand my stomach doesn't hit me in the face."
                
            }
            
            if touchedNode.name == "insult5" {
                
                insultLabel.hidden = false
                explosionImage.hidden = false
                
                insultLabel.text = "Hey, you have something in your chin... No, the third one down."
                
            }
            
            if touchedNode.name == "insult6" {
                
                insultLabel.hidden = false
                explosionImage.hidden = false
                
                insultLabel.text = "Your so ugly, when your mother dropped you off for school she got a fine for littering."
                
            }
            
        }
            
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            if touchedNode.name == "insult1" {
             
                insultLabel.hidden = true
                explosionImage.hidden = true
                
            }
            
            if touchedNode.name == "insult2" {
                
                insultLabel.hidden = true
                explosionImage.hidden = true
                
            }
            
            if touchedNode.name == "insult3" {
                
                insultLabel.hidden = true
                explosionImage.hidden = true
                
            }
            
            if touchedNode.name == "insult4" {
                
                insultLabel.hidden = true
                explosionImage.hidden = true
                
            }
            
            if touchedNode.name == "insult5" {
                
                insultLabel.hidden = true
                explosionImage.hidden = true
                
            }
            
            if touchedNode.name == "insult6" {
                
                insultLabel.hidden = true
                explosionImage.hidden = true
                
            }
            
        }
        
    }
    
}
