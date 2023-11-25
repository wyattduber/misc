//
//  GameScene.swift
//  Game of Life
//
//  Created by Todd Duberstein on 10/10/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        let _gridWidth = 645
        let _gridHeight = 550
        let _numRows = 8
        let _numCols = 10
        let _gridLowerLeftCorner:CGPoint = CGPoint(x: 350, y: 110)
        
        let background = SKSpriteNode(imageNamed: "background.png")
        background.anchorPoint = CGPoint(x: 0, y: 0)
        background.size = self.size
        background.zPosition = -2
        self.addChild(background)
        
        let gridBackground = SKSpriteNode(imageNamed: "grid.png")
        gridBackground.size = CGSize(width: _gridWidth, height: _gridHeight)
        gridBackground.zPosition = -1
        gridBackground.anchorPoint = CGPoint(x:0, y:0)
        gridBackground.position = _gridLowerLeftCorner
        self.addChild(gridBackground)
        
        let _populationLabel:SKLabelNode = SKLabelNode(text: "Population")
        let _generationLabel:SKLabelNode = SKLabelNode(text: "Generation")
        var _populationValueLabel:SKLabelNode = SKLabelNode(text: "0")
        var _generationValueLabel:SKLabelNode = SKLabelNode(text: "0")
        var _playButton:SKSpriteNode = SKSpriteNode(imageNamed:"play.png")
        var _pauseButton:SKSpriteNode = SKSpriteNode(imageNamed:"pause.png")
        
        _playButton.position = CGPoint(x: 175, y: 550)
        _playButton.setScale(1)
        self.addChild(_playButton)
        _pauseButton.position = CGPoint(x: 175, y: 435)
        _pauseButton.setScale(1)
        self.addChild((_pauseButton))
        let balloon = SKSpriteNode(imageNamed: "balloon.png")
        balloon.position = CGPoint(x: 175, y: 337.5)
        balloon.setScale(0.5)
        // add a microscope image as a decoration
        let microscope = SKSpriteNode(imageNamed: "microscope.png")
        microscope.position = CGPoint(x: 170, y: 200)
        microscope.setScale(0.4)
        self.addChild(microscope)
        self.addChild(_populationLabel)
        _populationLabel.position = CGPoint(x: 175, y: 350)
        _populationLabel.fontName = "Courier"
        _populationLabel.fontSize = 12
        _populationLabel.fontColor = UIColor(red: 100, green: 100, blue: 100, alpha: 1)
        self.addChild(_generationLabel)
        _generationLabel.position = CGPoint(x: 175, y: 300)
        _generationLabel.fontName = "Courier"
        _generationLabel.fontSize = 12
        _generationLabel.fontColor = UIColor(red: 100, green: 100, blue: 100, alpha: 1)
        self.addChild(_populationValueLabel)
        _populationValueLabel.position = CGPoint(x: 175, y: 325)
        _populationValueLabel.fontName = "Courier"
        _populationValueLabel.fontSize = 12
        _populationValueLabel.fontColor = UIColor(red: 100, green: 100, blue: 100, alpha: 1)
        self.addChild(_generationValueLabel)
        _generationValueLabel.position = CGPoint(x: 175, y: 275)
        _generationValueLabel.fontName = "Courier"
        _generationValueLabel.fontSize = 12
        _generationValueLabel.fontColor = UIColor(red: 100, green: 100, blue: 100, alpha: 1)
        
        var _tiles:[[SKSpriteNode]] = []
        var _margin = 4
        
        let tileSize = calculateTileSize()
        for r in 0..._numRows {
            var tileRow:[SKSpriteNode] = []
            for c in 0..._numCols {
                let tile = SKSpriteNode(imageNamed: "bubble.png")
                tile.size = CGSize(width: tileSize.width, height: tileSize.height)
                tile.anchorPoint = CGPoint(x: 0, y: 0)
                tile.position = getTilePosition(row: r, column: c)
                self.addChild(tile)
                tileRow.append(tile)
            }
            _tiles.append(tileRow)
        }
        
    }
        
        func calculateTileSize() -> CGSize
        {
            let tileWidth = _gridWidth / _numCols - _margin
            let tileHeight = _gridHeight / _numRows - _margin
            return CGSize(width: tileWidth, height: tileHeight)
        }
        
        func getTilePosition(row r:Int, column c:Int) -> CGPoint
        {
            let tileSize = calculateTileSize()
            let x = Int(_gridLowerLeftCorner.x) + _margin + (c * (Int(tileSize.width) + _margin))
            let y = Int(_gridLowerLeftCorner.y) + _margin + (r * (Int(tileSize.height) + _margin))
            return CGPoint(x: x, y: y)
        }
        
        
    
    func calculateTileSize() -> CGSize
    {
        let tileWidth = _gridWidth / _numCols - _margin
        let tileHeight = _gridHeight / _numRows - _margin
        return CGSize(width: tileWidth, height: tileHeight)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
