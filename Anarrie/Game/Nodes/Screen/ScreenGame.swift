//
//  ScreenGame.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 06/12/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class ScreenGame: SKSpriteNode{
    
    init(texture: SKTexture) {
        let size = CGSize(width: UIScreen.main.nativeBounds.width, height: UIScreen.main.nativeBounds.height)
        super.init(texture: texture, color: UIColor.clear, size: size)
        
        self.name = "screenGame"
        self.position = CGPoint(x: 0, y: 0)
        self.zPosition = 200
        
        

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

class InitialScreen: ScreenGame{
    
    init() {
        let texture = SKTexture(imageNamed: "InitialScreen")
        super.init(texture: texture)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}
