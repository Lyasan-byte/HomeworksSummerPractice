import Foundation

class CarRace {
    var cars: [Car]
    
    init(cars: [Car]) {
        self.cars = cars
    }
    
    func start() {
        let carsPairs = createRandomPairs()
        var allWinners: [[String]] = []
        
        for pair in carsPairs {
            let winnerInfo = comparePairResult(pair: pair)
            allWinners.append(winnerInfo)
        }
        
        let result = findWinner(arr: allWinners)
        print(result)
    }
    
    func createRandomPairs() -> [[Car]] {
        var carsPairs: [[Car]] = []
        let shuffledCars = cars.shuffled()
        
        for i in stride(from: 0, to: shuffledCars.count - 1, by: 2) {
            let pair = [shuffledCars[i], shuffledCars[i+1]]
            carsPairs.append(pair)
        }
        
        // Если нечетное количество машин, последняя участвует без пары
        if shuffledCars.count % 2 != 0 {
            let singleCar = [shuffledCars.last!]
            carsPairs.append(singleCar)
        }
        
        return carsPairs
    }
    
    func comparePairResult(pair: [Car]) -> [String] {
        // Если в паре только одна машина (нечетное количество)
        if pair.count == 1 {
            let info = "\(pair[0].name) участвует без соперника"
            print(info)
            return [pair[0].name, String(pair[0].engineCapacity)]
        }
        
        let difference = pair[0].compareTo(otherCar: pair[1])
        var info: String
        var maxEngineCapacity: Int
        var winnerInfo: [String]
        
        if difference > 0 {
            info = "\(pair[0].name) победил \(pair[1].name) с преимуществом в объеме двигателя равном \(difference) л"
            maxEngineCapacity = pair[0].engineCapacity
            winnerInfo = [pair[0].name, String(maxEngineCapacity)]
        } else if difference == 0 {
            info = "\(pair[0].name) и \(pair[1].name) показали одинаковый результат: \(pair[0].engineCapacity) л"
            maxEngineCapacity = pair[0].engineCapacity
            winnerInfo = [pair[0].name, String(maxEngineCapacity)]
        } else {
            info = "\(pair[1].name) победил \(pair[0].name) с преимуществом в объеме двигателя равном \(-difference) л"
            maxEngineCapacity = pair[1].engineCapacity
            winnerInfo = [pair[1].name, String(maxEngineCapacity)]
        }
        
        print(info)
        return winnerInfo
    }
    
    func findWinner(arr: [[String]]) -> String {
        var maxEngine = 0
        var winner: String = ""
        
        for w in arr {
            if Int(w[1])! > maxEngine {
                maxEngine = Int(w[1])!
                winner = w[0]
            }
        }
        
        return "\(winner) выиграл гонку с результатом \(maxEngine) л"
    }
}
