protocol LotteryViewModelType {
    func viewDidLoad()
    var circleViewModels: (([CircleViewModelType]) -> Void)? { get set }
}

class LotteryViewModel: LotteryViewModelType {

    init(numberGenerator: NumberGeneratorType,
         circleViewModelFactory: @escaping (Int) -> CircleViewModelType) {
        self.numberGenerator = numberGenerator
        self.circleViewModelFactory = circleViewModelFactory
    }

    // MARK: - LotteryViewModelType

    func viewDidLoad() {
        let numbers = numberGenerator.generate()
        let viewModels = numbers.map { circleViewModelFactory($0) }
        circleViewModels?(viewModels)
    }

    var circleViewModels: (([CircleViewModelType]) -> Void)?

    // MARK: - Privates

    private let numberGenerator: NumberGeneratorType
    private let circleViewModelFactory: (Int) -> CircleViewModelType

}
