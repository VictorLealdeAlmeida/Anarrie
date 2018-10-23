//
//  BonusNodes.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 23/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class BonusNode: SKSpriteNode{
    
    init(texture: SKTexture, name: String, laneStart: LanesScale) {
        let size = CGSize(width: 80, height: 80)
        super.init(texture: texture, color: UIColor.clear, size: size)
        
        self.name = name
        self.position = CGPoint(x: scaleWidth(scale: laneStart.rawValue), y: scaleHeight(scale: ScaleNodeScenario.obstacleBirth.rawValue))
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.width/2)
        
        self.physicsBody?.categoryBitMask = PhysicsCategory.BonusNode.rawValue
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Player.rawValue
        self.physicsBody?.collisionBitMask = PhysicsCategory.None.rawValue
        
        
        moveDown()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func moveDown(){
        self.run(SKAction.sequence([
            SKAction.moveTo(y: scaleHeight(scale: ScaleNodeScenario.obstacleDead.rawValue), duration: Speeds.obstacles.rawValue),
            SKAction.removeFromParent()
            ]))
    }
    
    
}


class Corn: BonusNode{
    
    init(laneStart: LanesScale) {
        let texture = SKTexture(imageNamed: "milho")
        super.init(texture: texture, name: "milho", laneStart: laneStart)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
