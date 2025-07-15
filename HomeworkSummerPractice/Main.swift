import Foundation

@main
struct Main {
    static func main() {
        let car1 = BMW(name: "BMW 320i", model: "320i", yearOfProduction: "2020", color: "White", engineCapacity: 200000)
        let car2 = Porsche(name: "Porsche 911", model: "911", yearOfProduction: "2024", color: "Red", engineCapacity: 250000)
        let car3 = Mercedes(name: "Mercedes G-Class", model: "G-Class", yearOfProduction: "2025", color: "Black", engineCapacity: 300000)
        let car4 = Lixiang(name: "Lixiang L9", model: "L9", yearOfProduction: "2023", color: "Silver", engineCapacity: 350000)

        let cars: [Car] = [car1, car2, car3, car4]
        let race = CarRace(cars: cars)
        race.start()
    }
}
