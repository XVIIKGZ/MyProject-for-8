//
//  CreateAccount.swift
//  m3h4MyApp
//
//  Created by Nazar Kydyraliev on 11/1/23.
//

import UIKit
import SnapKit

class CreateAccount: UIViewController {
    
    let inputFirstName: UITextField = {
        let inputFN = UITextField ()
        inputFN.placeholder = " First Name *"
        inputFN.backgroundColor = .lightGray
        inputFN.textColor = .white
        inputFN.layer.cornerRadius = 10
        return inputFN
    } () // --- First name text field ---
    
    let inputSurname: UITextField = {
        let inputSN = UITextField ()
        inputSN.placeholder = " Surname *"
        inputSN.backgroundColor = .lightGray
        inputSN.textColor = .white
        inputSN.layer.cornerRadius = 10
        return inputSN
    } () // --- Surname text field ---
    
    let inputAge: UITextField = {
        let inputAge = UITextField ()
        inputAge.placeholder = " Your age *"
        inputAge.backgroundColor = .lightGray
        inputAge.textColor = .white
        inputAge.layer.cornerRadius = 10
        return inputAge
    } () // --- Age text field ---
    
    let inputEmail: UITextField = {
        let inputEm = UITextField ()
        inputEm.placeholder = " Email *"
        inputEm.backgroundColor = .lightGray
        inputEm.textColor = .white
        inputEm.layer.cornerRadius = 10
        return inputEm
    } () // --- Email text field ---
    
    let inputNumber: UITextField = {
        let inputNB = UITextField ()
        inputNB.placeholder = " Number phone *"
        inputNB.backgroundColor = .lightGray
        inputNB.textColor = .white
        inputNB.layer.cornerRadius = 10
        return inputNB
    } () // --- Number phone text field ---
    
    let inputCountry: UITextField = {
        let inputCoun = UITextField ()
        inputCoun.placeholder = " Country *"
        inputCoun.backgroundColor = .lightGray
        inputCoun.textColor = .white
        inputCoun.layer.cornerRadius = 10
        return inputCoun
    } () // --- Country text field ---
    
    let inputCity: UITextField = {
        let inputCi = UITextField ()
        inputCi.placeholder = " City *"
        inputCi.backgroundColor = .lightGray
        inputCi.textColor = .white
        inputCi.layer.cornerRadius = 10
        return inputCi
    } () // --- First name text field ---
    
    let btnFinishReg: UIButton = {
        let btnCC = UIButton ()
        btnCC.setTitle("Finish Registration", for: .normal)
        btnCC.tintColor = .white
        btnCC.layer.cornerRadius = 10
        btnCC.backgroundColor = .black
        return btnCC
    } ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(inputFirstName) // -> add input first name
        inputFirstName.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.top.equalToSuperview().inset(120)
            make.height.equalTo(50)
        }
        
        view.addSubview(inputSurname) // -> add input surname
        inputSurname.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.top.equalTo(inputFirstName.snp.bottom).offset(5)
            make.height.equalTo(50)
        }
        
        view.addSubview(inputAge) // -> add input age
        inputAge.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.top.equalTo(inputSurname.snp.bottom).offset(5)
            make.height.equalTo(50)
        }
        
        view.addSubview(inputEmail) // -> add input email
        inputEmail.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.top.equalTo(inputAge.snp.bottom).offset(5)
            make.height.equalTo(50)
        }
        
        view.addSubview(inputNumber) // -> add input number
        inputNumber.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.top.equalTo(inputEmail.snp.bottom).offset(5)
            make.height.equalTo(50)
        }
        
        view.addSubview(inputCountry) // -> add input county
        inputCountry.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.top.equalTo(inputNumber.snp.bottom).offset(5)
            make.height.equalTo(50)
        }
        
        view.addSubview(inputCity) // -> add input city
        inputCity.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(30)
            make.top.equalTo(inputCountry.snp.bottom).offset(5)
            make.height.equalTo(50)
        }
        
        
        view.addSubview(btnFinishReg)
        btnFinishReg.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(inputCity.snp.bottom).offset(100)
            make.height.equalTo(50)
            make.left.right.equalToSuperview().inset(30)
        }
        btnFinishReg.addTarget(self, action: #selector(buttonFinishRegistration), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc func buttonFinishRegistration(_ sender: UIButton){
        let formFirstName = inputFirstName.text!
        let formSurname = inputSurname.text!
        let formAge = inputAge.text!
        let formEmail = inputEmail.text!
        let formNumber = inputNumber.text!
        let formCounty = inputCountry.text!
        let formCity = inputCity.text!
        
        let finishFormProfile: [String] = [formFirstName, formSurname, formAge, formEmail, formNumber, formCounty, formCity]
        
        if inputFirstName.text == ""{
            inputFirstName.attributedPlaceholder = NSAttributedString(
                string: " First Name *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        if inputSurname.text == ""{
            inputSurname.attributedPlaceholder = NSAttributedString(
                string: " Surname *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        if inputAge.text == ""{
            inputAge.attributedPlaceholder = NSAttributedString(
                string: " Your age *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        if inputEmail.text == ""{
            inputEmail.attributedPlaceholder = NSAttributedString(
                string: " Country *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        if inputNumber.text == ""{
            inputNumber.attributedPlaceholder = NSAttributedString(
                string: " Number phone *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        if inputCountry.text == ""{
            inputCountry.attributedPlaceholder = NSAttributedString(
                string: " County *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        if inputCity.text == ""{
            inputCity.attributedPlaceholder = NSAttributedString(
                string: " City *", attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        
        let formPVC = FormProfile()
        formPVC.formText = finishFormProfile
        var count = 0
        for (index, key) in finishFormProfile.enumerated() {
            if key == "" {
                
            } else {
                count += 1
            }
            
            if count == 7 {
                self.navigationController?.pushViewController(formPVC, animated: true)
            }
        }
            
        
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
