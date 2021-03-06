//
//  SideMenuViewController.swift
//  EmotionDiary
//
//  Created by SC on 2022/07/16.
//

import UIKit

class SideMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("π", #function)

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        print("π", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        print("π", #function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        print("π", #function)
        EmotionDiaryViewController().designLabels()
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("π", #function)
    }

    func reset() {
        for key in UserDefaults.standard.dictionaryRepresentation().keys {
            UserDefaults.standard.removeObject(forKey: key)
        }

        EmotionDiaryViewController().printUserDefaults()
    }


    @IBAction func resetButtonClicked(_ sender: UIButton) {
        showAlert()

    }

    func showAlert() {
        let alert = UIAlertController(title: "μ λ§μ?", message: "μ΄κΈ°ν μ λͺ¨λ  λ°μ΄ν°κ° μκ΅¬ μ­μ λ©λλ€.\nμ λ§ μ­μ νμκ² μ΅λκΉ?", preferredStyle: .alert)

//        let ok = UIAlertAction(title: "νμΈ", style: .destructive, handler: reset())
        let ok = UIAlertAction(title: "νμΈ", style: .destructive, handler: { alertAction in
            self.reset()
        })
        let cancel = UIAlertAction(title: "μ·¨μ", style: .cancel)

        alert.addAction(ok)
        alert.addAction(cancel)

        present(alert, animated: true, completion: nil)
    }



}
