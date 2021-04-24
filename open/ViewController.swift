//
//  ViewController.swift
//  open
//
//  Created by 簡吟真 on 2021/4/24.
//  Jhen🐯

import UIKit

class ViewController: UIViewController {

    //IBO
    //要變化的物件
    @IBOutlet weak var hair: UIImageView!
    @IBOutlet weak var face: UIImageView!
    @IBOutlet weak var glasses: UIImageView!
    @IBOutlet weak var body: UIImageView!
    @IBOutlet weak var background: UIImageView!
    
    //選項的view
    @IBOutlet weak var hairView: UIView!
    @IBOutlet weak var faceView: UIView!
    @IBOutlet weak var glassesView: UIView!
    @IBOutlet weak var bodyView: UIView!
    @IBOutlet weak var backgroundView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hairView.isHidden = false
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    
    
    //button
    @IBAction func changeHair(_ sender: UIButton) {
        let hairImage = sender.currentImage
        hair.image = hairImage
    }
    @IBAction func changeFace(_ sender: UIButton) {
        let faceImage = sender.currentImage
        face.image = faceImage
    }
    
    @IBAction func changeGlasses(_ sender: UIButton) {
        let glassesImage = sender.currentImage
        glasses.image = glassesImage
        if glassesImage?.isSymbolImage == true{
            glasses.image = nil
        }
        
    }
    
    @IBAction func chageBody(_ sender: UIButton) {
        let bodyImage = sender.currentImage
        body.image = bodyImage
    }
    
    @IBAction func changebackground(_ sender: UIButton) {
        let backgroundImage =
            sender.currentImage
        background.image = backgroundImage
    }

    
    //分類選項
    @IBAction func selectHair(_ sender: UIButton) {
        hairView.isHidden = false
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
   
    @IBAction func selectFace(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = false
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    @IBAction func selectGlasses(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = false
        bodyView.isHidden = true
        backgroundView.isHidden = true
    }
    
    @IBAction func selectBody(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = false
        backgroundView.isHidden = true
    }
    @IBAction func selectBackground(_ sender: UIButton) {
        hairView.isHidden = true
        faceView.isHidden = true
        glassesView.isHidden = true
        bodyView.isHidden = true
        backgroundView.isHidden = false
    }
    
    //隨機
    @IBAction func selectRandom(_ sender: UIButton) {
        let hairs : [UIImage?] = [UIImage(named: "Afro"),UIImage(named: "Bangs"),UIImage(named: "Bangs 2"),UIImage(named: "Bantu Knots"),UIImage(named: "Bun"),UIImage(named: "Bun 2"),UIImage(named: "Buns"),UIImage(named: "Cornrows"),UIImage(named: "Cornrows 2"),UIImage(named: "hat-beanie"),UIImage(named: "Long"),UIImage(named: "Hijab")]
        
        let faces : [UIImage?] = [UIImage(named: "Angry with Fang"),UIImage(named: "Blank"),UIImage(named: "Cheeky"),UIImage(named: "Concerned"),UIImage(named: "Contempt"),UIImage(named: "Concerned Fear"),UIImage(named: "Driven"),UIImage(named: "Fear"),UIImage(named: "Hectic"),UIImage(named: "Loving Grin 1"),UIImage(named: "Old"),UIImage(named: "Awe")]
        
        let glassess:[UIImage?] = [nil,UIImage(named: "Glasses 2"),UIImage(named: "Glasses 3"),UIImage(named: "Glasses 4"),UIImage(named: "Glasses 5"),UIImage(named: "Glasses")]
        
        let bodys:[UIImage?] = [UIImage(named: "Blazer Black Tee"),UIImage(named: "Coffee"),UIImage(named: "Device"),UIImage(named: "Gaming"),UIImage(named: "Hoodie"),UIImage(named: "Tee 1"),UIImage(named: "Thunder T-Shirt"),UIImage(named: "Fur Jacket"),UIImage(named: "Sweater"),UIImage(named: "Gym Shirt"),UIImage(named: "Killer"),UIImage(named: "Button Shirt 2")]
        
        let backgrounds:[UIImage?] = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "background-6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13")]
        
        
        let number = Int.random(in: 0...11)
        let number1 = Int.random(in: 0...5)
        hair.image = hairs[number]
        face.image = faces[number]
        glasses.image = glassess[number1]
        body.image = bodys[number]
        background.image = backgrounds[number]
    }
    
}

