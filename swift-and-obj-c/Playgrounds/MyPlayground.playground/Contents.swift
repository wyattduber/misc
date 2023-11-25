//: Playground - noun: a place where people can play

import UIKit
import SpriteKit

class GameScene : SKScene {
    
    override func didMoveToView(view: SKView) {
        
        var label = SKLabelNode(text: "Hello World!")
        label.fontName = "Chalkduster"
        label.fontColor = SKColor.whiteColor()
        label.fontSize = 50
        label.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height*0.6)
        self.addChild(label)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent){
        
        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            var node = SKSpriteNode(imageNamed: "Spaceship.png")
            node.position = positionOfTouch
            self.addChild(node)
            
        }
        
    }
    
}
