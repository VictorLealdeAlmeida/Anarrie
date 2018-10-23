//
//  CurrentGameScreen.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 23/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit


extension GameScene{
    
    func createGameCurrent(){
        addChild(currentGameScreen)
        
        createLabelScore()
    }
    
    func createLabelScore(){
        let scoreLabel = SKLabelNode()
        
        var score = 0
        scoreLabel.position = CGPoint(x: scaleWidth(scale: 0.45), y: scaleHeight(scale: 0.5))
        scoreLabel.fontColor = UIColor(red:1, green:255/255, blue:255/255, alpha:1.00)
        scoreLabel.fontSize = 55
        scoreLabel.zPosition = 1000
        scoreLabel.name = "scoreLabel"
        
        let count = SKAction.run({
            score += 1
            scoreLabel.text = String(format:"%03i", score)
        })
        
        scoreLabel.run(SKAction.repeatForever(
            SKAction.sequence([count,
                               SKAction.wait(forDuration: 1)])), withKey: "countScore")
        
        self.currentGameScreen.addChild(scoreLabel)
    }
    
 
    
}
