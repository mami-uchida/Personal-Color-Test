//
//  ViewController.swift
//  PersonalColorTest
//
//  Created by 内田麻美 on 2022/12/01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var QuestionText: UILabel!
    @IBOutlet weak var choice1Button: UIButton!{
        didSet {
            choice1Button.layer.cornerRadius = 20
        }
    }
    @IBOutlet weak var choice2Button: UIButton! {
        didSet {
            choice2Button.layer.cornerRadius = 20
        }
    }

    
    var questionBrain = QuestionBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    // メソッドはクラスの直下で定義します
    // prepareメソッドはUIViewControllerで定義されているので、override宣言で上書きします。
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
//            destinationVC.getTitle =  questionBrain.getResultTitle()
//            destinationVC.getText = questionBrain.getResultText()
            // getResultTitleとgetResultTextでエラーになるので仮の値を入れています。
            // getResultTitleとgetResultTextの修正後
            destinationVC.getTitle = questionBrain.getResultTitle()
            destinationVC.getText = questionBrain.getResultText()
        }
    }

    @IBAction func choiceButtonSelected(_ sender: UIButton) {
        questionBrain.nextQuestion(userChoice: sender.currentTitle!)

        // 条件式を簡略に
        if questionBrain.isFinished  {
            performSegue(withIdentifier: "goToResult", sender: self)
        } else {
            updateUI()
        }

        /// メソッド(func)の中でのメソッドの定義は、基本的に行いません
//        func prepare(for segue: UIStoryboardSegue, sender:Any?) {
//            if segue.identifier == "goToResult" {
//                let destinationVC = segue.destination as! ResultViewController
//                destinationVC.getTitle =  questionBrain.getResultTitle()
//                destinationVC.getText = questionBrain.getResultText()
//
//            }
//        }
    }
        

    func updateUI() {
        QuestionText.text = questionBrain.getQuestionText()
        choice1Button.setTitle(questionBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(questionBrain.getChoice2(), for: .normal)
    }
}
