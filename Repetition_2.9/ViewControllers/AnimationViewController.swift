//
//  ViewController.swift
//  Repetition_2.9
//
//  Created by Marat Shagiakhmetov on 05.10.2022.
//

import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var viewOfAnimation: SpringView!
    @IBOutlet weak var buttonRun: SpringButton!
    
    @IBOutlet weak var labelOfResults: UILabel!
    
    private let cornerForView: CGFloat = 10
    private let cornerForButton: CGFloat = 10
    
    private let animation = Animation.getAnimation().animation
    private let curve = Animation.getAnimation().curve
    private let force = Animation.getAnimation().force
    private let duration = Animation.getAnimation().duration
    private let delay = Animation.getAnimation().delay
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        buttonRun.layer.cornerRadius = cornerForButton
        buttonRun.setTitle("Run", for: .normal)
        buttonRun.setTitleColor(.white, for: .normal)
        
        viewOfAnimation.layer.cornerRadius = cornerForView
        
        labelOfResults.text = """
        Animation: \(animation)
        Curve: \(curve)
        Force: \(force)
        Duration: \(duration)
        Delay: \(delay)
        """
    }
}

