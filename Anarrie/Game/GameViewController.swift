//
//  GameViewController.swift
//  Anarrie
//
//  Created by Victor Leal Porto de Almeida Arruda on 16/10/2018.
//  Copyright © 2018 Academy. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createScene()
       
    }

    func createScene(){
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = GameScene(fileNamed:"GameScene")!
            scene.scaleMode = .aspectFill
            
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            view.showsFPS = true
            view.showsNodeCount = true
            view.showsPhysics = true
        }
    }
    
    
    //Func derradeira, que mata o scene sem deixar rastro
    func clearScene(){
        let skView = self.view as? SKView
        if skView?.scene != nil {
            skView?.scene?.removeAllActions()
            skView?.scene?.removeAllChildren()
            skView?.presentScene(nil)
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
