#if swift(>=3.0)
    import XCTest
#endif
/*
# 제곱수의 차이 구하기

주어진 N까지 자연수의 '제곱의 합'과 '합의 제곱'간의 차이를 구하라.

10까지 자연수의 '합의 제곱'은,

(1 + 2 + ... + 10)**2 = 55**2 = 3025

10까지 자연수의 '제곱의 합'은,

1**2 + 2**2 + ... + 10**2 = 385

그러므로 10까지 자연수의 '제곱의 합'과 '합의 제곱'간의 차이는 2640이다.

3025 - 385 = 2640
*/
class DifferenceOfSquaresTest: XCTestCase {
    
    func testSquareOfSumsTo5() {
        XCTAssertEqual(225, Squares(5).squareOfSums)
    }
    
    func testSumOfSquaresTo5() {
        XCTAssertEqual(55, Squares(5).sumOfSquares)
    }
    
    func testDifferenceOfSquaresOfSumsTo5() {
        XCTAssertEqual(170, Squares(5).differenceOfSquares)
    }
    
    func testSquareOfSumsTo10() {
        XCTAssertEqual(3025, Squares(10).squareOfSums)
    }
    
    func testSumOfSquaresTo10() {
        XCTAssertEqual(385, Squares(10).sumOfSquares)
    }
    
    func testDifferenceOfSquaresOfSumsTo10() {
        XCTAssertEqual(2640, Squares(10).differenceOfSquares)
    }
    
    func testSquareOfSumsTo100() {
        XCTAssertEqual(25_502_500, Squares(100).squareOfSums)
    }
    
    func testSumOfSquaresTo100() {
        XCTAssertEqual(338_350, Squares(100).sumOfSquares)
    }
    
    func testDifferenceOfSquaresOfSumsTo100() {
        XCTAssertEqual(25_164_150, Squares(100).differenceOfSquares)
    }
    
}
