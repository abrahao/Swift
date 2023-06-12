// Desafio Módulo 1 - Camille Monteiro

let name = "Steve"
var lastName: String? = "Jobs"

print("O \(name) \(lastName ?? "Wozniak") é o cara!")

if let lastName {
    print("Aqui o \(name) \(lastName) está desembrulhado")
}
