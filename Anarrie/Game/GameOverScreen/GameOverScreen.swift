//
//  GameOverScreen.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 23/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

extension GameScene{
    
    func createGameOverScreen(){
        self.screenGameOver.name = "screenGameOver"
        addChild(self.screenGameOver)
        
        if let scoreLabel = currentGameScreen.childNode(withName: "scoreLabel") as? SKLabelNode{
            if let score = scoreLabel.text{
                self.gameViewController.showGameOverScreen(score: score)
            }
        }

        
        
    }
    
    
    

    
    
    
}
