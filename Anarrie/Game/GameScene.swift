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
    
    let currentGameScreen = SKSpriteNode()
    let screenGameOver = SKSpriteNode()
    
    
    override func sceneDidLoad() {
        
        createPhysics()
        createNodes()
        createObstacles()
        
        createGameCurrent()
       
 

    }
    
    func createNodes(){
        self.addChild(player)
        self.addChild(Sensor(name: "sensorSnake", hight: ScaleNodeScenario.sensorSnakeHeight, phyCategory: PhysicsCategory.SensorSnake))
        self.addChild(Sensor(name: "sensorBirth", hight: ScaleNodeScenario.sensorBirthObstacle, phyCategory: PhysicsCategory.SensorBirth))
    }
    
    @objc func createObstacles(){
        obstacleGeneration(laneStart: laneRandom())
    }
    
    

    
    
   

}


