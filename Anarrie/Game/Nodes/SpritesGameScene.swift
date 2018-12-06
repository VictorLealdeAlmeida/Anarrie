//
//  SpritesGameScene.swift
//  InsideTheCave
//
//  Created by Victor Leal Porto de Almeida Arruda on 03/10/16.
//  Copyright © 2016 TeamVision. All rights reserved.
//

import SpriteKit
import GameplayKit


//Extesion para criar as sprites dos elementos e do cenario
//---------------------------------------------------------
extension GameScene{
    
    func spriteThreeFrames(imageOne: String, imageTwo: String, imageThree: String, time: Double) -> SKAction{
        let texture1 = SKTexture(imageNamed: imageOne)
        texture1.filteringMode = .nearest
        let texture2 = SKTexture(imageNamed: imageTwo)
        texture2.filteringMode = .nearest
        let texture3 = SKTexture(imageNamed: imageThree)
        texture3.filteringMode = .nearest
        let anim = SKAction.animate(with: [texture1, texture2, texture3, texture2], timePerFrame: time)
        let action = SKAction.repeatForever(anim)
        
        return action
        
    }
    
    func spriteSixFrames(imageOne: String, imageTwo: String, imageThree: String, imageFour: String, imageFive: String, imageSix: String, imageSeven: String) -> SKAction{

        let texture1 = SKTexture(imageNamed: imageOne)
        texture1.filteringMode = .nearest
        let texture2 = SKTexture(imageNamed: imageTwo)
        texture2.filteringMode = .nearest
        let texture3 = SKTexture(imageNamed: imageThree)
        texture3.filteringMode = .nearest
        let texture4 = SKTexture(imageNamed: imageFour)
        texture4.filteringMode = .nearest
        let texture5 = SKTexture(imageNamed: imageFive)
        texture5.filteringMode = .nearest
        let texture6 = SKTexture(imageNamed: imageSix)
        texture6.filteringMode = .nearest
        let anim = SKAction.animate(with: [texture1, texture2, texture3, texture4, texture5, texture4, texture6], timePerFrame: 0.04)
        let action = SKAction.repeatForever(anim)
        
        return action
        
    }
    
    func spriteTwoFrames(imageOne: String, imageTwo: String) -> SKAction{
        let texture1 = SKTexture(imageNamed: imageOne)
        texture1.filteringMode = .nearest
        let texture2 = SKTexture(imageNamed: imageTwo)
        texture2.filteringMode = .nearest
                let anim = SKAction.animate(with: [texture1, texture2], timePerFrame: 0.30)
        let action = SKAction.repeatForever(anim)
        
        return action
        
    }
    
}
