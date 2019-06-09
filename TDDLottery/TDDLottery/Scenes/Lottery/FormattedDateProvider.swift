import Foundation

protocol FormattedDateProviderType {
    func stringDate() -> String
}

class FormattedDateProvider: FormattedDateProviderType {

    init(dateFormatter: DateFormatter,
        currentDate: @escaping () -> Date) {
        self.dateFormatter = dateFormatter
        self.currentDate = currentDate
        configureDateFormatter()
    }

    // MARK: - FormattedDateProviderType

    func stringDate() -> String {
        return dateFormatter.string(from: currentDate())
    }

    // MARK: - Privates

    private let dateFormatter: DateFormatter
    private let currentDate: () -> Date

    private func configureDateFormatter() {
        dateFormatter.dateFormat = "d/M/YYYY"
    }

}
