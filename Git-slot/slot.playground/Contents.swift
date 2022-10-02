import UIKit

class Slot{
    var inputedCoin: Int = 10
//    var times: Int = 1//掛け金の倍率
    var symbol: [String] = ["Seven","Bar","Banana","Grape","Bell","WaterMelon","Coin"]
    var display: [Int] = []
    var totalCoin: Int = 0
    var bet: Int = 1

    func inputCoin(){//コインを足す
        totalCoin = inputedCoin
        let coin: Int = 0//入力された値を受け取るようにする
        if coin > 0{
            totalCoin += coin
        }
    }
    
    func play(){
        for i in 1...3{
            let number: Int = Int.random(in: 0...6)
            print("\(symbol[number])")
            display.append(number)
            print("\(display[i-1])")
        }
        slot.judge(display: &display)

    }
    
    func judge(display: inout[Int]){
        slot.inputCoin()
        print("\(display)")
        
        if display[0]==display[1], display[0]==display[2]{
            totalCoin += bet*10
            print("あたり 残りコイン\(totalCoin)")
        }else{
            totalCoin -= bet
            print("はずれ 残りコイン\(totalCoin)")
        }
    }
    
    func finish(){
        print("終了")
    }
}


var slot = Slot()
slot.play()

