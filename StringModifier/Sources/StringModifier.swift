import ArgumentParser

@main
struct StringModifier: ParsableCommand {
    @Argument(help: "A multiline string input.")
    var multilineInput: String

    @Option(help: "Option to modify inputed string.")
    var option: Int? = nil

    private static let bigZASCIIVal: UInt32 = 90
    private static let smallZASCIIVal: UInt32 = 122
    private static let bigAASCIIVal: UInt32 = 65
    private static let smallAASCIIVal: UInt32 = 61
    private static let bigA: String = "A"
    private static let smallA: String = "a"

    func run() throws {
        displayOptions()
    }

    func displayOptions() {
        let modifiedString: [String] = multilineInput.components(separatedBy: [","])
        if option == 1 { // Single to multi line
            for str: String in modifiedString {
                print(str.trimmingCharacters(in: [" "]))
            }
        } else if option == 2 { // Single to multi line with double quotation
            for str: String in modifiedString {
                print("\"\(str.trimmingCharacters(in: [" "]))\"")
            }
        } else if option == 3 {  // Single to multi line with single quotation
            for str: String in modifiedString {
                print("'\(str.trimmingCharacters(in: [" "]))'")
            }
        } else if option == 4 { // Single to multi line with number bulletin 
            for (index, str) in modifiedString.enumerated() {
                print("\(index + 1)." + str.trimmingCharacters(in: [" "]))
            }
        } else if option == 5 { // Single to multi line with number bulletin and double quotation
            for (index, str) in modifiedString.enumerated() {
                print("\(index + 1)." + "\"\(str.trimmingCharacters(in: [" "]))\"")
            }
        } else if option == 6 { // Single to multi line with number bulletin and single quotation
            for (index, str) in modifiedString.enumerated() {
                print("\(index + 1)." + "'\(str.trimmingCharacters(in: [" "]))'")
            }
        } else if option == 7 { // Single to multi line with big alphabet bulletin 
            var bulletinAlphabet = UnicodeScalar(Self.bigA)?.value ?? Self.bigAASCIIVal
            for str in modifiedString {
                print("\(UnicodeScalar(bulletinAlphabet) ?? "A")." + str.trimmingCharacters(in: [" "]))
                bulletinAlphabet = bulletinAlphabet == Self.bigZASCIIVal ? UnicodeScalar(Self.bigA)?.value ?? Self.bigAASCIIVal : bulletinAlphabet + 1
            }
        } else if option == 8 { // Single to multi line with big alphabet bulletin and double quotation
            var bulletinAlphabet = UnicodeScalar(Self.bigA)?.value ?? Self.bigAASCIIVal
            for str in modifiedString {
                print("\(UnicodeScalar(bulletinAlphabet) ?? "A")." + "\"\(str.trimmingCharacters(in: [" "]))\"")
                bulletinAlphabet = bulletinAlphabet == Self.bigZASCIIVal ? UnicodeScalar(Self.bigA)?.value ?? Self.bigAASCIIVal : bulletinAlphabet + 1
            }
        } else if option == 9 { // Single to multi line with big alphabet bulletin and single quotation
            var bulletinAlphabet = UnicodeScalar(Self.bigA)?.value ?? Self.bigAASCIIVal
            for str in modifiedString {
                print("\(UnicodeScalar(bulletinAlphabet) ?? "A")." + "'\(str.trimmingCharacters(in: [" "]))'")
                bulletinAlphabet = bulletinAlphabet == Self.bigZASCIIVal ? UnicodeScalar(Self.bigA)?.value ?? Self.bigAASCIIVal : bulletinAlphabet + 1
            }
        }else if option == 10 { // Single to multi line with small alphabet bulletin 
            var bulletinAlphabet = UnicodeScalar(Self.smallA)?.value ?? Self.smallAASCIIVal
            for str in modifiedString {
                print("\(UnicodeScalar(bulletinAlphabet) ?? "a")." + str.trimmingCharacters(in: [" "]))
                bulletinAlphabet = bulletinAlphabet == Self.smallZASCIIVal ? UnicodeScalar(Self.smallA)?.value ?? Self.smallAASCIIVal : bulletinAlphabet + 1
            }
        } else if option == 11 { // Single to multi line with small alphabet bulletin and double quotation
            var bulletinAlphabet = UnicodeScalar(Self.smallA)?.value ?? Self.smallAASCIIVal
            for str in modifiedString {
                print("\(UnicodeScalar(bulletinAlphabet) ?? "a")." + "\"\(str.trimmingCharacters(in: [" "]))\"")
                bulletinAlphabet = bulletinAlphabet == Self.smallZASCIIVal ? UnicodeScalar(Self.smallA)?.value ?? Self.smallAASCIIVal : bulletinAlphabet + 1
            }
        } else if option == 12 { // Single to multi line with small alphabet bulletin and single quotation
            var bulletinAlphabet = UnicodeScalar(Self.smallA)?.value ?? Self.smallAASCIIVal
            for str in modifiedString {
                print("\(UnicodeScalar(bulletinAlphabet) ?? "a")." + "'\(str.trimmingCharacters(in: [" "]))'")
                bulletinAlphabet = bulletinAlphabet == Self.smallZASCIIVal ? UnicodeScalar(Self.smallA)?.value ?? Self.smallAASCIIVal : bulletinAlphabet + 1
            }
        } else if option == 13 {
            for str: String in modifiedString {
                print("\"\(str.trimmingCharacters(in: [" "]))\"", terminator: str == modifiedString.last ? "" : ", ")
            }
        } else if option == 14 {
            for str: String in modifiedString {
                print("'\(str.trimmingCharacters(in: [" "]))'", terminator: str == modifiedString.last ? "" : ", ")
            }
        } else {
            if (option != nil) {
                print("!!!Please enter valid option value!!!.\nRead the 'Format Options' section for details: https://github.com/your-username/string-modifier.git.")
            } else {
                print("!!!Please enter option flag and value to modify your inputed string!!!.\nRead the 'Usage' and 'Format Options' section for details: https://github.com/your-username/string-modifier.git")
            }
        }
    }
}