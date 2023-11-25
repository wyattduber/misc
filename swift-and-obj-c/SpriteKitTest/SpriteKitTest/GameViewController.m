//
//  GameViewController.m
//  SpriteKitTest
//
//  Created by Todd Duberstein on 9/28/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@implementation SKScene (Unarchive)

+ (instancetype)unarchiveFromFile:(NSString *)file {
    /* Retrieve scene file path from the application bundle */
    NSString *nodePath = [[NSBundle mainBundle] pathForResource:file ofType:@"sks"];
    /* Unarchive the file to an SKScene object */
    NSData *data = [NSData dataWithContentsOfFile:nodePath
                                          options:NSDataReadingMappedIfSafe
                                            error:nil];
    NSKeyedUnarchiver *arch = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
    [arch setClass:self forClassName:@"SKScene"];
    SKScene *scene = [arch decodeObjectForKey:NSKeyedArchiveRootObjectKey];
    [arch finishDecoding];
    
    return scene;
}

@end

@interface GameScene : SKScene
@property SKShader* waterPosition;
@end

@implementation GameViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    // Configure the view.
    SKView * skView = (SKView *)self.view;
    skView.showsFPS = YES;
    skView.showsNodeCount = YES;
    /* Sprite Kit applies additional optimizations to improve rendering performance */
    skView.ignoresSiblingOrder = YES;
    
    // Create and configure the scene.
    GameScene *scene = [GameScene unarchiveFromFile:@"GameScene"];
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    // Present the scene.
    [skView presentScene:scene];
    
       if (NSClassFromString(@"SKShader") != nil) {
        SKSpriteNode *shaderContainer_move = [SKSpriteNode spriteNodeWithImageNamed:@"dummypixel.png"];
        shaderContainer_move.position = waterPosition;
        shaderContainer_move.size = waterSize;
        shaderContainer_move.name = @"waterShaderContainer";
        [game addChild:shaderContainer_move];
        SKShader* shader_move = [SKShader shaderWithFileNamed:@"shader_water_movement.fsh"];
        //Set vairiables that are used in the shader script
        
        
        SKTexture* shaderTexture =[SKTexture textureWithImageNamed:itemId];
        shader_move.uniforms = @[
                                 [SKUniform uniformWithName:@"customTexture" texture:shaderTexture],
                                 [SKUniform uniformWithName:@"movement" float:1],
                                 ];
        //add the shader to the sprite
        shaderContainer_move.shader = shader_move;
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

@end
