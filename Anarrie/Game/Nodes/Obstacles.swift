//
//  Obstacles.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 18/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class Obstacle: SKSpriteNode{
    
    init(texture: SKTexture, name: String, laneStart: LanesValues) {
        let size = CGSize(width: 100, height: 100)
        super.init(texture: texture, color: UIColor.clear, size: size)
        
        self.name = name
        self.position = CGPoint(x: scaleWidth(scale: laneStart.rawValue), y: scaleHeight(scale: 0.4))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}

class Cactus: Obstacle{
    
    init(laneStart: LanesValues) {
        let texture = SKTexture(imageNamed: "lui2")
        super.init(texture: texture, name: "cactus", laneStart: laneStart)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
}
