import Foundation

protocol FormattedDateProviderType {
    func stringDate() -> String
}

class FormattedDateProvider: FormattedDateProviderType {

    init(dateFormatter: DateFormatter,
        currentDate: @escaping () -> Date) {
        self.dateFormatter = dateFormatter
        self.currentDate = currentDate
    }

    // MARK: - FormattedDateProviderType

    func stringDate() -> String {
        fatalError()
    }

    // MARK: - Privates

    private let dateFormatter: DateFormatter
    private let currentDate: () -> Date

}
