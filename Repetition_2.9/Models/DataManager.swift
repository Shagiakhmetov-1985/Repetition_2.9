//
//  DataManager.swift
//  Repetition_2.9
//
//  Created by Marat Shagiakhmetov on 05.10.2022.
//

struct DataManager {
    
    static let shared = DataManager()
    
    let typeOfAnimation = [
        "shake", "pop", "morph", "squeeze", "wobble", "swing", "flipX" ,"flipY",
        "fall", "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp",
        "slideLeft", "slideRight", "slideDown", "slideUp", "fadeIn", "fadeOut",
        "fadeInLeft", "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn",
        "zoomOut", "flash"
    ]
    
    let typeOfCurve = [
        "spring", "linear", "easeIn", "easeOut", "easeInOut"
    ]
    
    private init() {}
    
}
