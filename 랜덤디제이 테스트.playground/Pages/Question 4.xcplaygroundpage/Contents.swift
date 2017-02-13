//: [3번 문제](@previous)

/*:
 # 4번 문제
 ## 구조체와 클래스
 #### 20점
 
 아래 정답 확인 영역에서 에러가 없도록 하라
 */


import Foundation

struct Engine {
    let fuel:String
    var valve:Int
}
class Vehicle {
    let engine:Engine
    var capacity = 0
    init(engine:Engine){
    self.engine = engine
        
        
    }
}

let v8 = Engine(fuel:"Gasoline", valve:8)
var v4 = Engine(fuel:"gas", valve: 4)


let sportsCar = Vehicle(engine:v8)

sportsCar.capacity = 2

let suv = Vehicle(engine: v4)
suv.capacity = 5

//: ### 정답 확인 영역
assert(suv.capacity == 5)
assert(sportsCar.capacity == 2)

assert(sportsCar.engine.valve == 8)
assert(suv.engine.valve == 4)

//: [5번 문제](@next)
