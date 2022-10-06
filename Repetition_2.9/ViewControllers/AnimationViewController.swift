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
    
    private var animation = Animation.getAnimation().animation
    private var curve = Animation.getAnimation().curve
    private var force = CGFloat(Animation.getAnimation().force)
    private var duration = CGFloat(Animation.getAnimation().duration)
    private var delay = CGFloat(Animation.getAnimation().delay)
    
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
        Force: \(format(from: force))
        Duration: \(format(from: duration))
        Delay: \(format(from: delay))
        """
    }
    
    @IBAction func buttonRunAnimation() {
        if buttonRun.currentTitle == "Run" {
            runAnimation()
        } else {
            labelOfResults.text = """
            Animation: \(animation)
            Curve: \(curve)
            Force: \(format(from: force))
            Duration: \(format(from: duration))
            Delay: \(format(from: delay))
            """
            runAnimation()
        }
    }
    
    private func runAnimation() {
        viewOfAnimation.animation = animation
        viewOfAnimation.curve = curve
        viewOfAnimation.force = force
        viewOfAnimation.duration = duration
        viewOfAnimation.delay = delay
        viewOfAnimation.animate()
        animation = Animation.getAnimation().animation
        curve = Animation.getAnimation().curve
        force = CGFloat(Animation.getAnimation().force)
        duration = CGFloat(Animation.getAnimation().duration)
        delay = CGFloat(Animation.getAnimation().delay)
        
        buttonRun.setTitle("Run \(animation)", for: .normal)
    }
    
    private func format(from text: CGFloat) -> String {
        String(format: "%.2f", text)
    }
}

