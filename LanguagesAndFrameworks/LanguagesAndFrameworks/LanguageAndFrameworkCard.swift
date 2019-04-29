//
//  LanguageAndFrameworkCard.swift
//  LanguageAndFrameworks
//
//  Created by jackson on 28/04/19.
//  Copyright © 2019 Modularization Corp. All rights reserved.
//

import UIKit

open class LanguageAndFrameworkCard: UIView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        instanceFromNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        instanceFromNib()
    }
    
    fileprivate func instanceFromNib() {
        let view = UINib(nibName: "LanguageAndFrameworkCard", bundle: nil).instantiate(withOwner: self, options: nil)[0] as! UIView
        self.addSubview(view)
    }
    
}
