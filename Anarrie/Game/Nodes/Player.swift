//
//  Player.swift
//  Acauã
//
//  Created by Victor Leal Porto de Almeida Arruda on 15/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode{
    
    
    init() {
        
        let texture = SKTexture(imageNamed: "lui1")
        let size = CGSize(width: 100, height: 100)
        super.init(texture: texture, color: UIColor.clear, size: size)
        
        self.name = "player"
        self.position = CGPoint(x: widthCenter(), y: scaleHeight(scale: -0.3))
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
}
