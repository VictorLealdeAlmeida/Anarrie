//
//  Sensor.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 22/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class Sensor: SKSpriteNode{
    
    init(name: String, hight: ScaleNodeScenario, phyCategory: PhysicsCategory) {
        
        super.init(texture: nil, color: UIColor.clear, size: CGSize(width: 700, height: 1))
        
        self.position = CGPoint(x: widthCenter(), y: scaleHeight(scale: hight.rawValue))
        self.physicsBody = SKPhysicsBody(rectangleOf: self.size)
        
        self.name = name
        
        self.physicsBody?.categoryBitMask = phyCategory.rawValue
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Obstacle.rawValue
        self.physicsBody?.collisionBitMask = PhysicsCategory.None.rawValue
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
