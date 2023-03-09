//
//  QuestionBrain.swift
//  PersonalColorTest
//
//  Created by 内田麻美 on 2022/12/01.
//

import Foundation


struct QuestionBrain {
    
    let questions = [
        Question(questionText: "手のひらの血色は？", choice1:"青みピンク〜赤紫っぽい血色",destination1: 1, choice2:"黄みピンク〜オレンジっぽい血色", destination2: 2),
        Question(questionText: "目の色は？", choice1:"赤っぽい茶、赤黒っぽい茶、真っ黒", destination1: 3, choice2:"黄みっぽい茶、緑がかった茶、こげ茶", destination2: 4),
        Question(questionText: "唇の色は？", choice1:"サクラやローズなど青みピンク", destination1: 5, choice2:"ピーチやコーラルなど黄みピンク朱赤", destination2: 4),
        Question(questionText: "フェイスラインの印象は？", choice1:"直線、シャープ、骨ばっている", destination1: 7, choice2:"丸みがある、ソフト、なだらか", destination2: 5),
        Question(questionText: "髪質の印象は？", choice1:"細め、柔らかめ、少なめ", destination1: 10, choice2:"太め、硬め、多め", destination2: 6),
        Question(questionText: "目の印象は？", choice1:"キリッと、目ヂカラ強め", destination1: 7,  choice2:"ふんわり、優しい", destination2: 8),
        Question(questionText: "鼻や口の印象は？", choice1:"低め、小さめ、薄め",  destination1: 10, choice2:"高め、大きめ、厚め", destination2: 9)
    ]
    
    
    var questionNumber = 0
    
    
    
    func getQuestionText() -> String {
        return questions[questionNumber].questionText
    }
    
    func getChoice1() -> String {
        return questions[questionNumber].choice1
    }
    
    func getChoice2() -> String {
        return questions[questionNumber].choice2
    }
    
    func getDestination1() -> Int {
        return questions[questionNumber].destination1
    }
    
    func getDestination2() -> Int {
        return questions[questionNumber].destination2
    }
    //reset questionNumber、getTitle、getText
    mutating func reset() {
        _ = 0
        _ = ""
        _ = ""
    }
    
    
    mutating func nextQuestion(userChoice: String) -> () {
        let currentQuestion = questions[questionNumber]
        if userChoice == currentQuestion.choice1 {
            questionNumber = currentQuestion.destination1
        } else if userChoice == currentQuestion.choice2 {
            questionNumber = currentQuestion.destination2
        }
    }
    
    // 条件式を簡略に
    // 意味合い的に完了判定を示しているので、条件判定を逆に
    var isFinished: Bool {
        return questionNumber + 1 >= questions.count
    }

    
    
    var getTitle = ""
    var getText = ""
    
    mutating func getResultTitle() -> String {
        // TODO:修正お願いします。
        //修正後
        if questionNumber == 7 {
            getTitle = "ブルベ冬"
        } else if questionNumber == 8 {
            getTitle = "ブルベ夏"
        } else if questionNumber == 9 {
            getTitle = "イエベ秋"
        } else if questionNumber == 10 {
            getTitle = "イエベ春"
        }
        return getTitle
    }
    
    
    mutating func getResultText() -> String{
        // TODO:修正お願いします。
        //修正後
        if questionNumber == 7 {
            getText = "真っ白や真っ黒、ショッキングピンク、ロイヤルブルーなどはっきりとした色がお似合いになります。メリハリ感やシャープ感、また、コントラスト配色などを意識すると、ウィンターの人らしく個性的なイメージを作ることができます。"
        } else if questionNumber == 8 {
            getText = "紫陽花やラベンダー、朝顔などのソフトで落ち着いた色がお似合いになります。全体に青みが感じられ、グレイッシュな色を意識するとサマーの人らしくエレガントで上品なイメージになります。"
        } else if questionNumber == 9 {
            getText = "秋の紅葉、土や大地など自然を連想させる温かみ深みのある色がお似合いになります。黄みが感じられる落ち着いたベージュやオレンジ、グリーンなどを意識するとオータムの人らしく大人っぽいイメージを作る事ができます"
        } else if questionNumber == 10 {
            getText = "チューリップや菜の花、スミレなど色とりどりの春のお花畑を連想させるような温かみのある明るい色がお似合いになります。明るく華やかなコーディネートを意識するとスプリングの人らしく健康的で活き活きとしたイメージになります。"
        }
        return getText
    }
}



