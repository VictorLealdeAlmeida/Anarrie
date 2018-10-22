//
//  PhysicsEnum.swift
//  Acauã
//
//  Created by Victor Leal Porto de Almeida Arruda on 15/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import Foundation

enum PhysicsCategory: UInt32 {
    case None           = 0
    case Player         = 0b01
    case Obstacle       = 0b10
    case SensorSnake    = 0b11
    case aa    = 0b100
}

