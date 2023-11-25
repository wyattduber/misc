//
//  GameOverScene.swift
//  Dodge The Blades
//
//  Created by Todd Duberstein on 6/13/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit
import AVFoundation

var gameOverMusicPlayer: AVAudioPlayer!

func playGameOverMusic(filename: String) {
    
    let url = NSBundle.mainBundle().URLForResource("losinghorn", withExtension: "m4a")
    if (url == nil) {
        println("Could not find file: \(filename)")
        return
    }
    
    var error: NSError? = nil
    gameOverMusicPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
    if gameOverMusicPlayer == nil {
        println("Could not create audio player: \(error!)")
        return
    }
    
    gameOverMusicPlayer.numberOfLoops = 1
    gameOverMusicPlayer.prepareToPlay()
    gameOverMusicPlayer.play()
    
}

var newGameButton = SKLabelNode(text: "Play Again!")

class GameOverScene: SKScene {
    
    init(size: CGSize, won:Bool){
        
        super.init(size: size)
        
        let label = SKLabelNode(fontNamed: "Chalkduster")
        
        backgroundColor = SKColor.whiteColor()
        
        if won == true {
            
            label.text = "You Win!"
            
        } else {
            
            label.text = "You Lose!"
            
        }
        
        playGameOverMusic("losinghorn.m4a")
        
        backgroundMusicPlayer.stop()
        
        label.fontSize = 40
        label.fontColor = SKColor.blackColor()
        label.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2)
        self.addChild(label)
        
        newGameButton.fontName = "Arial"
        newGameButton.fontSize = 25
        newGameButton.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.4)
        newGameButton.fontColor = SKColor.redColor()
        newGameButton.name = "newGameButton"
        self.addChild(newGameButton)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            if touchedNode.name == "newGameButton"{
                
                let newScene = GameScene(size: size)
                newScene.scaleMode = self.scaleMode
                let reveal = SKTransition.flipHorizontalWithDuration(1)
                self.view?.presentScene(newScene, transition: reveal)
                
            }
            
        }
        
    }
    
}