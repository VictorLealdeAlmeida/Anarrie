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
        
//        print(contact.bodyA.categoryBitMask)
//        print(contact.bodyA.node?.name)
//        print(contact.bodyB.categoryBitMask)
//        print(contact.bodyB.node?.name)


        
        if firstBody.categoryBitMask == PhysicsCategory.Obstacle.rawValue &&
            secondBody.categoryBitMask == PhysicsCategory.Player.rawValue{
            
            print("colisão obstaculo com player")
            
            secondBody.node?.removeFromParent()
            
            
        }else if firstBody.categoryBitMask == PhysicsCategory.SensorSnake.rawValue && secondBody.categoryBitMask == PhysicsCategory.Obstacle.rawValue{
            
            
            print("colisao cobra sensor")
        }
        
        
    }
}
