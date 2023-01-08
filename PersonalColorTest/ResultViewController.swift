//
//  ResultViewController.swift
//  PersonalColorTest
//
//  Created by 内田麻美 on 2022/12/01.
//

import UIKit

class ResultViewController: UIViewController {
    var questionBrain = QuestionBrain()
    var getTitle: String = ""
    var getText: String = ""
    
  

    @IBOutlet weak var resultTitle: UILabel!
    @IBOutlet weak var resultText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        resultTitle.text = getTitle
        resultText.text = getText
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        questionBrain.reset()
        self.dismiss(animated: true,completion: nil)
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


