//: Playground - noun: a place where people can play

import Foundation
import AVFoundation
import SpriteKit

class GameScene : SKScene{

    override func touchesBeganWithEvent(event: NSEvent) {

        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
        }
    }
    
}