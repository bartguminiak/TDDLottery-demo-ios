import Foundation

protocol NumberGeneratorType {
    func generate() -> [Int]
}

class NumberGenerator: NumberGeneratorType {

    init(intGenerator: @escaping () -> Int) {
        self.intGenerator = intGenerator
    }

    // MARK: - NumberGeneratorType

    func generate() -> [Int] {
        return generateNumbers(currentNumbers: [])
    }

    // MARK: - Privates

    private let intGenerator: () -> Int

    private func generateNumbers(currentNumbers: [Int]) -> [Int] {
        guard currentNumbers.count < 5 else { return currentNumbers }
        var newCurrentNumbers = currentNumbers
        let newNumber = intGenerator()
        if !newCurrentNumbers.contains(newNumber) {
            newCurrentNumbers.append(newNumber)
        }
        return generateNumbers(currentNumbers: newCurrentNumbers)
    }

}
