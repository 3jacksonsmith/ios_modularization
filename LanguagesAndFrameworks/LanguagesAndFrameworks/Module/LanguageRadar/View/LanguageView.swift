//
//  LanguageView.swift
//  LanguageView
//
//  Created by jackson on 29/04/19.
//  Copyright © 2019 Modularization Corp. All rights reserved.
//

import UIKit

class LanguageView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadSubViewFromNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadSubViewFromNib()
    }
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 8.0
        self.clipsToBounds = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        self.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(sender: UITapGestureRecognizer? = nil) {
        if let url = URL(string: "https://www.thoughtworks.com/radar/languages-and-frameworks") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    func loadSubViewFromNib() {
        let childView = UINib(nibName: "Language", bundle: Bundle(for: type(of: self))).instantiate(withOwner: self, options: nil)[0] as! UIView
        addSubview(childView)
    }
}
