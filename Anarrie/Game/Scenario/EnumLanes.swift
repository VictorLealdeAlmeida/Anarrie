//
//  EnumLanes.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 18/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

enum LanesScale: Double{
    case leftLane = -0.38
    case centerLane = 0
    case rightLane = 0.38
}

enum ScaleNodeScenario: Double{
    case playerHeight = -0.35
    case obstacleBirth = 0.6 
    case obstacleDead = -0.6
    case sensorSnakeHeight = 0
    case sensorBirthObstacle = -0.1
}

enum Speeds: Double{
    case obstacles = 3 //Tempo em segundos para pecorrer o mapa
}



