//
//  XibLoadedView.swift
//  GETPET
//
//  Created by Alexander Zaporozhchenko on 11/12/16.
//  Copyright © 2016 Alexander Zaporozhchenko. All rights reserved.
//

import SnapKit


class XibLoadedView: UIView {
    
    func xibSetup() {
        let view = self.loadFromNib()
        self.addSubview(view)
        view.snp.makeConstraints { (make) -> Void in
            make.edges.equalTo(self)
        }
    }
    
    func loadFromNib() -> UIView {
        let bundle = Bundle(for:type(of: self))
        let nib    = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view   = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.xibSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.xibSetup()
    }
}

