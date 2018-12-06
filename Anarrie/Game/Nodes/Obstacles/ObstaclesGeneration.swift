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
                //Mudar name do cacto parceiro para nao acionar o sensor de nascimento duas vezes
                let cactusPartner = Cactus(laneStart: linePartnet)
                cactusPartner.name = "cactusPartner"
                addChild(cactusPartner)
            }
            
            addChild(Cactus(laneStart: laneStart))
        case 4:
            addChild(Bonfire(laneStart: laneStart))
        case 5:
            let snake = Snake(laneStart: laneStart)
         //   snake.run(spriteThreeFrames(imageOne: "snake1", imageTwo: "snake2", imageThree: "snake3", time: 0.1))
            addChild(snake)

        default:
            break
        }
    }
    
    func cactusPartner(laneFilled: LanesScale){
        addChild(Cactus(laneStart: .centerLane))
    }
    
    
    
}
