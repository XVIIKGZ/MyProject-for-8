//
//  StartViewController.swift
//  m3h4MyApp
//
//  Created by Nazar Kydyraliev on 10/1/23.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    
    let logoApp: UIImageView = {
        let logoImg = UIImageView()
        logoImg.image = UIImage (named: "logo")
        return logoImg
    }() // --- setting image logo app ---
    
    let logIn: UILabel = {
        let logInLabel = UILabel()
        return logInLabel
    }() // --- setting text label ---
    
    let spaceViewForLogin: UIView = {
        let spaceVFL = UIView()
        spaceVFL.backgroundColor = .white
        spaceVFL.layer.cornerRadius = 10
        return spaceVFL
    }() // --- setting view for login ---
    
    let imgProf: UIImageView = {
        let imgProfile = UIImageView()
        imgProfile.image = UIImage (named: "login")
        return imgProfile
    }() // --- setting image login ---
    
    let imgPass: UIImageView = {
        let imgPass = UIImageView()
        imgPass.image = UIImage (named: "password")
        return imgPass
    }() // --- setting image paswword ---
    
    let loginTF: UITextField = {
        let logTF = UITextField ()
        logTF.placeholder = "Email or number phone"
        return logTF
    }() // --- setting text field for email or number ---
    
    let passwordTF: UITextField = {
        let passTF = UITextField ()
        passTF.placeholder = "Password"
        return passTF
    }() // --- setting text field for password ---
    
    let btnLogin: UIButton = {
        let btnLog = UIButton ()
        btnLog.setTitle("Sign In", for: .normal)
        btnLog.backgroundColor = .blue
        btnLog.layer.cornerRadius = 10
        btnLog.setTitleColor(.white, for: .normal)
        return btnLog
    } () // --- setting button Sign In ---
    
    let btnForgotPass: UIButton = {
        let btnFP = UIButton ()
        btnFP.setTitle("Forgot password", for: .normal)
        btnFP.backgroundColor = .gray
        btnFP.layer.cornerRadius = 10
        btnFP.setTitleColor(.white, for: .normal)
        return btnFP
    } () // --- setting button Sign In ---
    
    let btnCreateAcc: UIButton = {
        let btnCA = UIButton ()
        btnCA.setTitle("Create account", for: .normal)
        btnCA.backgroundColor = .lightGray
        btnCA.layer.cornerRadius = 10
        btnCA.setTitleColor(.white, for: .normal)
        return btnCA
    } () // --- setting button Create account ---
    
    let textInfo: UILabel = {
        let textI = UILabel ()
        textI.text = "The use of your data is completely confidential. Also, thank you so much for installing this app."
        textI.textColor = .white
        textI.numberOfLines = 0
        textI.backgroundColor = .black
        textI.font = .systemFont(ofSize: 16)
        return textI
    } () // --- setting text info ---
    
    let imgInfo: UIImageView = {
        let imgI = UIImageView ()
        imgI.image = UIImage(named: "info")
        return imgI
    } () // --- setting image for info ---
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.addSubview(logoApp) // -> add Logo App
        logoApp.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(200)
            make.width.equalTo(150)
            make.height.equalTo(150)
        }
        
        view.addSubview(logIn) // -> add label text Log In
        logIn.text = "Log In"
        logIn.textColor = .white
        logIn.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(50)
        }
        
        view.addSubview(spaceViewForLogin) // -> add view for log and pass
        spaceViewForLogin.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoApp.snp.bottom).offset(15)
            make.trailing.leading.equalToSuperview().inset(30)
            make.height.equalTo(115)
        }
        
        view.addSubview(imgProf) // -> add in view img for login
        imgProf.snp.makeConstraints { make in
            make.left.equalTo(spaceViewForLogin).inset(5)
            make.top.equalTo(spaceViewForLogin).inset(5)
            make.width.equalTo(50)
            make.height.equalTo(50)
        }
        
        view.addSubview(imgPass) // -> add in view img for password
        imgPass.snp.makeConstraints { make in
            make.bottom.equalTo(spaceViewForLogin).inset(5)
            make.left.equalTo(spaceViewForLogin).inset(5)
            make.height.equalTo(50)
            make.width.equalTo(50)
        }
        
        view.addSubview(loginTF) // -> add in view text field for email or number
        loginTF.snp.makeConstraints { make in
            make.top.equalTo(spaceViewForLogin).inset(5)
            make.left.equalTo(imgProf).offset(55)
            make.right.equalTo(spaceViewForLogin).inset(5)
            make.height.equalTo(50)
        }
        
        view.addSubview(passwordTF) // -> add in view text field for password
        passwordTF.snp.makeConstraints { make in
            make.bottom.equalTo(spaceViewForLogin).inset(5)
            make.left.equalTo(imgProf).offset(55)
            make.right.equalTo(spaceViewForLogin).inset(5)
            make.height.equalTo(50)
        }
        
        view.addSubview(btnLogin) // -> add button Sign In
        btnLogin.snp.makeConstraints { make in
            make.top.equalTo(spaceViewForLogin.snp.bottom).offset(20)
            make.trailing.leading.equalToSuperview().inset(30)
            make.height.equalTo(50)
        }
        
        view.addSubview(btnForgotPass) // -> add button Forgot password
        btnForgotPass.snp.makeConstraints { make in
            make.top.equalTo(btnLogin.snp.bottom).offset(10)
            make.trailing.leading.equalToSuperview().inset(30)
            make.height.equalTo(50)
        }
        
        view.addSubview(btnCreateAcc) // -> add button Create account
        btnCreateAcc.addTarget(self, action: #selector(buttonCreate), for: .touchUpInside)
        btnCreateAcc.snp.makeConstraints { make in
            make.top.equalTo(btnForgotPass.snp.bottom).offset(10)
            make.trailing.leading.equalToSuperview().inset(30)
            make.height.equalTo(50)
        }
        
        view.addSubview(textInfo) // -> add text info
        textInfo.snp.makeConstraints { make in
            make.top.equalTo(btnCreateAcc.snp.bottom).offset(10)
            make.left.equalTo(spaceViewForLogin.snp.left).inset(25)
            make.right.equalToSuperview().inset(30)
            make.height.equalTo(100)
        }
        
        view.addSubview(imgInfo) // -> add image for info
        imgInfo.layer.cornerRadius = 10
        imgInfo.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(30)
            make.top.equalTo(btnCreateAcc.snp.bottom).offset(33)
            make.height.equalTo(20)
            make.width.equalTo(20)
        }
        
    }
    
    @objc func buttonCreate(_ sender: UIButton) {
        print("open view create account")
        let createAccVC = CreateAccount()
        self.navigationController?.pushViewController(createAccVC, animated: true)
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
