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
    
    func obstacleGeneration(laneStart: LanesScale){
        let value = Int.random(in: 0 ... 5)
        
        switch value {
        case 0 ... 3:
            let linePartnet = laneRandom()

            if linePartnet != laneStart{
                addChild(Cactus(laneStart: laneStart))
               // addChild(Cactus(laneStart: linePartnet))
            }else{
                addChild(Cactus(laneStart: laneStart))
            }
        case 4:
            addChild(Bonfire(laneStart: laneStart))
        case 5:
            addChild(Snake(laneStart: laneStart))
        default:
            break
        }
    }
    
    func cactusPartner(laneFilled: LanesScale){
        addChild(Cactus(laneStart: .centerLane))
    }
    
    
    
}
