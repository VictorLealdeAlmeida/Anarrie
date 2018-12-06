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
        background.position = CGPoint(x: 0, y: background.size.height - 10)
        
        

        addChild(background)
    
        
        
        background.run(SKAction.sequence([
            SKAction.moveTo(y: 0, duration: 5),
            SKAction.run({self.startLoopingBackground()}),
            SKAction.moveTo(y: -background.size.height, duration: 5),
            SKAction.removeFromParent()
            ]))
        
        
        
        
       /* let move:SKAction = SKAction.moveBy(x: 0, y: -loopingBG2.size.height, duration: 20)
        let moveBack:SKAction = SKAction.moveBy(x: 0, y: loopingBG2.size.height, duration: 0)
        let seq:SKAction = SKAction.sequence([move, moveBack])
        let `repeat`:SKAction = SKAction.repeatForever(seq)
        
        loopingBG.run(`repeat`)
        loopingBG2.run(`repeat`)*/
    }
    
    func resetLoopingBackground(){
        
        
        
        /*loopingBG.position = CGPoint(x: 0, y: 0)
        loopingBG2.position = CGPoint(x: loopingBG2.size.width - 3, y: 0)*/
    }
        
  
    
}
