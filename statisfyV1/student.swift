//
//  student.swift
//  statisfyV1
//
//  Created by Stephanie Su on 7/16/20.
//  Copyright © 2020 Stephanie Su. All rights reserved.
//

import UIKit

class student {
    var userSAT = 400
    var satSubmit = false
    var userACT = 1
    var actSubmit = false
    var gpa = 1.0
    var safety : [String] = ["UCR", "UCI", "Purdue"]
    var target : [String] = ["UCB", "USC"]
    var reach : [String] = ["Stanford", "Harvard", "MIT"]
    //Var universityStats = ["schoolName": [GPA, Avg. ACT, Avg. ACT 75%, Avg. ACT 25%, Avg. SAT, Avg. SAT 75%, Avg. SAT 25%]

    var universityStats = ["Princeton" : [3.90, 34, 35, 32, 1510, 1570] ,
    "Yale" : [3.95, 34, 35, 33, 1515, 1600, 1410] ,
    "UC Berkeley" : [3.89, 31, 24, 28, 1415, 1530, 1300] ,
    "CalTech" : [4.0, 36, 36, 35, 1545, 1570, 1530] ,
    "UC San Diego" : [3.82, 30, 33, 26, 1360, 1470, 1250] ,
    "UC Irvine" : [3.92, 29, 33, 25, 1310, 1440, 1180] ,
    "Cal Poly Slo" : [3.99, 29, 32, 26, 1335, 1430, 1240] ,
    "NYU" : [3.69, 32, 34, 30, 1440, 1510, 1370] ,
    "SJSU" : [3.4, 23, 27, 18, 1145, 1260, 1030] ,
    "Chico State" : [3.41, 21, 24, 18, 1100, 1190, 1000] ,
    "UC Riverside" : [3.69, 27, 30, 24, 1225, 1330, 1130],
    "UC Merced" : [3.56, 22, 25, 19, 1080, 1180, 990] ]
    

    
    init(satScore : Int, satSubmission : Bool, actScore : Int, actSubmission : Bool, gpaVal : Double) {
        sat = satScore
        satSubmit = satSubmission
        act = actScore
        actSubmit = actSubmission
        gpa = gpaVal
    }
    
    func getSchools() {
        // void, appends values for safety, target, reach
        if userSAT >= 1500 && userSAT <= 1600 && userGPA >= 3.8 && userGPA <= 4.0 {
          print ("Reach Schools")
        } else if userSAT >= 1400 && userSAT <= 1500 && userGPA >= 3.6 && userGPA <= 3.8 {
          print ("Target Schools")
        } else {
          print ("Safety Schools")
        }


        if userACT >= 30 && userACT <= 33 && userGPA >= 3.6 && userGPA <= 3.8 {
          print("Safety Schools")
        } else {
          print ("Target Schools")
        }
    }
    
    func schoolsToString() -> [String] {
        var lstString : [String] = []
        
        for list in [safety, target, reach] {
            var str = ""
            for school in list {
                str += school + "\n"
            }
            lstString.append(str)
        }
        
        return lstString
            
    }
}
