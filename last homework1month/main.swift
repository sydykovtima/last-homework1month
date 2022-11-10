

import Foundation

print("Hello, World!")
let heroe = [ "воин", "маг", "медик", "защитник", "босс"]
var hp = [1000,1000,1000,1500]
var attack = [ 200, 300, 0, 100,200]
var hpBoss = 5000
var round = 0
print("герои атакуют")
for (index,item) in hp.enumerated() {
    
    if index == 0 {
        print("\(heroe[0]) - наносит урон \(attack[0]) - \(hp[0] - attack[4]) хп героя")
    }
    if index == 1 {
        print(" \(heroe[1]) - наносит урон \(attack[1]) - \(hp[1] - attack[4]) хп героя")
    }
    if index == 2 {
        print(" \(heroe[2]) - наносит урон \(attack[2]) - \(hp[2] - attack[4]) хп героя")
    }
    if index == 3 {
        print(" \(heroe[3]) - наносит урон \(attack[3]) - \(hp[3] - attack[4]) хп героя")
        while hpBoss > 0 {
            round += 1
            
            hpBoss -= (attack[0] + attack[1] + attack[2] + attack [3])
            
            if round % 2 == 0{
                hp[0] = hp[0] + 200
                hp[1] = hp[1] + 200
                hp[2] = hp[2] + 200
                hp[3] = hp[3] + 200
            }
            if hpBoss > 0 {
                hp[0] = hp[0] - 200
                hp[1] = hp[1] - 200
                hp[2] = hp[2] - 200
                hp[3] = hp[3] - 200
                
            }
            
            if hpBoss <= 0 && hp.reduce(0,+) > 0 {
                print("Выиграли люди за \(round) раундов \n")
                print("\(heroe[0]) нанес \(round * attack[0]) урона \n")
                print("\(heroe[1]) нанес \(round * attack[1]) урона \n")
                print("\(heroe[2]) нанес \(round * attack[2]) урона \n")
                print("\(heroe[3]) нанес \(round * attack[3]) урона \n")
                print("\(heroe[4]) нанес \(round * attack[4]) урона  каждому но маг вылечил каждого на \(round / 2 * 200)")
            }
            if hpBoss <= 0 && hp.reduce(0,+) <= 0 {
                print("все умерли за \(round) раундов")
            }
            if hpBoss > 0 && hp.reduce(0,+) <= 0 {
                print("выйграл босс за \(round) раундов")
            }
        }
    }
}

