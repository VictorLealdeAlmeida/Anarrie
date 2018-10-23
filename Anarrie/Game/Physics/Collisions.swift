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
            SKAction.move(to: CGPoint(x: 0, y: 0), duration: 2),
            SKAction.wait(forDuration: 3),
            SKAction.run {
                self.gameViewController.replay()
            }
            ]))
        
        let sensorBirth = self.childNode(withName: "sensorBirth")
        sensorBirth?.removeFromParent()
    }
    
    
    func collisionPlayerBonusNode(bonusNode: SKSpriteNode){
        bonusNode.removeFromParent()
        
        
    }
    
}