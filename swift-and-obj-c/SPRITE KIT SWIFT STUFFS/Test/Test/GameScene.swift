import SpriteKit

import AVFoundation

class GameScene: SKScene, SKPhysicsContactDelegate{
    
    var cat:SKSpriteNode!
    var skyColor:SKColor!
    var obstTextureUp:SKTexture!
    var obstTextureDown:SKTexture!
    var moveObstAndRemove:SKAction!
    var moving:SKNode!
    var obsts:SKNode!
    var canRestart = Bool()
    var scoreLabelNode:SKLabelNode!
    var score = NSInteger()
    let verticalObstGap = 150.0
    var playButton:SKSpriteNode = SKSpriteNode(imageNamed:"playButton")
    
    let catCategory: UInt32 = 1 << 2
    let worldCategory: UInt32 = 1 << 1
    let obstCategory: UInt32 = 1 << 2
    let scoreCategory: UInt32 = 1 << 3
    
    override func didMoveToView(view: SKView) {
        canRestart = true
        self.physicsWorld.gravity = CGVectorMake( 0.0, -6.3 )
        self.physicsWorld.contactDelegate = self
        moving = SKNode()
        self.addChild(moving)
        obsts = SKNode()
        moving.addChild(obsts)
        let Label = SKSpriteNode(imageNamed: "Label")
        Label.position = CGPoint(x:515,y:650)
        Label.size = CGSizeMake(Label.frame.size.width, 60)
        self.addChild(Label)
        playButton.position = CGPoint(x: self.frame.size.width / 2 , y: self.frame.size.height / 2)
        playButton.setScale(0.5)
        self.addChild(playButton)
        let TextureG = SKTexture(imageNamed: "G")
        TextureG.filteringMode = .Nearest
        
        let TextureS = SKTexture(imageNamed: "S")
        TextureS.filteringMode = .Nearest
        
        obstTextureUp = SKTexture(imageNamed: "obstUp")
        obstTextureUp.filteringMode = .Nearest
        obstTextureDown = SKTexture(imageNamed: "obstDown")
        obstTextureDown.filteringMode = .Nearest
        let moveGSprite = SKAction.moveByX(-TextureG.size().width * 2.0, y: 0, duration: NSTimeInterval(0.02 * TextureG.size().width * 2.0))
        
        let resetGSprite = SKAction.moveByX(TextureG.size().width * 2.0, y: 0, duration: 0.0)
        
        let moveGSpritesForever = SKAction.repeatActionForever(SKAction.sequence([moveGSprite,resetGSprite]))
        
        for var i:CGFloat = 0; i < 2.0 + self.frame.size.width / ( TextureG.size().width * 2.0 ); ++i {
            let sprite = SKSpriteNode(texture: TextureG)
            sprite.setScale(2.0)
            sprite.position = CGPointMake(i * sprite.size.width, sprite.size.height / 2.0)
            sprite.runAction(moveGSpritesForever)
            moving.addChild(sprite)
        }
        
        
        /*let moveSSprite = SKAction.moveByX(-skyTexture.size().width * 2.0, y: 0, duration: NSTimeInterval(0.1 * skyTexture.size().width * 2.0))*/
        let resetSSprite = SKAction.moveByX(TextureS.size().width * 2.0, y: 0, duration: 0.0)
        //let moveSSpritesForever = SKAction.repeatActionForever(SKAction.sequence([moveSSprite,resetSSprite]))
        
        /*for var i:CGFloat = 0; i < 2.0 + self.frame.size.width / ( skyTexture.size().width * 2.0 ); ++i {
            let sprite = SKSpriteNode(texture: TextureS)
            sprite.setScale(2.0)
            sprite.zPosition = -20
            sprite.position = CGPointMake(i * sprite.size.width, sprite.size.height / 2.0 + TextureG.size().height * 2.0)
            sprite.runAction(moveSSpritesForever)
            moving.addChild(sprite)
        }*/
        
        let distanceToMove = CGFloat(self.frame.size.width + 2.0 * obstTextureUp.size().width)
        let moveObsts = SKAction.moveByX(-distanceToMove, y:0.0, duration:NSTimeInterval(0.01 * distanceToMove))
        let removeObsts = SKAction.removeFromParent()
        
        let spawn = SKAction.runBlock({() in self.spawnObsts()})
        let delay = SKAction.waitForDuration(NSTimeInterval(2.0))
        let spawnThenDelay = SKAction.sequence([spawn, delay])
        let spawnThenDelayForever = SKAction.repeatActionForever(spawnThenDelay)
        self.runAction(spawnThenDelayForever)
        
        let catTexture1 = SKTexture(imageNamed: "cat-1")
        catTexture1.filteringMode = .Nearest
        let catTexture2 = SKTexture(imageNamed: "cat-2")
        catTexture2.filteringMode = .Nearest
        let catTexture3 = SKTexture(imageNamed: "cat-3")
        catTexture1.filteringMode = .Nearest
        let catTexture4 = SKTexture(imageNamed: "cat-4")
        catTexture2.filteringMode = .Nearest
        
        let anim = SKAction.animateWithTextures([catTexture1, catTexture2, catTexture3, catTexture4], timePerFrame: 0.11)
        let clip = SKAction.repeatActionForever(anim)
        
        cat = SKSpriteNode(texture: catTexture1)
        cat.setScale(2.0)
        cat.position = CGPoint(x: self.frame.size.width * 0.35, y:self.frame.size.height * 0.6)
        cat.runAction(clip)
        
        cat.physicsBody = SKPhysicsBody(circleOfRadius: self.size.height / 2.0)
        cat.physicsBody?.dynamic = true
        cat.physicsBody?.allowsRotation = false
        
        cat.physicsBody?.categoryBitMask = catCategory
        cat.physicsBody?.collisionBitMask = worldCategory | obstCategory
        cat.physicsBody?.contactTestBitMask = worldCategory | obstCategory
        
        self.addChild(cat)
        
        var ground = SKNode()
        ground.position = CGPointMake(0, TextureG.size().height)
        ground.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake(self.frame.size.width, TextureG.size().height * 2.0))
        ground.physicsBody?.dynamic = false
        ground.physicsBody?.categoryBitMask = worldCategory
        self.addChild(ground)
        
        
        score = 0
        scoreLabelNode = SKLabelNode(fontNamed:"Font")
        scoreLabelNode.position = CGPointMake( CGRectGetMidX( self.frame ), 3 * self.frame.size.height / 4 )
        scoreLabelNode.zPosition = 100
        scoreLabelNode.text = String(score)
        self.addChild(scoreLabelNode)
        
    }
    
    func spawnObsts() {
        let obstPair = SKNode()
        obstPair.position = CGPointMake( self.frame.size.width + obstTextureUp.size().width * 2, 0 )
        obstPair.zPosition = -10
        
        let height = UInt32( self.frame.size.height / 4 )
        let y = arc4random() % height + height
        
        let obstDown = SKSpriteNode(texture: obstTextureDown)
        obstDown.setScale(2.0)
        obstDown.position = CGPointMake(0.0, CGFloat(y) + obstDown.size.height + CGFloat(verticalObstGap))
        
        
        obstDown.physicsBody = SKPhysicsBody(rectangleOfSize: obstDown.size)
        obstDown.physicsBody?.dynamic = false
        obstDown.physicsBody?.categoryBitMask = obstCategory
        obstDown.physicsBody?.contactTestBitMask = catCategory
        obstPair.addChild(obstDown)
        
        let obstUp = SKSpriteNode(texture: obstTextureUp)
        obstUp.setScale(2.0)
        obstUp.position = CGPointMake(0.0, CGFloat(y))
        
        obstUp.physicsBody = SKPhysicsBody(rectangleOfSize: obstUp.size)
        obstUp.physicsBody?.dynamic = false
        obstUp.physicsBody?.categoryBitMask = obstCategory
        obstUp.physicsBody?.contactTestBitMask = catCategory
        obstPair.addChild(obstUp)
        
        var contactNode = SKNode()
        contactNode.position = CGPointMake( obstDown.size.width + cat.size.width / 2, CGRectGetMidY( self.frame ) )
        contactNode.physicsBody = SKPhysicsBody(rectangleOfSize: CGSizeMake( obstUp.size.width, self.frame.size.height ))
        contactNode.physicsBody?.dynamic = false
        contactNode.physicsBody?.categoryBitMask = scoreCategory
        contactNode.physicsBody?.contactTestBitMask = catCategory
        obstPair.addChild(contactNode)
        
    }
    
    func resetScene (){
        
        cat.position = CGPointMake(self.frame.size.width / 2.5, CGRectGetMidY(self.frame))
        cat.physicsBody?.velocity = CGVectorMake( 0, 0 )
        cat.physicsBody?.collisionBitMask = worldCategory | obstCategory
        cat.speed = 1.0
        cat.zRotation = 0.0
        
        obsts.removeAllChildren()
        
        canRestart = false
        
        score = 0
        scoreLabelNode.text = String(score)
        moving.speed = 1
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        if moving.speed > 0  {
            for touch: AnyObject in touches {
                let location = touch.locationInNode(self)
                
                runAction(SKAction.playSoundFileNamed("sound.wav", waitForCompletion: false))
                cat.physicsBody?.velocity = CGVectorMake(0, 0)
                cat.physicsBody?.applyImpulse(CGVectorMake(0, 30))
                
            }
        }else if canRestart {
            self.resetScene()
        }
        
    }
    
    func clamp(min: CGFloat, max: CGFloat, value: CGFloat) -> CGFloat {
        if( value > max ) {
            return max
        } else if( value < min ) {
            return min
        } else {
            return value
        }
    }
    
    
    override func update(currentTime: CFTimeInterval) {
        
        cat.zRotation = self.clamp( -1, max: 0.5, value: cat.physicsBody!.velocity.dy * ( cat.physicsBody!.velocity.dy < 0 ? 0.003 : 0.001 ) )
        
    }
    
    func didBeginContact(contact: SKPhysicsContact) {
        if moving.speed > 0 {
            if ( contact.bodyA.categoryBitMask & scoreCategory ) == scoreCategory || ( contact.bodyB.categoryBitMask & scoreCategory ) == scoreCategory {
                
                
                score++
                scoreLabelNode.text = String(score)
                
                
                scoreLabelNode.runAction(SKAction.sequence([SKAction.scaleTo(1.5, duration:NSTimeInterval(0.7)), SKAction.scaleTo(1.0, duration:NSTimeInterval(0.1))]))
            } else {
                
                moving.speed = 0
                
                cat.physicsBody?.collisionBitMask = worldCategory
                cat.runAction(  SKAction.rotateByAngle(CGFloat(M_PI) * CGFloat(cat.position.y) * 0.01, duration:1), completion:{self.cat.speed = 0 })
                runAction(SKAction.playSoundFileNamed("sound2.wav", waitForCompletion: false))
                
                
                
                self.removeActionForKey("flash")
                self.runAction(SKAction.sequence([SKAction.repeatAction(SKAction.sequence([SKAction.runBlock({
                    self.backgroundColor = SKColor(red: 0.2, green: 1, blue: 0.1, alpha: 1.0)
                }),SKAction.waitForDuration(NSTimeInterval(0.05)), SKAction.runBlock({
                    self.backgroundColor = self.skyColor
                }), SKAction.waitForDuration(NSTimeInterval(0.05))]), count:4), SKAction.runBlock({
                    self.canRestart = true
                })]), withKey: "flash")
            }
        }
    }
}
