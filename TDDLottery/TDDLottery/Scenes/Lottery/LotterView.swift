import UIKit

class LotteryView: UIView {

    init() {
        super.init(frame: .zero)
        addSubviews()
        setupSubviews()
    }

    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }

    let titleLabel = UILabel()
    let stackView = UIStackView(frame: .zero)

    // MARK: - Privates

    private func addSubviews() {
        addSubview(titleLabel)
        addSubview(stackView)
    }

    private func setupSubviews() {
        backgroundColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        titleLabel.textAlignment = .center
        stackView.alignment = .center
        stackView.distribution = .equalCentering

        let contstraints = [
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ]
        NSLayoutConstraint.activate(contstraints)
    }

}
