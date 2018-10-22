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
        
        createPhysics()
        createNodes()
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(createObstacles), userInfo: nil, repeats: true)
        
        createSensor()
 

    }
    
    func createSensor() {
        let sensor = SKSpriteNode(imageNamed: "lui1")
        sensor.position = CGPoint(x: 0, y: ScaleNodeScenario.sensorSnakeHeight.rawValue)
        sensor.size = CGSize(width: self.size.width, height: 10)
        sensor.physicsBody = SKPhysicsBody(rectangleOf: sensor.size)
        
        sensor.physicsBody?.contactTestBitMask = PhysicsCategory.SensorSnake.rawValue
        sensor.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle.rawValue
        sensor.physicsBody?.collisionBitMask = PhysicsCategory.None.rawValue
        
        self.addChild(sensor)
    }
    
    func createNodes(){
        addChild(player)
    }
    
    @objc func createObstacles(){
        addChild(laneRandom(laneStart: laneRandom()))
    }
    
    

    
    
   

}
