//
//  ObstaclesGeneration.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 19/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

extension GameScene{
    
    func laneRandom() -> LanesScale{
         let value = Int.random(in: 0 ... 2)
        
        switch value {
        case 0:
            return .leftLane
        case 1:
            return .centerLane
        case 2:
            return .rightLane
        default:
            return .centerLane
        }
    }
    
    func obstacleRandom(laneStart: LanesScale) -> Obstacle{
        let value = Int.random(in: 0 ... 2)
        
        switch value {
        case 0:
            return Cactus(laneStart: laneStart)
        case 1:
            return Bonfire(laneStart: laneStart)
        case 2:
            return Snake(laneStart: laneStart)
        default:
            return Cactus(laneStart: laneStart)
        }
    }
    
    
    
}
