import UIKit

extension Container {

    func lotteryViewController() -> UIViewController {
        return LotteryViewController(viewModel: lotteryViewModel())
    }

    func lotteryViewModel() -> LotteryViewModelType {
        return LotteryViewModel(numberGenerator: numberGenerator(),
                                circleViewModelFactory: { CircleViewModel(number: $0) })
    }

    func numberGenerator() -> NumberGeneratorType {
        return NumberGenerator(intGenerator: { Int.random(in: 0...42) })
    }

}
