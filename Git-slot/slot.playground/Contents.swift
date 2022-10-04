import UIKit

class Slot{
    var inputedCoin: Int = 10
//    var times: Int = 1//掛け金の倍率
    var symbol: [String] = ["Seven","Bar","Banana","Grape","Bell","WaterMelon","Coin"]
    var display: [Int] = []
    var totalCoin: Int = 0
    var bet: Int = 1
    var count: Int = 0
    var end: Bool = false

    func inputCoin(){//コインを投入（足す）
        totalCoin = inputedCoin
        let coin: Int = 0//入力された値を受け取るようにする
        if coin > 0{
            totalCoin += coin
        }
    }
    
    func play(){
        slot.inputCoin()
        while count < 10 {
            count += 1
            display = []
            print("チャレンジ\(count)回目")
            for i in 1...3{
                let number: Int = Int.random(in: 0...2)//6まで可能
                print("\(symbol[number])")
                display.append(number)
                print("\(display[i-1])")
            }
            slot.judge(display: &display)
            if end == true{
                slot.finish()
                break
            }
        }

    }
    
    func judge(display: inout[Int]){
        print("\(display)")
        if display[0]==display[1], display[0]==display[2]{
            totalCoin += bet*10
            print("あたり 残りコイン\(totalCoin)")
            end = true
        }else{
            totalCoin -= bet
            print("はずれ 残りコイン\(totalCoin)")
            print("____________________________")
        }
    }
    
    func finish(){
        print("終了")
    }
}


var slot = Slot()
slot.play()

