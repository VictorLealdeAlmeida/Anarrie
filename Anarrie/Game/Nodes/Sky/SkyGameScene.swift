//
//  SkyGameScene.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 05/12/18.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

class CloudParticle: SKEmitterNode{
    

}

extension GameScene{
    
    func createSky(){
        
        if skyScreen.children.count == 0{
        
            let sky = SKSpriteNode()
            self.skyScreen.alpha = 0
            self.skyScreen.addChild(sky)
            
            skyScreen.run(SKAction.fadeAlpha(to: 1, duration: 2))
            
            var x = -0.5
            while x <= 0.5 {
                var y = -0.5
                while y <= 0.5 {
                    
                    let clouds = SKEmitterNode(fileNamed: "Cloud")
                    clouds?.zPosition = 100
                    clouds?.position = CGPoint(x: scaleWidth(scale: x + Double.random(in: -0.05...0.05)), y: scaleHeight(scale: y + Double.random(in: -0.05...0.05)))
                    sky.addChild(clouds!)
                    y += 0.1
                }
                x += 0.1
            }
            
        }
        
        
    }
    
    func removeSky(){
        skyScreen.run(SKAction.sequence(
            [SKAction.fadeAlpha(to: 0, duration: 1),
             SKAction.run(){
                self.removeClouds()}
            ]))
        
    }
    
    func removeClouds(){
        self.skyScreen.removeAllChildren()
    }
  
    
    
    
    
    
}
