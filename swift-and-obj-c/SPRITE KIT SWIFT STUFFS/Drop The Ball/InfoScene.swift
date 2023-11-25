//
//  InfoScene.swift
//  Drop The Ball
//
//  Created by Todd Duberstein on 6/1/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import Foundation
import SpriteKit

class InfoScene : SKScene {
    
    override func didMove(to view: SKView) {
        
        let nameLabel = SKLabelNode(text: "Drop The Ball")
        nameLabel.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.8)
        nameLabel.fontName = "Bold"
        nameLabel.fontSize = 35
        nameLabel.fontColor = SKColor.green
        self.addChild(nameLabel)

        
        
        let infoLabel1 = SKLabelNode(text: "Welcome to Drop The Ball!")
        let infoLabel2 = SKLabelNode(text: "An App presented to you by DuberFam Apps.")
        let infoLabel3 = SKLabelNode(text: "This is an app that you can use")
        let infoLabel4 = SKLabelNode(text: "when you get bored or to pass the time with.")
        let infoLabel5 = SKLabelNode(text: "What are you waiting for? Go and play! ;-)")
        
        infoLabel1.fontName = "TimesNewRoman"
        infoLabel2.fontName = "TimesNewRoman"
        infoLabel3.fontName = "TimesNewRoman"
        infoLabel4.fontName = "TimesNewRoman"
        infoLabel5.fontName = "TimesNewRoman"
        
        infoLabel1.fontColor = SKColor.orange
        infoLabel2.fontColor = SKColor.orange
        infoLabel3.fontColor = SKColor.orange
        infoLabel4.fontColor = SKColor.orange
        infoLabel5.fontColor = SKColor.orange
        
        infoLabel1.fontSize = 25
        infoLabel2.fontSize = 25
        infoLabel3.fontSize = 25
        infoLabel4.fontSize = 25
        infoLabel5.fontSize = 25
        
        infoLabel1.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.7)
        infoLabel2.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.65)
        infoLabel3.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.6)
        infoLabel4.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.55)
        infoLabel5.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.5)
        
        self.addChild(infoLabel1)
        self.addChild(infoLabel2)
        self.addChild(infoLabel3)
        self.addChild(infoLabel4)
        self.addChild(infoLabel5)
    
        
        let backButton = SKLabelNode(text: "Go Back")
        backButton.position = CGPoint(x: self.frame.size.width*0.7, y: self.frame.size.width*0.1)
        backButton.fontSize = 40
        backButton.fontColor = SKColor.purple
        backButton.fontName = "AmericanTypewriter"
        backButton.name = "backButton"
        self.addChild(backButton)
        
        backgroundColor = SKColor.darkGray
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches{
        
        let positionOfTouch = touch.location(in: self)
        let touchedNode = self.atPoint(positionOfTouch)
        
        if touchedNode.name == "backButton"{
           
            let newScene = MenuScene(size: self.size)
            newScene.scaleMode = self.scaleMode
            let reveal = SKTransition.doorsOpenHorizontal(withDuration: 2)
            self.view?.presentScene(newScene, transition: reveal)
            
        }
            
        }
        
    }
    
}
