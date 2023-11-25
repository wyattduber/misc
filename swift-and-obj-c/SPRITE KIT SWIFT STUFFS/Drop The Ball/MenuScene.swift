//
//  MenuScene.swift
//  Drop The Ball
//
//  Created by Todd Duberstein on 6/1/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import Foundation
import SpriteKit

var resetTimes = 0

class MenuScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        let title = SKLabelNode(text: "Drop The Ball")
        title.fontSize = 60
        title.fontColor = SKColor.red
        title.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.8)
        title.fontName = "Bold"
        self.addChild(title)
        
        let backroundImage = SKSpriteNode(imageNamed: "backgroundImage")
        backroundImage.size = self.size
        backroundImage.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        self.addChild(backroundImage)
        
        let title2 = SKLabelNode(text: "Fun!")
        title2.fontName = "Consolas"
        title2.fontSize = 35
        title2.fontColor = SKColor.yellow
        title2.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.77)
        self.addChild(title2)
        
        let infoButton = SKLabelNode(text: "More Info")
        infoButton.fontSize = 40
        infoButton.fontColor = SKColor.orange
        infoButton.fontName = "AmericanTypewriter"
        infoButton.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.60)
        infoButton.name = "infoButton"
        self.addChild(infoButton)
        
        let playButton = SKLabelNode(text: "Start Game!")
        playButton.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.70)
        playButton.fontColor = SKColor.orange
        playButton.fontSize = 40
        playButton.fontName = "AmericanTypewriter"
        playButton.name = "startGameButton"
        self.addChild(playButton)
        
        let zoomInOutAction = SKAction.scale(by: 0.5, duration: 0.5)
        
        let actionSequence = SKAction.sequence([zoomInOutAction, zoomInOutAction.reversed()])
        
        title2.run(SKAction.repeatForever(actionSequence))
        
        title.isHidden = false
        title2.isHidden = false
        playButton.isHidden = false
        infoButton.isHidden = false
            
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.location(in: self)
            let touchedNode = self.atPoint(positionOfTouch)
            
            if touchedNode.name == "infoButton"{
                
                let infoScene = InfoScene(size: self.size)
                infoScene.scaleMode = self.scaleMode
                let reveal = SKTransition.doorsOpenHorizontal(withDuration: 1)
                self.view?.presentScene(infoScene, transition: reveal)
                
            }
        
            
            if touchedNode.name == "startGameButton"{
             
                let newScene = LevelOneScene(size: self.size)
                newScene.scaleMode = self.scaleMode
                let reveal = SKTransition.doorsOpenHorizontal(withDuration: 2)
                self.view?.presentScene(newScene, transition: reveal)
                
            }
            
        }
        
    }
    
}
