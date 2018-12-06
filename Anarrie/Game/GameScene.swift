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
    
    let backgroundMusic = SKAudioNode(fileNamed: "DerramaroGai.mp3")

    

    
    override func sceneDidLoad() {
        

     
        prePlay()
       
    }
    
    func prePlay(){
        self.startLoopingBackground()
    }
    
    func play(){
        self.createPhysics()
        self.createNodes()
        self.createObstacles()
        
        self.createGameCurrent()
        
        backgroundMusic.autoplayLooped = true
        addChild(backgroundMusic)
        
    }
    
    func createNodes(){
        self.addChild(player)
        player.run(spriteThreeFrames(imageOne: "player1", imageTwo: "player2", imageThree: "player3", time: 0.1))
        
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
        if Int.random(in: 0 ... 30) == 0{
            self.createSky()
        }
        
        
    }
    
    

    
    
   

}


