//
//  Player.swift
//  Acauã
//
//  Created by Victor Leal Porto de Almeida Arruda on 15/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class Player: SKSpriteNode{
    
    var currentLane: LanesScale = .centerLane
    var changeLaneDuration = 0.3
    
    init() {
        let texture = SKTexture(imageNamed: "lui1")
        let size = CGSize(width: 200, height: 200)
        super.init(texture: texture, color: UIColor.clear, size: size)
        
        self.name = "player"
        self.position = CGPoint(x: widthCenter(), y: scaleHeight(scale: ScaleNodeScenario.playerHeight.rawValue))
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.width/3)
        
        self.physicsBody?.categoryBitMask = PhysicsCategory.Player.rawValue
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Obstacle.rawValue
        self.physicsBody?.collisionBitMask = PhysicsCategory.None.rawValue
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func changeLane(newLane: LanesScale) {
        self.currentLane = newLane
    }
    
    func moveRight() {
        
        if self.currentLane == .leftLane {
            self.changeLane(newLane: .centerLane)
            self.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.centerLane.rawValue), duration: self.changeLaneDuration))
        } else if self.currentLane == .centerLane {
            self.changeLane(newLane: .rightLane)
            self.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.rightLane.rawValue), duration: self.changeLaneDuration))
            
        } else {
            // do nothing
        }
        
    }
    
    func moveLeft() {
        
        if self.currentLane == .rightLane {
            self.changeLane(newLane: .centerLane)
            self.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.centerLane.rawValue), duration: self.changeLaneDuration))
        } else if self.currentLane == .centerLane {
            self.changeLane(newLane: .leftLane)
            self.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.leftLane.rawValue), duration: self.changeLaneDuration))
            
        } else {
            // do nothing
        }
        
    }
    
    
    
    
}
