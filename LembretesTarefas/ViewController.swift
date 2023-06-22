import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tarefas: [Tarefa] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configurar delegate e dataSource da tableView
        tableView.dataSource = self
        
        // Exemplo: adicionar algumas tarefas
        tarefas.append(Tarefa(titulo: "Comprar leite", data: Date(), concluida: false))
        tarefas.append(Tarefa(titulo: "Enviar e-mail", data: Date(), concluida: false))
        
        // Recarregar a tableView
        tableView.reloadData()
    }
    
    // Implementar métodos necessários do UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TarefaCell", for: indexPath) as! TarefaTableViewCell
        
        let tarefa = tarefas[indexPath.row]
        cell.tituloLabel.text = tarefa.titulo
        cell.dataLabel.text = formatarData(tarefa.data)
        cell.concluidaSwitch.isOn = tarefa.concluida
        
        return cell
    }
    
    // Método auxiliar para formatar a data
    func formatarData(_ data: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: data)
    }
}
