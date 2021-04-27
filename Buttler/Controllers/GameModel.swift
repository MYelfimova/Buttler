//
//  GameModel.swift
//  Buttler
//
//  Created by Maria Yelfimova on 27/04/2021.
//

import Foundation

class GameModel {
    var tree = Node(["Day1":"PromptDay1"]) {
        Node(["ActionA":"PromptA"]) {
            Node(["ActionAA":"PromptAA"]) {
                Node(["ActionAAA":"PromptAAA"])
                Node(["ActionAAB":"PromptAAB"])
                Node(["ActionAAC":"PromptAAC"]) {
                    Node(["ActionAACA":"PromptAACA"])
                    Node(["ActionAACB":"PromptAACB"])
                    Node(["ActionAACC":"PromptAACC"])
                    Node(["ActionAACD":"PromptAACD"])
                    Node(["ActionAACC":"PromptAACC"])
                    Node(["ActionAACE":"PromptAACE"])
                    Node(["ActionAACF":"PromptAACF"])
                    Node(["ActionAACG":"PromptAACG"])
                    Node(["ActionAACH":"PromptAACH"])
                }
                Node(["ActionAAD":"PromptAAD"])
            }
            Node(["ActionAB":"PromptAB"])
            Node(["ActionAC":"PromptAC"])
        }
        
        Node(["ActionB":"PromptB"]) {
            Node(["ActionBA":"PromptBA"])
            Node(["ActionBB":"PromptBB"])
            Node(["ActionBC":"PromptBC"])
        }
        
        Node(["ActionC":"PromptC"]) {
            Node(["ActionCA":"PromptCA"])
            Node(["ActionCB":"PromptCB"])
            Node(["ActionCC":"PromptCC"])
        }
        
        Node(["ActionD":"PromptD"]) {
            Node(["ActionDA":"PromptDA"])
            Node(["ActionDB":"PromptDB"])
            Node(["ActionDC":"PromptDC"])
        }
    }
}
