//
//  Obstacles.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 18/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class Obstacle: SKSpriteNode{
    
    init(texture: SKTexture, name: String, laneStart: LanesScale) {
        let size = CGSize(width: 100, height: 100)
        super.init(texture: texture, color: UIColor.clear, size: size)
        
        self.name = name
        self.position = CGPoint(x: scaleWidth(scale: laneStart.rawValue), y: scaleHeight(scale: ScaleNodeScenario.obstacleBirth.rawValue))
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: self.size.width/2)
        
        self.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle.rawValue
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Player.rawValue | PhysicsCategory.SensorSnake.rawValue
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

class Cactus: Obstacle{
    
    init(laneStart: LanesScale) {
        let texture = SKTexture(imageNamed: "cactoo")
        super.init(texture: texture, name: "cactus", laneStart: laneStart)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
}

class Bonfire: Obstacle{
    
    init(laneStart: LanesScale) {
        let texture = SKTexture(imageNamed: "fogueira")
        super.init(texture: texture, name: "bonfire", laneStart: laneStart)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}

class Snake: Obstacle{
    
    var currentLane: LanesScale!
    
    init(laneStart: LanesScale) {
        let texture = SKTexture(imageNamed: "cobra")
        super.init(texture: texture, name: "snake", laneStart: laneStart)
        
        self.currentLane = laneStart

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func laneLottery() {
        let x = Int.random(in: 0 ... 1)
        if x == 1{
            changeLane()
        }
    }
    
    private func changeLane(){
        if self.currentLane == LanesScale.leftLane || self.currentLane == LanesScale.rightLane{
            self.run(SKAction.moveTo(x: scaleWidth(scale: LanesScale.centerLane.rawValue), duration: 0.5))
        }else{
            let x = Int.random(in: 0 ... 1)
            var laneChoice = LanesScale.leftLane
            if x == 1{
                laneChoice = LanesScale.rightLane
            }
            self.run(SKAction.moveTo(x: scaleWidth(scale: laneChoice.rawValue), duration: 0.5))
            
        }
    }
    
}
