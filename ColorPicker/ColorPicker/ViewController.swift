//
//  ViewController.swift
//  ColorPicker
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(R)
        view.addSubview(B)
        view.addSubview(G)
        view.addSubview(Output)
        view.addSubview(label)
    }

    private var R: UISlider = {
       var slider = UISlider()
       slider = UISlider(frame: CGRect(x: 45,y: 70,width: 310,height: 31))
       slider.tintColor = .red
       slider.minimumValue = 0
       slider.maximumValue = 255
       slider.value = 0
       slider.isContinuous = true
       slider.isUserInteractionEnabled = true
       slider.addTarget(self, action: #selector(SliderDidChange(_:)), for: .valueChanged)
       return slider
    }()
    
    private var B: UISlider = {
       var slider = UISlider()
       slider = UISlider(frame: CGRect(x: 45,y: 140,width: 310,height: 31))
        slider.tintColor = .blue
       slider.minimumValue = 0
       slider.maximumValue = 255
       slider.value = 0
       slider.isContinuous = true
       slider.isUserInteractionEnabled = true
       slider.addTarget(self, action: #selector(SliderDidChange(_:)), for: .valueChanged)
       return slider
    }()
    
    private var G: UISlider = {
       var slider = UISlider()
       slider = UISlider(frame: CGRect(x: 45,y: 210,width: 310,height: 31))
        slider.tintColor = .green
       slider.minimumValue = 0
       slider.maximumValue = 255
       slider.value = 0
       slider.isContinuous = true
       slider.isUserInteractionEnabled = true
       slider.addTarget(self, action: #selector(SliderDidChange(_:)), for: .valueChanged)
       return slider
    }()
    
    private var Output: UIView = {
        var view = UIView(frame: CGRect(x: 50, y: 300, width: 350, height: 350))
        view.backgroundColor = .black
        return view
    }()
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "RBG: 0, 0, 0"
        label.frame = CGRect(x: 50, y: 650, width: 300, height: 200)
        label.font = UIFont(name: "ArialMT", size: 30)
        label.textAlignment = .center
        return label
    }()

    @objc func SliderDidChange(_ sender: UISlider) {
        Output.backgroundColor = .init(red: CGFloat(R.value / 255), green: CGFloat(G.value / 255), blue: CGFloat(B.value / 255), alpha: 1)
        label.text = "RBG: \(Int(R.value)), \(Int(B.value)), \(Int(G.value))"

    }
}

