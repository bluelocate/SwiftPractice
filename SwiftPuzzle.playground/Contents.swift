//: 윤년 계산 - noun: a place where people can play

/*:
 현재 전 세계 대부분의 나라에서 쓰는 그레고리력은 4년에 반드시 하루씩 윤날(2월 29일)을 추가하는 율리우스력을 보완한 것으로, 태양년과의 편차를 줄이기 위해 율리우스력의 400년에서 3일(세 번의 윤년)을 뺐다.
 
 그레고리력의 정확한 윤년 규칙은 다음과 같다.
 
 서력 기원 연수가 4로 나누어떨어지는 해는 윤년으로 한다.(2004년, 2008년, 2012년, 2016년, 2020년, 2024년 …)
 이 중에서 100으로 나누어떨어지는 해는 평년으로 한다.(1900년, 2100년, 2200년, 2300년, 2500년 …)
 그중에 400으로 나누어떨어지는 해는 윤년으로 둔다.(1600년, 2000년, 2400년 …)
 즉, 400년에 97년은 윤년이 되며, 1년은 평균 365.2425일이 된다. 이는 춘분점을 기준으로 한 태양년보다 0.0003일(26초)이 길기 때문에, 약 3,300년마다 1일의 편차가 난다.
*/


import UIKit


struct Year {

    let calendarYear:Int
    
    var isLeapYear:Bool {
        return calendarYear % 4 == 0 && (calendarYear % 100 != 0 || calendarYear % 400 == 0)
    }
}



let anyLeapYear = Year(calendarYear: 1996)
assert(anyLeapYear.isLeapYear)


let anyNormalYear = Year(calendarYear: 1997)
assert(anyNormalYear.isLeapYear == false)

let centuryYear = Year(calendarYear: 1900)
assert(centuryYear.isLeapYear == false)

let exceptionalCenturyYear = Year(calendarYear: 2400)
assert(exceptionalCenturyYear.isLeapYear)
