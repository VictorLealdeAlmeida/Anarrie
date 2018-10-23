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
        
        let sensorBirth = self.childNode(withName: "sensorBirth")
        sensorBirth?.removeFromParent()
    }
    
}
