print("Hello")

class FizzBuzz {
    func isDivisibleBy(number: Int, factor: Int) -> Bool {
        return number % factor == 0
    }
    
    func parse(number: Int) -> String {
        var message = ""
        if isDivisibleBy(number: number, factor: 3) {
            message += "fizz"
        }
        if isDivisibleBy(number: number, factor: 5) {
            message += "buzz"
        }
        if message == "" {return String(number)}
        return message
    }
}
