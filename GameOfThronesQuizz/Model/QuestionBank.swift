//
//  QuestionBank.swift
//  GameOfThronesQuizz
//
//  Created by Louis Nicolas Leuillet on 07/02/2018.
//  Copyright © 2018 Louis Nicolas Leuillet. All rights reserved.
//

import Foundation

// THIS IS OUR QUESTION BANK

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        let question = Question(text: "Comment s'appellent les dragons de Daenerys Targarien ?", image: "q-dragons", answer: "Viserion, Draegal et Drogon", falseA: "Viperion, Alcor et Dhrago", falseB: "Riri, Fifi et Loulou")
        list.append(question)
        
        list.append(Question(text: "Comment s'appelle l'épée d'Arya Stark ?", answer: "Aiguille", falseA: "Dard", falseB: "Piqûre"))
        
        list.append(Question(text: "Qui a écrit la saga Le Trône de fer, dont la série est adaptée ?", answer: "G.R.R. Martin", falseA: "J.R.R. Tolkien", falseB: "P.L.R. Sulitzer"))
        
        list.append(Question(text: "Quel roman français a inspiré l'auteur du Trône de Fer ?", image: "q-martin", answer: "Les Rois maudits", falseA: "Le roman des rois", falseB: "Les Trois mousquetaires"))
        
        list.append(Question(text: "Que signifie l'expression \"Valar Morghulis\" ?", answer: "Tout homme doit mourir", falseA: "Tout homme doit se nourrir", falseB: "Tout homme doit pourrir"))
        
        list.append(Question(text: "Qui est le vrai père de Joffrey Baratheon ?", image: "q-joffrey", answer: "Son oncle Jamie", falseA: "Son grand-père Tywin", falseB: "Son cousin Lancel"))
        
        list.append(Question(text: "Quel membre du casting a débuté sa carrière dans le cinéma X ?", answer: "Sibel Kekilli (Shae)", falseA: "Lena Headey (Cercei Lannister)", falseB: "Peter Dinklage (Tyrion Lannister)"))
        
        list.append(Question(text: "Quel est le surnom peu flatteur de Davos Mervault ?", image: "q-davos", answer: "Le chevalier Oignon", falseA: "Le chevalier Persil", falseB: "Le chevalier Carotte"))
        
        list.append(Question(text: "Comment peut-on tuer un marcheur blanc ?", image: "q-whitewalkers", answer: "Avec une arme en obsidienne", falseA: "Avec une dague en argent dans le coeur", falseB: "En le décapitant"))
        
        list.append(Question(text: "Quel loup est associé à Jon Snow ?", image: "q-loup", answer: "Ghost", falseA: "Grey Wind", falseB: "Nymeria"))
        
        list.append(Question(text: "Comment meurt Viserys Targaryen, le frère de Daenerys ?", image: "q-viserys", answer: "Khal Drogo lui coule une couronne d’or", falseA: " Jorah le transperce d’une flèche", falseB: "Daenerys le poignarde"))
    }
    
}
