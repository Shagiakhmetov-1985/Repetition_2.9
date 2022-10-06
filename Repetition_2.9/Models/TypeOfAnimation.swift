//
//  TypeOfAnimation.swift
//  Repetition_2.9
//
//  Created by Marat Shagiakhmetov on 05.10.2022.
//

struct Animation {
    var animation: String
    var curve: String
    var force: Float
    var duration: Float
    var delay: Float
}

extension Animation {
    static func getAnimation() -> Animation {
        let animation = DataManager.shared.typeOfAnimation.randomElement()
        let curve = DataManager.shared.typeOfCurve.randomElement()
        let force = Float.random(in: 1.5...2)
        let duration = Float.random(in: 1.1...1.5)
        let delay = Float.random(in: 0.1...0.5)
        let setAntimation = Animation(
            animation: animation ?? "",
            curve: curve ?? "",
            force: force,
            duration: duration,
            delay: delay
        )
        return setAntimation
    }
}
