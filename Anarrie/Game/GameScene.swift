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
    let skyScreen = SKSpriteNode()
    

    
    override func sceneDidLoad() {
        
     
        

        
        startLoopingBackground()
       
    }
    
    func play(){
        self.createPhysics()
        self.createNodes()
        self.createObstacles()
        
        self.createGameCurrent()
        
    }
    
    func createNodes(){
        self.addChild(player)
        self.addChild(Sensor(name: "sensorSnake", hight: ScaleNodeScenario.sensorSnakeHeight, phyCategory: PhysicsCategory.SensorSnake))
        self.addChild(Sensor(name: "sensorBirth", hight: ScaleNodeScenario.sensorBirthObstacle, phyCategory: PhysicsCategory.SensorBirth))
    }
    
    @objc func createObstacles(){
        self.obstacleGeneration(laneStart: laneRandom())
        self.currentGameScreen.run(SKAction.sequence([
            SKAction.wait(forDuration: TimeInterval(Double(Speeds.obstacles.rawValue)/Double.random(in: 2.5 ... 6.5))),
                          SKAction.run {
                            self.bonusNodesGeneration(laneStart: self.laneRandom())
        }]))
        self.createSkyLoterry()
    }
    
    func createSkyLoterry(){
        if Int.random(in: 0 ... 1) == 0{
           // self.createSky()
        }
        
        
    }
    
    

    
    
   

}


