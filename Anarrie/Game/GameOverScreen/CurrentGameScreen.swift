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
        
        self.currentGameScreen.name = "UITapGestureRecognizer"
        addChild(self.currentGameScreen)
        addChild(self.skyScreen)
        
        createLabelScore()
    }
    
    func createLabelScore(){
        let scoreLabel = SKLabelNode()
        
        
        scoreLabel.position = CGPoint(x: scaleWidth(scale: 0.45), y: scaleHeight(scale: 0.5))
        scoreLabel.fontColor = #colorLiteral(red: 0.2509489954, green: 0.2509984672, blue: 0.2509458363, alpha: 1)
        scoreLabel.fontSize = 55
        scoreLabel.zPosition = 1000
        scoreLabel.name = "scoreLabel"
        scoreLabel.text = "0"
        
        let count = SKAction.run({
            let addScore = Int(scoreLabel.text!)! + 1
            scoreLabel.text = String(/*format:"%03i",*/ String(addScore))
        })
        
        scoreLabel.run(SKAction.repeatForever(
            SKAction.sequence([count,
                               SKAction.wait(forDuration: 1)])), withKey: "countScore")
        
        self.currentGameScreen.addChild(scoreLabel)
    }
    
 
    
}
