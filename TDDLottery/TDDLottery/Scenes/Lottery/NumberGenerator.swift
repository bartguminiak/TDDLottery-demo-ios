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
        return []
    }

    // MARK: - Privates

    private let intGenerator: () -> Int

}
