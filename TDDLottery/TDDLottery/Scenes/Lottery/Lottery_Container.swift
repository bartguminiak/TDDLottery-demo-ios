import UIKit

extension Container {

    func lotteryViewController() -> UIViewController {
        return LotteryViewController(viewModel: lotteryViewModel())
    }

    func lotteryViewModel() -> LotteryViewModelType {
        return LotteryViewModel(numberGenerator: numberGenerator(),
                                dateProvider: formattedDateProvider(),
                                circleViewModelFactory: { CircleViewModel(number: $0) })
    }

    func numberGenerator() -> NumberGeneratorType {
        return NumberGenerator(intGenerator: { Int.random(in: -100...100) })
    }

    func formattedDateProvider() -> FormattedDateProviderType {
        return FormattedDateProvider(dateFormatter: DateFormatter(),
                                     currentDate: { Date() })
    }

}
