//
//  ViewController.swift
//  MarioKart
//
//  Created by Akarsh Kumar on 3/20/19.
//  Copyright © 2019 Akarsh Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var startingPointKart0 = CGPoint()
    var startingPointKart1 = CGPoint()
    var startingPointKart2 = CGPoint()
    
    @IBOutlet weak var kart0View: UIImageView!
    @IBOutlet weak var kart1View: UIImageView!
    @IBOutlet weak var kart2View: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startingPointKart0 = kart0View.center
        startingPointKart1 = kart1View.center
        startingPointKart2 = kart2View.center
        
    }

    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        
        let kartView = sender.view!
        
        kartView.center = location
    }
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        
        let kartView = sender.view!
        
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
        //kartView.transform = kartView.transform.scaledBy(x: scale, y: scale)
        
    }
    
    @IBAction func didRotateKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        
        let kartView = sender.view!
        
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
        //kartView.transform = kartView.transform.rotated(by: rotation)
        
    }
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        let kartView = sender.view!
        
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 400
        }
    }
    
    
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        
        UIView.animate(withDuration: 1) {
            self.kart0View.center = self.startingPointKart0
            self.kart1View.center = self.startingPointKart1
            self.kart2View.center = self.startingPointKart2
            
            self.kart0View.transform = CGAffineTransform.identity
            self.kart1View.transform = CGAffineTransform.identity
            self.kart2View.transform = CGAffineTransform.identity
        }
        
    }
    
    
}

