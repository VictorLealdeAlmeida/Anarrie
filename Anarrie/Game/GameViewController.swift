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

    @IBOutlet weak var viewScreen: UIView!
    
    @IBOutlet weak var replayButton: UIButton!
    @IBOutlet weak var scoreResult: UILabel!
    @IBOutlet weak var points: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    
    
    var gameScene = GameScene(fileNamed:"GameScene")

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        createScene()
        createUserInputs()
        setsView()
    }
    
    func setsView(){
        
        self.replayButton.isHidden = true
        self.scoreResult.isHidden = true
        self.points.isHidden = true
        
    }

    
    func createScene(){
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = gameScene!
            scene.scaleMode = .aspectFill
            scene.gameViewController = self
            
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = false
            view.showsFPS = false
            view.showsNodeCount = false
            view.showsPhysics = false
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
            
        }else if self.gameScene?.currentGameScreen.name != nil{
            if Int.random(in: 0 ... 5) == 0{
                self.gameScene?.removeSky()
            }
        }else{
            self.viewScreen.fadeOut()
            self.gameScene?.play()
        }
        
        
    }
    
    @IBAction func replay(_ sender: UIButton) {
        self.replayButton.isHidden = true
        self.scoreResult.isHidden = true
        self.points.isHidden = true
        self.startLabel.isHidden = false
        
        self.replay()
    }
    
    func showGameOverScreen(score: String){
        
        self.replayButton.isHidden = false
        self.scoreResult.isHidden = false
        self.points.isHidden = false
        self.startLabel.isHidden = true
        
        self.scoreResult.text = score
        
        self.viewScreen.fadeIn()
    }
    
    func setTap(selector: Selector?){
        let tapGesture = UITapGestureRecognizer(target: self, action: selector)
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        view.addGestureRecognizer(tapGesture)
    }
    
    
    
}


public extension UIView {
    
    func fadeIn(duration: TimeInterval = 1.0) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1.0
        })
    }
    
    func fadeOut(duration: TimeInterval = 1.0) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0.0
        })
    }
    
}
