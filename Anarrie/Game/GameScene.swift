//
//  GameScene.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 16/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var gameViewController: GameViewController!
    let player = Player()
    
    
    override func sceneDidLoad() {
        
        addChild(player)
        
        let o = Cactus(laneStart: .leftLane)
    
        addChild(o)
        
        addChild(Cactus(laneStart: .rightLane))
        
 

    }
    
    
    func movePlayerRight() {
        
        if player.currentLane == .leftLane {
            player.changeLane(newLane: .centerLane)
            player.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.centerLane.rawValue), duration: 0.5))
        } else if player.currentLane == .centerLane {
            player.changeLane(newLane: .rightLane)
            player.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.rightLane.rawValue), duration: 0.5))

        } else {
            // do nothing
        }
        
    }
    
    func movePlayerLeft() {
        
        if player.currentLane == .rightLane {
            player.changeLane(newLane: .centerLane)
            player.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.centerLane.rawValue), duration: 0.5))
        } else if player.currentLane == .centerLane {
            player.changeLane(newLane: .leftLane)
            player.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.leftLane.rawValue), duration: 0.5))
            
        } else {
            // do nothing
        }
        
    }

}
