//
//  MyCalender.swift
//  P2 Date & Time
//
//  Created by Mac on 2017. 3. 16..
//  Copyright © 2017년 Hanna. All rights reserved.
//

import Foundation

class MyCalender {
    private let dateFormatter = DateFormatter()
    
//    • 오늘 날짜의 년, 월, 일, 시, 분, 초를 튜플로 묶어서 리턴하는 함수
    func today() -> (Int, Int, Int, Int, Int, Int) {
        let date = Date()
        let cal = Calendar.current
        
        let today = (year : cal.component(.year, from: date),
                     month : cal.component(.month, from: date),
                     day : cal.component(.day, from: date),
                     hour : cal.component(.hour, from: date),
                     minute : cal.component(.minute, from: date),
                     second : cal.component(.second, from: date))
        return today
    }
    
//    • 년월일 날짜를 문자열로 입력하면 Date 인스턴스를 리턴하는 함수
    func specificDate(year: String, month: String, day: String) -> Date {
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: "\(year)-\(month)-\(day)")!
        
        return date
    }
    
//    • 특정 년도, 월, 일을 Int로 입력하면 Date 인스턴스를 리턴하는 함수
    func specificIntDate(year: Int, month: Int, day: Int) -> Date {
        let cal = Calendar.current
        let com = DateComponents(calendar: cal, year: year, month: month, day: day)
        
        return cal.date(from: com)!
    }
    
//    • 오늘 날짜 Date 인스턴스를 입력하면 한국식 날짜 표기로 문자열을 리턴하는 함수
    func koreanDate(inputDate: Date) -> String {
        dateFormatter.locale = Locale(identifier: "ko_KR")
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .full
        let newDate = dateFormatter.string(from: inputDate)
        
        return newDate
    }
    
//    • 특정 년도와 특정 달을 입력하면 1일의 요일을 찾는 함수
    func findDay(year: Int, month: Int) -> String {
        let cal = Calendar(identifier: Calendar.Identifier.gregorian)
        let com = DateComponents(calendar: cal, year: year, month: month)
        let date : Date = cal.date(from: com)!
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        return dateFormatter.string(from: date)
    }

//    • 특정 년도와 특정 달을 입력하면 일자를 주단위로 배열에 넣고,
//      주단위 배열을 다시 배열에 넣어 2차원 배열로 리턴하는 함수
    func weekArray(year: Int, month: Int) -> [[Int]] {
        var week = [[Int]]()
        let cal = Calendar(identifier: Calendar.Identifier.gregorian)
        dateFormatter.dateFormat = "dd"
        
        // 시작 날짜 찾기
        let firstcom = DateComponents(calendar: cal, year: year, month: month, day: 1)
        let firstDay = cal.date(from: firstcom)!
        let stringFirst = dateFormatter.string(from: firstDay)
        let first = Int(stringFirst)!
        
        // 마지막 날짜
        let targetMonthCom = DateComponents(calendar: cal, year: year, month: month + 1, day: 0)
        let lastDay = cal.date(from: targetMonthCom)!
        let stringLast = dateFormatter.string(from: lastDay)
        let last = Int(stringLast)!
        
        // 요일 찾기
        func findWeekday(day: Int) -> Int {
            let weekday = DateComponents(calendar: cal, year: year, month: month, day: day)
            let date = cal.date(from: weekday)
            let form = DateFormatter()
            form.dateFormat = "ee"
            return Int(form.string(from: date!))!
        }
        
        // 리턴
        var temp = [Int]()
        for day in first...last {
            if findWeekday(day: day) == 07 || day == last {
                temp.append(day)
                week.append(temp)
                temp.removeAll()
            } else {
                temp.append(day)
            }
        }
        return week
    }
   }
