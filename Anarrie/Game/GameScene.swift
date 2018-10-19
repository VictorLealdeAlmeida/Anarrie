//
//  GameScene.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 16/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var gameViewController: GameViewController!
    let player = Player()
    
    
    override func sceneDidLoad() {
        
        createNodes()
        
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(createObstacles), userInfo: nil, repeats: true)

        
 

    }
    
    func createNodes(){
        addChild(player)
    }
    
    @objc func createObstacles(){
        addChild(laneRandom(laneStart: laneRandom()))
    }
    
    

    
    
   

}
