@testable import TDDLottery

class FormattedDateProviderStub: FormattedDateProviderType {

    // MARK: - FormattedDateProviderType

    func stringDate() -> String {
        return stringDateStub
    }

    // MARK: - Stub

    var stringDateStub: String!

}
