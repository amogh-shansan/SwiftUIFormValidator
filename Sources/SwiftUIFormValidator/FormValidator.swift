import Foundation

/// A protocol for validating any input value.
public protocol ValidationRule {
    associatedtype Input
    func validate(_ input: Input) -> String?
}

/// A reusable wrapper to erase the type of any validation rule.
public struct AnyValidationRule<Input>: ValidationRule {
    private let _validate: (Input) -> String?

    public init<R: ValidationRule>(_ rule: R) where R.Input == Input {
        self._validate = rule.validate
    }

    public func validate(_ input: Input) -> String? {
        _validate(input)
    }
}

/// A central class for managing SwiftUI form values and errors.
public final class FormValidator: ObservableObject {
    public init() {}
}
