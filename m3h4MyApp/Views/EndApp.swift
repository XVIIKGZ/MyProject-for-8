//
//  EndApp.swift
//  m3h4MyApp
//
//  Created by Nazar Kydyraliev on 14/1/23.
//

import UIKit
import SnapKit

class EndApp: UIViewController {
    
    var textProfile = ""
    var titleProfile = ""
    
    let viewForInfo: UIView = {
        let spaceFFR = UIView()
        spaceFFR.backgroundColor = .white
        spaceFFR.layer.cornerRadius = 10
        return spaceFFR
    }()
    
    let viewForTextProfile: UIView = {
        let spaceTR = UIView()
        spaceTR.backgroundColor = .black
        spaceTR.layer.cornerRadius = 10
        return spaceTR
    }()
    
    let titleForm: UILabel = {
        let titleF = UILabel()
        titleF.textColor = .black
        titleF.textAlignment = .center
        return titleF
    }()
    
    
    let textFromRegistration: UILabel = {
        let titleTR = UILabel()
        titleTR.textColor = .white
        titleTR.font = .systemFont(ofSize: CGFloat(60.0))
        titleTR.backgroundColor = .black
        titleTR.textAlignment = .center
        return titleTR
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        titleForm.text = self.titleProfile
        textFromRegistration.text = self.textProfile
        
        view.addSubview(viewForInfo)
        viewForInfo.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(200)
            make.width.equalTo(400)
        }
        
        view.addSubview(viewForTextProfile)
        viewForTextProfile.snp.makeConstraints { make in
            make.left.right.bottom.equalTo(viewForInfo).inset(10)
            make.height.equalTo(120)
        }
        
        view.addSubview(titleForm)
        titleForm.snp.makeConstraints { make in
            make.centerX.equalTo(viewForInfo.snp.centerX)
            make.height.equalTo(65)
            make.left.right.equalTo(viewForInfo).inset(10)
            make.top.equalTo(viewForInfo.snp.top).inset(5)
        }
        
        view.addSubview(textFromRegistration)
        textFromRegistration.snp.makeConstraints { make in
            make.left.right.equalTo(viewForTextProfile).inset(10)
            make.top.bottom.equalTo(viewForTextProfile).inset(10)
        }
    }

}
