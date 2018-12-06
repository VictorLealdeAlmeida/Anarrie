//
//  Collisions.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 23/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

extension GameScene{
    
    func collisionPlayerObstacle(player: SKSpriteNode){
        player.removeFromParent()
        
        let scoreLabel = self.currentGameScreen.childNode(withName: "scoreLabel")
        scoreLabel?.removeAction(forKey: "countScore")
        
        scoreLabel?.run(SKAction.sequence([
            SKAction.wait(forDuration: 1),
            SKAction.run{
                self.createGameOverScreen()
            }
            ]))
        
        let sensorBirth = self.childNode(withName: "sensorBirth")
        sensorBirth?.removeFromParent()
    }
    
    
    func collisionPlayerBonusNode(bonusNode: SKSpriteNode){
        bonusNode.removeFromParent()
        
        if let scoreLabel = currentGameScreen.childNode(withName: "scoreLabel") as? SKLabelNode{
            if let score = scoreLabel.text{
                
                let addScore = Int(score)!
                scoreLabel.text = String(addScore + 10)
                
            }
        }
        
    }
    
}
