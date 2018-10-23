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

    var gameScene = GameScene(fileNamed:"GameScene")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        createScene()
        createUserInputs()
       
    }

    func createScene(){
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = gameScene!
            scene.scaleMode = .aspectFill
            scene.gameViewController = self
            
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
    
    func replay(){
        clearScene()
        gameScene = GameScene(fileNamed:"GameScene")
        createScene()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}


extension GameViewController{
    
    func createUserInputs(){
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(movePlayerLeft))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(movePlayerRight))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
        
    }
    
    @objc func movePlayerLeft(){
        gameScene?.player.moveLeft()
    }
    
    @objc func movePlayerRight(){
        gameScene?.player.moveRight()
    }
    
}
