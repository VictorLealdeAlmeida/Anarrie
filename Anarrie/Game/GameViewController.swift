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
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.movePlayerLeft))
        swipeLeft.direction = .left
        view.addGestureRecognizer(swipeLeft)
        
        
        let swipeRight:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.movePlayerRight))
        swipeRight.direction = .right
        view.addGestureRecognizer(swipeRight)
        
        setTap(selector: #selector(self.tapController))
    }
    
    @objc func movePlayerLeft(){
        self.gameScene?.player.moveLeft()
    }
    
    @objc func movePlayerRight(){
        self.gameScene?.player.moveRight()
    }
    
    @objc func tapPlay(){
        self.gameScene?.play()
    }
    
    @objc func tapController(){
        //ALERTA - bad smell
        
        
        if self.gameScene?.screenGameOver.name != nil{
            self.replay()
        }else if self.gameScene?.currentGameScreen.name != nil{
            if Int.random(in: 0 ... 5) == 0{
                self.gameScene?.removeSky()
            }
        }else{
            self.gameScene?.play()
        }
        
        
    }
    
    func setTap(selector: Selector?){
        let tapGesture = UITapGestureRecognizer(target: self, action: selector)
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        view.addGestureRecognizer(tapGesture)
    }
    
}
