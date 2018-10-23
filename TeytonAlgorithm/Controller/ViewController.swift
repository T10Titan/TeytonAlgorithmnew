//
//  ViewController.swift
//  TeytonAlgorithm
//
//  Created by Trujillo, Teyton on 10/23/18.
//  Copyright © 2018 ctec. All rights reserved.
//

import UIKit

class ViewController:
UIViewController
{

    @IBOutlet weak var algorithmText: UILabel!
    
    
    @IBOutlet weak var swiftImage: UIImageView!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    private func formatAlgorithm() -> Void
    {
        let title : String = "How to make it in the town"
        
        let stepOne : String = "First I smell the sound"
        let stepTwo : String = "Then you turn yourself right around"
        let stepThree : String = "And then you do the brown"
        
        let algorithm = [stepOne, stepTwo, stepThree]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
        let bullet : String = "💀 Spurky huh 💀"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString (string: formattedStep)
            let outlineStyle = createOutlineStyle()
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
    
}

