import Foundation

protocol LotteryViewModelType: class {
    func viewDidLoad()
    var todayTitle: ((String) -> Void)? { get set }
    var circleViewModels: (([CircleViewModelType]) -> Void)? { get set }
}

class LotteryViewModel: LotteryViewModelType {

    init(numberGenerator: NumberGeneratorType,
         dateProvider: FormattedDateProviderType,
         circleViewModelFactory: @escaping (Int) -> CircleViewModelType) {
        self.numberGenerator = numberGenerator
        self.dateProvider = dateProvider
        self.circleViewModelFactory = circleViewModelFactory
    }

    // MARK: - LotteryViewModelType

    func viewDidLoad() {
        let numbers = numberGenerator.generate()
        let viewModels = numbers.map { circleViewModelFactory($0) }
        todayTitle?("Welcome to the lottery of \(dateProvider.stringDate())")
        circleViewModels?(viewModels)
    }

    var todayTitle: ((String) -> Void)?

    var circleViewModels: (([CircleViewModelType]) -> Void)?

    // MARK: - Privates

    private let numberGenerator: NumberGeneratorType
    private let dateProvider: FormattedDateProviderType
    private let circleViewModelFactory: (Int) -> CircleViewModelType

}
