//
//  ExtensionsNode.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 18/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import SpriteKit

//Metodos para pegar o tamanho da tela

extension SKNode{
    
    private func heightScreen() -> CGFloat{
        return UIScreen.main.nativeBounds.height
    }
    
    private func widthScreen() -> CGFloat{
        return  UIScreen.main.nativeBounds.width
    }
    
    func scaleHeight(scale: Double) -> CGFloat{
        return heightScreen() * CGFloat(scale)
    }
    
    func scaleWidth(scale: Double) -> CGFloat{
        return widthScreen() * CGFloat(scale)
    }
    
    func heightCenter() -> CGFloat{
        return 0
    }
    
    func widthCenter() -> CGFloat{
        return 0
    }
    
}
