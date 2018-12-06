//
//  PhysicsDelegateGameScene.swift
//  Anarrie
//
//  Created by Paula Vaz on 22/10/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation
import SpriteKit

extension GameScene: SKPhysicsContactDelegate{
    
    
    func createPhysics() {
        physicsWorld.contactDelegate = self
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
    }
    

    
    @objc(didBeginContact:) func didBegin(_ contact: SKPhysicsContact) {

        let firstBody: SKPhysicsBody
        let secondBody: SKPhysicsBody
        
        if (contact.bodyA.categoryBitMask >= contact.bodyB.categoryBitMask) {
            firstBody = contact.bodyA;
            secondBody = contact.bodyB;
        }
        else{
            firstBody = contact.bodyB;
            secondBody = contact.bodyA;
        }

        
        if firstBody.categoryBitMask == PhysicsCategory.Obstacle.rawValue &&
            secondBody.categoryBitMask == PhysicsCategory.Player.rawValue{
            
            collisionPlayerObstacle(player: secondBody.node as! SKSpriteNode)
            
        }else if firstBody.categoryBitMask == PhysicsCategory.SensorSnake.rawValue && secondBody.categoryBitMask == PhysicsCategory.Obstacle.rawValue{
            
            if secondBody.node?.name == "snake"{
               
                let snake: Snake = secondBody.node as! Snake
                snake.laneLottery()
            }
            
        }else if firstBody.categoryBitMask == PhysicsCategory.SensorBirth.rawValue && secondBody.categoryBitMask == PhysicsCategory.Obstacle.rawValue{
            
            if secondBody.node?.name != "cactusPartner"{
                self.createObstacles()
            }
            
            
        }else if firstBody.categoryBitMask == PhysicsCategory.BonusNode.rawValue && secondBody.categoryBitMask == PhysicsCategory.Player.rawValue{
            
            self.collisionPlayerBonusNode(bonusNode: firstBody.node as! SKSpriteNode)
            
            
        }
        
        
    }
}
