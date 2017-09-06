//
//  DataInterfaceInterfaceController.swift
//  WatchKitApp
//
//  Created by Victor Oliveira Kreniski on 05/09/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import WatchKit
import Foundation


class DataInterfaceInterfaceController: WKInterfaceController {
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
        if segueIdentifier == "segueMoreInfo" {
            return " O Apple Developer Academy é um lugar que você pode dar vida para suas ideias e aprender na prática a como estar preparado para o mercado de trabalho. Um projeto composto por estudantes e professores que visa o aprendizado técnico, mas principalmente trazer experiência para o desenvolvedor e designer como profissionais. Um lugar onde todos compartilham o que mais gostam de fazer e assim, crescem juntos a cada dia. O espaço que você pode sair da sua zona de conforto e se preparar ainda mais para o futuro. "
        }else{
            return nil
        }
    }
}
