//
//  GameScene.swift
//  Piano
//
//  Created by Todd Duberstein on 6/9/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

import SpriteKit
import AVFoundation
import AVKit

var Bb = SKSpriteNode(imageNamed: "blackTile")
var B = SKSpriteNode(imageNamed: "whiteTile")
var C = SKSpriteNode(imageNamed: "whiteTile")
var CSharp = SKSpriteNode(imageNamed: "blackTile")
var D = SKSpriteNode(imageNamed: "whiteTile")
var Eb = SKSpriteNode(imageNamed: "blackTile")
var E = SKSpriteNode(imageNamed: "whiteTile")
var F = SKSpriteNode(imageNamed: "whiteTile")
var FSharp = SKSpriteNode(imageNamed: "blackTile")
var G = SKSpriteNode(imageNamed: "whiteTile")
var Ab = SKSpriteNode(imageNamed: "blackTile")
var A = SKSpriteNode(imageNamed: "whiteTile")
var BbSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Bb", ofType: "wav")!)
var BSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("B", ofType: "wav")!)
var CSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("C", ofType: "wav")!)
var CSharpSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("C#", ofType: "wav")!)
var DSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("D", ofType: "wav")!)
var EbSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Eb", ofType: "wav")!)
var ESound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("E", ofType: "wav")!)
var FSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("F", ofType: "wav")!)
var FSharpSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("F#", ofType: "wav")!)
var GSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("G", ofType: "wav")!)
var AbSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Ab", ofType: "wav")!)
var ASound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("A", ofType: "wav")!)
var BbPlayer = AVAudioPlayer()
var BPlayer = AVAudioPlayer()
var CPlayer = AVAudioPlayer()
var CSharpPlayer = AVAudioPlayer()
var DPlayer = AVAudioPlayer()
var EbPlayer = AVAudioPlayer()
var EPlayer = AVAudioPlayer()
var FPlayer = AVAudioPlayer()
var FSharpPlayer = AVAudioPlayer()
var GPlayer = AVAudioPlayer()
var AbPlayer = AVAudioPlayer()
var APlayer = AVAudioPlayer()
var AbLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var ALabel = SKLabelNode(fontNamed: "TimesNewRoman")
var BbLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var BLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var CLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var CSharpLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var DLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var EbLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var ELabel = SKLabelNode(fontNamed: "TimesNewRoman")
var FLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var FSharpLabel = SKLabelNode(fontNamed: "TimesNewRoman")
var GLabel = SKLabelNode(fontNamed: "TimesNewRoman")


class PianoScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        BbPlayer = AVAudioPlayer(contentsOfURL: BbSound, error: nil)
        BPlayer = AVAudioPlayer(contentsOfURL: BSound, error: nil)
        CPlayer = AVAudioPlayer(contentsOfURL: CSound, error: nil)
        CSharpPlayer = AVAudioPlayer(contentsOfURL: CSharpSound, error: nil)
        DPlayer = AVAudioPlayer(contentsOfURL: DSound, error: nil)
        EbPlayer = AVAudioPlayer(contentsOfURL: EbSound, error: nil)
        EPlayer = AVAudioPlayer(contentsOfURL: ESound, error: nil)
        FPlayer = AVAudioPlayer(contentsOfURL: FSound, error: nil)
        FSharpPlayer = AVAudioPlayer(contentsOfURL: FSharpSound, error: nil)
        GPlayer = AVAudioPlayer(contentsOfURL: GSound, error: nil)
        AbPlayer = AVAudioPlayer(contentsOfURL: AbSound, error: nil)
        APlayer = AVAudioPlayer(contentsOfURL: ASound, error: nil)
        
        BbPlayer.prepareToPlay()
        BPlayer.prepareToPlay()
        CPlayer.prepareToPlay()
        CSharpPlayer.prepareToPlay()
        DPlayer.prepareToPlay()
        EbPlayer.prepareToPlay()
        EPlayer.prepareToPlay()
        FPlayer.prepareToPlay()
        FSharpPlayer.prepareToPlay()
        GPlayer.prepareToPlay()
        AbPlayer.prepareToPlay()
        APlayer.prepareToPlay()
        
        Ab.size = CGSizeMake(150, 270)
        A.size = CGSizeMake(200, self.frame.size.height)
        Bb.size = CGSizeMake(150, 270)
        C.size = CGSizeMake(200, self.frame.size.height)
        CSharp.size = CGSizeMake(150, 270)
        D.size = CGSizeMake(200, self.frame.size.height)
        Eb.size = CGSizeMake(150, 270)
        E.size = CGSizeMake(200, self.frame.size.height)
        F.size = CGSizeMake(200, self.frame.size.height)
        FSharp.size = CGSizeMake(150, 270)
        G.size = CGSizeMake(200, self.frame.size.height)
        
        Ab.zPosition = 2
        A.zPosition = 1
        Bb.zPosition = 2
        B.zPosition = 1
        C.zPosition = 1
        CSharp.zPosition = 2
        D.zPosition = 1
        Eb.zPosition = 2
        E.zPosition = 1
        F.zPosition = 1
        FSharp.zPosition = 2
        G.zPosition = 1
        
        Ab.position = CGPoint(x: self.frame.size.width*0.02, y: self.frame.size.height*0.78)
        A.position = CGPoint(x: self.frame.size.width*0.1, y: self.frame.size.height/2)
        Bb.position = CGPoint(x: self.frame.size.width*0.2, y: self.frame.size.height*0.78)
        B.position = CGPoint(x: self.frame.size.width*0.3, y: self.frame.size.height/2)
        C.position = CGPoint(x: self.frame.size.width*0.4, y: self.frame.size.height/2)
        CSharp.position = CGPoint(x: self.frame.size.width*0.5, y: self.frame.size.width*0.78)
        D.position = CGPoint(x: self.frame.size.width*0.6, y: self.frame.size.height/2)
        Eb.position = CGPoint(x: self.frame.size.width*0.7, y: self.frame.size.height*0.78)
        E.position = CGPoint(x: self.frame.size.width*0.8, y: self.frame.size.height/2)
        F.position = CGPoint(x: self.frame.size.width*0.9, y: self.frame.size.height/2)
        FSharp.position = CGPoint(x: self.frame.size.width*1, y: self.frame.size.height*0.78)
        //G.position = CGPoint(x: self.frame.size.width*0.02, y: self.frame.size.height/2)
        
        Bb.name = "Bb"
        B.name = "B"
        C.name = "C"
        CSharp.name = "C#"
        D.name = "D"
        Eb.name = "Eb"
        E.name = "E"
        F.name = "F"
        FSharp.name = "F#"
        G.name = "G"
        Ab.name = "Ab"
        A.name = "A"
        
        self.addChild(Ab)
        self.addChild(A)
        self.addChild(Bb)
        self.addChild(B)
        self.addChild(C)
        self.addChild(CSharp)
        self.addChild(D)
        self.addChild(Eb)
        self.addChild(E)
        self.addChild(F)
        self.addChild(FSharp)
        self.addChild(G)
        
        AbLabel.text = "Ab"
        ALabel.text = "A"
        BbLabel.text = "Bb"
        BLabel.text = "B"
        CLabel.text = "C"
        CSharpLabel.text = "C#"
        DLabel.text = "D"
        EbLabel.text = "Eb"
        ELabel.text = "E"
        FLabel.text = "F"
        FSharpLabel.text = "F#"
        GLabel.text = "G"
        
        AbLabel.position = CGPoint(x: self.frame.size.width*0.2, y: self.frame.size.height/2)
       /* ALabel.position = CGPoint(Bb.self)
        BbLabel.position = CGPoint(Bb.self)
        BLabel.position = CGPoint(Bb.self)
        CLabel.position = CGPoint(C.self)
        CSharpLabel.position = CGPoint(Bb.self)
        DLabel.position = CGPoint(Bb.self)
        EbLabel.position = CGPoint(Bb.self)
        ELabel.position = CGPoint(Bb.self)
        FLabel.position = CGPoint(Bb.self)
        FSharpLabel.position = CGPoint(Bb.self)
        GLabel.position = CGPoint(Bb.self)
        
*/

    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
        
        let positionOfTouch = touch.locationInNode(self)
        let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            if touchedNode.name == "Bb"{
             
                BbPlayer.play()
                
            }
            
            if touchedNode.name == "B"{
             
                BPlayer.play()
            }
            
            if touchedNode.name == "C"{
                
                CPlayer.play()
                
            }
            
            if touchedNode.name == "C#"{
                
                CSharpPlayer.play()
                
            }
            
            if touchedNode.name == "D"{
                
                DPlayer.play()
                
            }
            
            if touchedNode.name == "Eb"{
                
                EbPlayer.play()
                
            }
            
            if touchedNode.name == "E"{
                
                EPlayer.play()
                
            }
            
            if touchedNode.name == "F"{
                
                FPlayer.play()
            }
            
            if touchedNode.name == "F#"{
                
                FSharpPlayer.play()
                
            }
            
            if touchedNode.name == "G"{
                
                GPlayer.play()
                
            }
            
            if touchedNode.name == "Ab"{
                
                AbPlayer.play()
                
            }
            
            if touchedNode.name == "A"{
                
                APlayer.play()
                
            }
        
        }
        
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches{
            
            let positionOfTouch = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(positionOfTouch)
            
            if touchedNode.name == "Bb"{
                
                BbPlayer.pause()
                
            }
            
            if touchedNode.name == "B"{
                
                BPlayer.stop()
            }
            
            if touchedNode.name == "C"{
                
                CPlayer.stop()
                
            }
            
            if touchedNode.name == "C#"{
                
                CSharpPlayer.stop()
                
            }
            
            if touchedNode.name == "D"{
                
                DPlayer.stop()
                
            }
            
            if touchedNode.name == "Eb"{
                
                EbPlayer.stop()
                
            }
            
            if touchedNode.name == "E"{
                
                EPlayer.stop()
                
            }
            
            if touchedNode.name == "F"{
                
                FPlayer.stop()
            }
            
            if touchedNode.name == "F#"{
                
                FSharpPlayer.stop()
                
            }
            
            if touchedNode.name == "G"{
                
                GPlayer.stop()
                
            }
            
            if touchedNode.name == "Ab"{
                
                AbPlayer.stop()
                
            }
            
            if touchedNode.name == "A"{
                
                APlayer.stop()
                
            }
            
        }
        
    }
    
}
