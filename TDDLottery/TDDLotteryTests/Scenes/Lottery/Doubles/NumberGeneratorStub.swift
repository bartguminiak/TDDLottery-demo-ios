@testable import TDDLottery

class NumberGeneratorStub: NumberGeneratorType {

    // MARK: - NumberGeneratorType

    func generate() -> [Int] {
        return generatedNumbersStub
    }

    // MARK: - Stubs

    var generatedNumbersStub: [Int]!

}
