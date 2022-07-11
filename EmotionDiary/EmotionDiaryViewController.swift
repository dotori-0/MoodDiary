//
//  EmotionDiaryViewController.swift
//  EmotionDiary
//
//  Created by SC on 2022/07/11.
//

import UIKit

class EmotionDiaryViewController: UIViewController {

    // Buttons
    @IBOutlet weak var slime0Button: UIButton!
    @IBOutlet weak var slime1Button: UIButton!
    @IBOutlet weak var slime2Button: UIButton!
    @IBOutlet weak var slime3Button: UIButton!
    @IBOutlet weak var slime4Button: UIButton!
    @IBOutlet weak var slime5Button: UIButton!
    @IBOutlet weak var slime6Button: UIButton!
    @IBOutlet weak var slime7Button: UIButton!
    @IBOutlet weak var slime8Button: UIButton!


    // Labels
    @IBOutlet weak var emotion0Label: UILabel!
    @IBOutlet weak var emotion1Label: UILabel!
    @IBOutlet weak var emotion2Label: UILabel!
    @IBOutlet weak var emotion3Label: UILabel!
    @IBOutlet weak var emotion4Label: UILabel!
    @IBOutlet weak var emotion5Label: UILabel!
    @IBOutlet weak var emotion6Label: UILabel!
    @IBOutlet weak var emotion7Label: UILabel!
    @IBOutlet weak var emotion8Label: UILabel!

    // Counts
    var emotion0Count = 0
    var emotion1Count = 0
    var emotion2Count = 0
    var emotion3Count = 0
    var emotion4Count = 0
    var emotion5Count = 0
    var emotion6Count = 0
    var emotion7Count = 0
    var emotion8Count = 0

//    var labelDict: [UILabel: String] = [:]
    var labelArray: [UILabel] = []
    var emotionCountArray: [Int] = []
    var emotionDescription = ["행복해", "좋아해", "사랑해", "분노해", "심심해", "답답해", "당황해", "우울해", "한심해"]


    override func viewDidLoad() {
        super.viewDidLoad()

        let buttonArray = [slime0Button, slime1Button, slime2Button, slime3Button, slime4Button,
                           slime5Button, slime6Button, slime7Button, slime8Button]

//        labelDict = [emotion0Label: "행복해",
//                         emotion1Label: "좋아해",
//                         emotion2Label: "사랑해",
//                         emotion3Label: "분노해",
//                         emotion4Label: "심심해",
//                         emotion5Label: "답답해",
//                         emotion6Label: "당황해",
//                         emotion7Label: "우울해",
//                         emotion8Label: "한심해"]

//        let labelDict = [emotion0Label: ["행복해", 0],
//                         emotion1Label: ["좋아해", 0],
//                         emotion2Label: ["사랑해", 0],
//                         emotion3Label: ["분노해", 0],
//                         emotion4Label: ["심심해", 0],
//                         emotion5Label: ["답답해", 0],
//                         emotion6Label: ["당황해", 0],
//                         emotion7Label: ["우울해", 0],
//                         emotion8Label: ["한심해", 0]]

        labelArray = [emotion0Label, emotion1Label, emotion2Label, emotion3Label, emotion4Label,
                      emotion5Label, emotion6Label, emotion7Label, emotion8Label]

        emotionCountArray = [emotion0Count, emotion1Count, emotion2Count, emotion3Count, emotion4Count,
                                 emotion5Count, emotion6Count, emotion7Count, emotion8Count]


        designButtons(buttonArray)
//        designLabels(labelDict: labelDict, emotionCountArray: emotionCountArray)
        designLabels()

    }

    func designButtons(_ buttonArray: [UIButton?]) {
//        slime0Button.imageView?.contentMode = .scaleAspectFit
//        slime0Button.configuration = .default
//        slime8Button.setImage(UIImage(named: "sesac_slime2"), for: .normal)  // 이미지 크기 그대로 대문짝만하게 나옴
//        slime0Button.configuration?.background.image = UIImage(named: "sesac_slime1")  // O
//        slime0Button.setTitle(nil, for: [])  // nil로 설정해도 "Button"
//        slime0Button.setTitle("", for: [])  // O
//        slime0Button.setBackgroundImage(UIImage(named: "sesac_slime1"), for: .normal)  // iOS 15 이전 Button Style: Default의 경우

        for i in 0..<buttonArray.count {
            buttonArray[i]!.setTitle("", for: [])
//            buttonArray[i]!.configuration?.baseForegroundColor = .clear
//            buttonArray[i]!.configuration?.baseBackgroundColor = .clear
//            buttonArray[i]!.configuration?.background.backgroundColor = .clear
            // 위에 3 줄 그럼 왜 있는 건지..?
            buttonArray[i]!.backgroundColor = .clear  // O
            buttonArray[i]!.configuration?.background.image = UIImage(named: "sesac_slime\(i+1)")
        }

    }


    // MARK: - Label이 Dictionary일 때
//    func designLabels(labelDict: [UILabel?: [Any]], emotionCountArray: [Int]) {
//    func designLabels(labelDict: [UILabel?: [Any]]) {
//        for (key, value) in labelDict {
////            labelArray[i][0]?.text = labelArray[i][1] + " " + String(emotionCountArray[i])
//            key.text = value[0] + " " + String(value[1])
//        }
//    }

    // O
//    func designLabels(labelDict: [UILabel?: String], emotionCountArray: [Int]) {
//        var i = 0
//
//        for (key, value) in labelDict {
//            key?.backgroundColor = .clear
//            key?.textAlignment = .center
//            key?.text = value + " " + String(emotionCountArray[i])
//            i += 1
//        }
//    }

    //    func updateCount(selectedLabel: UILabel) {
    //    func updateCount(selected: Int) {
    //        labelDict[emotion\(selected)label]
    //
    //    }

    // MARK: - Label이 Array일 때
    func designLabels() {
        for i in 0..<labelArray.count {
            labelArray[i].backgroundColor = .clear
            labelArray[i].textAlignment = .center
            labelArray[i].text = emotionDescription[i] + " " + String(emotionCountArray[i])
        }
    }



    // MARK: - Actions


}