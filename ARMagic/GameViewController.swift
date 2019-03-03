//
//  GameViewController.swift
//  ARMagic
//
//  Created by Gelei Chen on 2/28/19.
//  Copyright © 2019 Gelei. All rights reserved.
//

import ARKit
import LBTAComponents

class GameViewController: UIViewController {
    
    let arView: ARSCNView = {
       let view = ARSCNView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let configuration = ARWorldTrackingConfiguration()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
        
        
        arView.session.run(configuration, options: [])
        arView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setupViews() {
//        arView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        arView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        arView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        arView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//
        view.addSubview(arView)
        arView.anchor(for: view.topAnchor)
    }
}
