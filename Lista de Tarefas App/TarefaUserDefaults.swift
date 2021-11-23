//
//  TarefaUserDefaults.swift
//  Lista de Tarefas App
//
//  Created by Helio Marcus Nery Fidalgo on 18/11/21.
//

import UIKit


class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    //cria o array de tarefas
    var tarefas :[String] = []
    
    func remover(indice: Int)  {
       
        //lista os itens
        tarefas = listar()
        //remove os itens baseado no indice
        tarefas.remove(at: indice)
        // salva a nova lista com o item removido	
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func salvar(tarefa: String){
        
        // antes de salvar a tarefa ele da retrorno da lista com ou sem tarefas ja listadas anteriomente
        tarefas = listar()
        // adiciona no array tarefa
        tarefas.append(tarefa)
        //salva tarefas
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    // recupera as tarefas listadas
    func listar () -> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil {
            return dados as! Array<String>
        }else {
            return []
        }
        
    }
    
}
