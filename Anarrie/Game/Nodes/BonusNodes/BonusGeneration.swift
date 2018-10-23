//
//  BonusGeneration.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 23/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

extension GameScene{
    
    func bonusNodesGeneration(laneStart: LanesScale){
       
        if Int.random(in: 0 ... 1) == 1{
        
            let value = Int.random(in: 0 ... 5)
        
            switch value {
            case 0 ... 5:
                addChild(Corn(laneStart: laneStart))
            default:
                break
            }
        }
    }
    
    
    
}

