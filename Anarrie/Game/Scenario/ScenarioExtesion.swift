//
//  ScenarioExtesion.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 05/12/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

extension GameScene{
    
    func startLoopingBackground(){
       // resetLoopingBackground()
        
        
       
        
        let background:SKSpriteNode = SKSpriteNode(imageNamed: "raias")
        background.setScale(0.5)
        background.zPosition = -200
        background.position = CGPoint(x: 0, y: background.size.height - 10)
        
        

        addChild(background)
    
        let duration = Speeds.obstacles.rawValue * 1.1
        
        background.run(SKAction.sequence([
            SKAction.moveTo(y: 0, duration: duration),
            SKAction.run({self.startLoopingBackground()}),
            SKAction.moveTo(y: -background.size.height, duration: duration),
            SKAction.removeFromParent()
            ]))
        
        
        

    }
    
    func resetLoopingBackground(){
        
        
        
        /*loopingBG.position = CGPoint(x: 0, y: 0)
        loopingBG2.position = CGPoint(x: loopingBG2.size.width - 3, y: 0)*/
    }
        
  
    
}
