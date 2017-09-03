//
//  WallLocations.swift
//  Maze
//
//  Created by Gabrielle Miller-Messner on 12/1/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import Foundation

extension ControlCenter {
    
    func isFacingWall(_ robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        print("cell above robot?: \(cell.top)")
        print("cell below robot?: \(cell.bottom)")
        print("cell to left of robot?: \(cell.left)")
        print("cell to right of robot?: \(cell.right)")
        
        switch(direction) {
        case .up:
            if cell.top {
                isWall = true
            }
        case .right:
            if cell.right {
                isWall = true
            }
        case .down:
            if cell.bottom {
                isWall = true
            }
        case .left:
            if cell.left {
                isWall = true
            }
        }
        
        return isWall
    }
    
    func checkWalls(_ robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        // Check if there is a wall at the top of the current cell
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls += 1
        }
        
        // Check if there is a wall to the right of the current cell
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls += 1
        }
        
        // Step 2.1a
        // TODO: Check if there is a wall at the bottom of the current cell
        let isWallDown = cell.bottom
        if isWallDown {
            numberOfWalls += 1
        }
        
        // TODO: Check if there is a wall to the left of the current cell
        let isWallLeft = cell.left
        if isWallLeft {
            numberOfWalls += 1
        }
        
        // Step 2.1b
        // TODO: Test the checkWalls function.
        
        
        // print("wall up: ", isWallUp, "wall right: ", isWallRight, "wall down: ", isWallDown, "wall left: ", isWallLeft, numberOfWalls)
        return (isWallUp, isWallRight, isWallDown, isWallLeft, numberOfWalls)
    }
}
