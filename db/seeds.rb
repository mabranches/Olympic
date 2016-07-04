Competition.create!([
  {id: 1, name: "name0", type: "JavelinThrow", lock_version: 0, status: 0},
  {id: 2, name: "name1", type: "JavelinThrow", lock_version: 0, status: 0},
  {id: 3, name: "name2", type: "Run100m", lock_version: 0, status: 0},
  {id: 4, name: "name3", type: "JavelinThrow", lock_version: 0, status: 0},
  {id: 5, name: "name4", type: "JavelinThrow", lock_version: 0, status: 0},
  {id: 6, name: "name5", type: "Run100m", lock_version: 0, status: 0}
])
Athlete.create!([
  {id: 1, name: "atl0", sex: 0, age: 41, lock_version: 0},
  {id: 2, name: "atl1", sex: 0, age: 15, lock_version: 0},
  {id: 3, name: "atl2", sex: 1, age: 50, lock_version: 0},
  {id: 4, name: "atl3", sex: 0, age: 22, lock_version: 0},
  {id: 5, name: "atl4", sex: 1, age: 26, lock_version: 0},
  {id: 6, name: "atl5", sex: 1, age: 17, lock_version: 0},
  {id: 7, name: "atl6", sex: 1, age: 45, lock_version: 0},
  {id: 8, name: "atl7", sex: 1, age: 48, lock_version: 0},
  {id: 9, name: "atl8", sex: 1, age: 45, lock_version: 0},
  {id: 10, name: "atl9", sex: 0, age: 40, lock_version: 0},
  {id: 11, name: "atl10", sex: 0, age: 42, lock_version: 0},
  {id: 12, name: "atl11", sex: 1, age: 28, lock_version: 0},
  {id: 13, name: "atl12", sex: 0, age: 17, lock_version: 0},
  {id: 14, name: "atl13", sex: 1, age: 36, lock_version: 0},
  {id: 15, name: "atl14", sex: 0, age: 40, lock_version: 0},
  {id: 16, name: "atl15", sex: 0, age: 32, lock_version: 0},
  {id: 17, name: "atl16", sex: 0, age: 45, lock_version: 0},
  {id: 18, name: "atl17", sex: 0, age: 19, lock_version: 0},
  {id: 19, name: "atl18", sex: 0, age: 22, lock_version: 0},
  {id: 20, name: "atl19", sex: 0, age: 42, lock_version: 0},
  {id: 21, name: "atl20", sex: 0, age: 35, lock_version: 0},
  {id: 22, name: "atl21", sex: 0, age: 27, lock_version: 0},
  {id: 23, name: "atl22", sex: 1, age: 38, lock_version: 0},
  {id: 24, name: "atl23", sex: 0, age: 37, lock_version: 0},
  {id: 25, name: "atl24", sex: 0, age: 22, lock_version: 0},
  {id: 26, name: "atl25", sex: 0, age: 48, lock_version: 0},
  {id: 27, name: "atl26", sex: 1, age: 27, lock_version: 0},
  {id: 28, name: "atl27", sex: 0, age: 44, lock_version: 0},
  {id: 29, name: "atl28", sex: 0, age: 31, lock_version: 0},
  {id: 30, name: "atl29", sex: 0, age: 45, lock_version: 0},
  {id: 31, name: "atl30", sex: 1, age: 33, lock_version: 0},
  {id: 32, name: "atl31", sex: 1, age: 36, lock_version: 0},
  {id: 33, name: "atl32", sex: 0, age: 49, lock_version: 0},
  {id: 34, name: "atl33", sex: 0, age: 38, lock_version: 0},
  {id: 35, name: "atl34", sex: 1, age: 19, lock_version: 0},
  {id: 36, name: "atl35", sex: 1, age: 16, lock_version: 0},
  {id: 37, name: "atl36", sex: 0, age: 45, lock_version: 0},
  {id: 38, name: "atl37", sex: 0, age: 47, lock_version: 0},
  {id: 39, name: "atl38", sex: 0, age: 44, lock_version: 0},
  {id: 40, name: "atl39", sex: 0, age: 41, lock_version: 0},
  {id: 41, name: "atl40", sex: 0, age: 24, lock_version: 0},
  {id: 42, name: "atl41", sex: 0, age: 49, lock_version: 0},
  {id: 43, name: "atl42", sex: 1, age: 50, lock_version: 0},
  {id: 44, name: "atl43", sex: 0, age: 30, lock_version: 0},
  {id: 45, name: "atl44", sex: 1, age: 47, lock_version: 0},
  {id: 46, name: "atl45", sex: 0, age: 32, lock_version: 0},
  {id: 47, name: "atl46", sex: 1, age: 48, lock_version: 0},
  {id: 48, name: "atl47", sex: 0, age: 22, lock_version: 0},
  {id: 49, name: "atl48", sex: 1, age: 32, lock_version: 0},
  {id: 50, name: "atl49", sex: 1, age: 25, lock_version: 0}
])
Score.create!([
  {id: 1, value: 54.0, lock_version: 0, athlete_id: 8, competition_id: 4},
  {id: 2, value: 65.0, lock_version: 0, athlete_id: 41, competition_id: 6},
  {id: 3, value: 94.0, lock_version: 0, athlete_id: 29, competition_id: 4},
  {id: 4, value: 97.0, lock_version: 0, athlete_id: 43, competition_id: 2},
  {id: 5, value: 62.0, lock_version: 0, athlete_id: 3, competition_id: 2},
  {id: 6, value: 89.0, lock_version: 0, athlete_id: 28, competition_id: 3},
  {id: 7, value: 47.0, lock_version: 0, athlete_id: 34, competition_id: 5},
  {id: 8, value: 65.0, lock_version: 0, athlete_id: 13, competition_id: 3},
  {id: 9, value: 6.0, lock_version: 0, athlete_id: 50, competition_id: 5},
  {id: 10, value: 21.0, lock_version: 0, athlete_id: 34, competition_id: 2},
  {id: 11, value: 52.0, lock_version: 0, athlete_id: 21, competition_id: 2},
  {id: 12, value: 19.0, lock_version: 0, athlete_id: 49, competition_id: 5},
  {id: 13, value: 49.0, lock_version: 0, athlete_id: 49, competition_id: 4},
  {id: 14, value: 49.0, lock_version: 0, athlete_id: 8, competition_id: 5},
  {id: 15, value: 45.0, lock_version: 0, athlete_id: 4, competition_id: 5},
  {id: 16, value: 25.0, lock_version: 0, athlete_id: 49, competition_id: 2},
  {id: 17, value: 52.0, lock_version: 0, athlete_id: 22, competition_id: 3},
  {id: 18, value: 67.0, lock_version: 0, athlete_id: 7, competition_id: 3},
  {id: 19, value: 37.0, lock_version: 0, athlete_id: 31, competition_id: 4},
  {id: 20, value: 95.0, lock_version: 0, athlete_id: 16, competition_id: 1},
  {id: 21, value: 3.0, lock_version: 0, athlete_id: 37, competition_id: 6},
  {id: 22, value: 97.0, lock_version: 0, athlete_id: 3, competition_id: 6},
  {id: 23, value: 35.0, lock_version: 0, athlete_id: 20, competition_id: 1},
  {id: 24, value: 1.0, lock_version: 0, athlete_id: 16, competition_id: 2},
  {id: 25, value: 8.0, lock_version: 0, athlete_id: 12, competition_id: 4},
  {id: 26, value: 41.0, lock_version: 0, athlete_id: 37, competition_id: 2},
  {id: 27, value: 67.0, lock_version: 0, athlete_id: 36, competition_id: 4},
  {id: 28, value: 8.0, lock_version: 0, athlete_id: 16, competition_id: 5},
  {id: 29, value: 65.0, lock_version: 0, athlete_id: 14, competition_id: 5},
  {id: 30, value: 39.0, lock_version: 0, athlete_id: 21, competition_id: 1},
  {id: 31, value: 28.0, lock_version: 0, athlete_id: 28, competition_id: 2},
  {id: 32, value: 48.0, lock_version: 0, athlete_id: 17, competition_id: 4},
  {id: 33, value: 96.0, lock_version: 0, athlete_id: 18, competition_id: 5},
  {id: 34, value: 14.0, lock_version: 0, athlete_id: 47, competition_id: 6},
  {id: 35, value: 44.0, lock_version: 0, athlete_id: 42, competition_id: 4},
  {id: 36, value: 6.0, lock_version: 0, athlete_id: 19, competition_id: 4},
  {id: 37, value: 37.0, lock_version: 0, athlete_id: 15, competition_id: 1},
  {id: 38, value: 79.0, lock_version: 0, athlete_id: 16, competition_id: 3},
  {id: 39, value: 42.0, lock_version: 0, athlete_id: 46, competition_id: 6},
  {id: 40, value: 40.0, lock_version: 0, athlete_id: 17, competition_id: 6},
  {id: 41, value: 76.0, lock_version: 0, athlete_id: 44, competition_id: 2},
  {id: 42, value: 41.0, lock_version: 0, athlete_id: 34, competition_id: 3},
  {id: 43, value: 29.0, lock_version: 0, athlete_id: 12, competition_id: 2},
  {id: 44, value: 12.0, lock_version: 0, athlete_id: 11, competition_id: 6},
  {id: 45, value: 70.0, lock_version: 0, athlete_id: 41, competition_id: 1},
  {id: 46, value: 30.0, lock_version: 0, athlete_id: 42, competition_id: 5},
  {id: 47, value: 28.0, lock_version: 0, athlete_id: 16, competition_id: 4},
  {id: 48, value: 38.0, lock_version: 0, athlete_id: 47, competition_id: 1},
  {id: 49, value: 65.0, lock_version: 0, athlete_id: 23, competition_id: 6},
  {id: 50, value: 12.0, lock_version: 0, athlete_id: 48, competition_id: 6},
  {id: 51, value: 93.0, lock_version: 0, athlete_id: 47, competition_id: 3},
  {id: 52, value: 83.0, lock_version: 0, athlete_id: 9, competition_id: 6},
  {id: 53, value: 15.0, lock_version: 0, athlete_id: 10, competition_id: 5},
  {id: 54, value: 71.0, lock_version: 0, athlete_id: 43, competition_id: 3},
  {id: 55, value: 47.0, lock_version: 0, athlete_id: 35, competition_id: 4},
  {id: 56, value: 68.0, lock_version: 0, athlete_id: 43, competition_id: 6},
  {id: 57, value: 88.0, lock_version: 0, athlete_id: 4, competition_id: 1},
  {id: 58, value: 27.0, lock_version: 0, athlete_id: 32, competition_id: 6},
  {id: 59, value: 85.0, lock_version: 0, athlete_id: 40, competition_id: 2},
  {id: 60, value: 84.0, lock_version: 0, athlete_id: 4, competition_id: 6},
  {id: 61, value: 71.0, lock_version: 0, athlete_id: 32, competition_id: 1},
  {id: 62, value: 50.0, lock_version: 0, athlete_id: 20, competition_id: 4},
  {id: 63, value: 34.0, lock_version: 0, athlete_id: 36, competition_id: 4},
  {id: 64, value: 25.0, lock_version: 0, athlete_id: 7, competition_id: 1},
  {id: 65, value: 9.0, lock_version: 0, athlete_id: 24, competition_id: 2},
  {id: 66, value: 79.0, lock_version: 0, athlete_id: 26, competition_id: 3},
  {id: 67, value: 61.0, lock_version: 0, athlete_id: 39, competition_id: 4},
  {id: 68, value: 35.0, lock_version: 0, athlete_id: 29, competition_id: 3},
  {id: 69, value: 67.0, lock_version: 0, athlete_id: 45, competition_id: 3},
  {id: 70, value: 59.0, lock_version: 0, athlete_id: 46, competition_id: 1},
  {id: 71, value: 65.0, lock_version: 0, athlete_id: 9, competition_id: 4},
  {id: 72, value: 75.0, lock_version: 0, athlete_id: 47, competition_id: 4},
  {id: 73, value: 57.0, lock_version: 0, athlete_id: 23, competition_id: 2},
  {id: 74, value: 60.0, lock_version: 0, athlete_id: 46, competition_id: 4},
  {id: 75, value: 96.0, lock_version: 0, athlete_id: 6, competition_id: 4},
  {id: 76, value: 63.0, lock_version: 0, athlete_id: 39, competition_id: 3},
  {id: 77, value: 75.0, lock_version: 0, athlete_id: 39, competition_id: 5},
  {id: 78, value: 39.0, lock_version: 0, athlete_id: 24, competition_id: 3},
  {id: 79, value: 62.0, lock_version: 0, athlete_id: 9, competition_id: 4},
  {id: 80, value: 5.0, lock_version: 0, athlete_id: 42, competition_id: 2},
  {id: 81, value: 23.0, lock_version: 0, athlete_id: 29, competition_id: 4},
  {id: 82, value: 17.0, lock_version: 0, athlete_id: 14, competition_id: 5},
  {id: 83, value: 74.0, lock_version: 0, athlete_id: 19, competition_id: 5},
  {id: 84, value: 71.0, lock_version: 0, athlete_id: 1, competition_id: 3},
  {id: 85, value: 97.0, lock_version: 0, athlete_id: 26, competition_id: 5},
  {id: 86, value: 55.0, lock_version: 0, athlete_id: 30, competition_id: 3},
  {id: 87, value: 78.0, lock_version: 0, athlete_id: 23, competition_id: 3},
  {id: 88, value: 42.0, lock_version: 0, athlete_id: 37, competition_id: 2},
  {id: 89, value: 40.0, lock_version: 0, athlete_id: 21, competition_id: 5},
  {id: 90, value: 30.0, lock_version: 0, athlete_id: 16, competition_id: 6},
  {id: 91, value: 23.0, lock_version: 0, athlete_id: 43, competition_id: 5},
  {id: 92, value: 45.0, lock_version: 0, athlete_id: 21, competition_id: 3},
  {id: 93, value: 57.0, lock_version: 0, athlete_id: 33, competition_id: 1},
  {id: 94, value: 62.0, lock_version: 0, athlete_id: 29, competition_id: 5},
  {id: 95, value: 10.0, lock_version: 0, athlete_id: 4, competition_id: 3},
  {id: 96, value: 47.0, lock_version: 0, athlete_id: 24, competition_id: 4},
  {id: 97, value: 63.0, lock_version: 0, athlete_id: 40, competition_id: 6},
  {id: 98, value: 20.0, lock_version: 0, athlete_id: 32, competition_id: 5},
  {id: 99, value: 13.0, lock_version: 0, athlete_id: 44, competition_id: 3},
  {id: 100, value: 99.0, lock_version: 0, athlete_id: 11, competition_id: 1},
  {id: 101, value: 2.0, lock_version: 0, athlete_id: 1, competition_id: 2},
  {id: 102, value: 99.0, lock_version: 0, athlete_id: 47, competition_id: 2},
  {id: 103, value: 47.0, lock_version: 0, athlete_id: 39, competition_id: 5},
  {id: 104, value: 96.0, lock_version: 0, athlete_id: 31, competition_id: 1},
  {id: 105, value: 49.0, lock_version: 0, athlete_id: 46, competition_id: 4},
  {id: 106, value: 54.0, lock_version: 0, athlete_id: 49, competition_id: 3},
  {id: 107, value: 44.0, lock_version: 0, athlete_id: 36, competition_id: 5},
  {id: 108, value: 15.0, lock_version: 0, athlete_id: 37, competition_id: 5},
  {id: 109, value: 75.0, lock_version: 0, athlete_id: 23, competition_id: 5},
  {id: 110, value: 90.0, lock_version: 0, athlete_id: 22, competition_id: 6},
  {id: 111, value: 20.0, lock_version: 0, athlete_id: 38, competition_id: 5},
  {id: 112, value: 10.0, lock_version: 0, athlete_id: 44, competition_id: 4},
  {id: 113, value: 77.0, lock_version: 0, athlete_id: 36, competition_id: 6},
  {id: 114, value: 59.0, lock_version: 0, athlete_id: 28, competition_id: 2},
  {id: 115, value: 94.0, lock_version: 0, athlete_id: 9, competition_id: 2},
  {id: 116, value: 50.0, lock_version: 0, athlete_id: 30, competition_id: 6},
  {id: 117, value: 78.0, lock_version: 0, athlete_id: 49, competition_id: 2},
  {id: 118, value: 9.0, lock_version: 0, athlete_id: 47, competition_id: 1},
  {id: 119, value: 68.0, lock_version: 0, athlete_id: 21, competition_id: 6},
  {id: 120, value: 25.0, lock_version: 0, athlete_id: 30, competition_id: 5},
  {id: 121, value: 88.0, lock_version: 0, athlete_id: 9, competition_id: 4},
  {id: 122, value: 4.0, lock_version: 0, athlete_id: 20, competition_id: 4},
  {id: 123, value: 3.0, lock_version: 0, athlete_id: 15, competition_id: 6},
  {id: 124, value: 6.0, lock_version: 0, athlete_id: 16, competition_id: 5},
  {id: 125, value: 88.0, lock_version: 0, athlete_id: 13, competition_id: 6},
  {id: 126, value: 21.0, lock_version: 0, athlete_id: 47, competition_id: 4},
  {id: 127, value: 36.0, lock_version: 0, athlete_id: 2, competition_id: 4},
  {id: 128, value: 70.0, lock_version: 0, athlete_id: 19, competition_id: 3},
  {id: 129, value: 19.0, lock_version: 0, athlete_id: 46, competition_id: 1},
  {id: 130, value: 66.0, lock_version: 0, athlete_id: 12, competition_id: 3},
  {id: 131, value: 23.0, lock_version: 0, athlete_id: 33, competition_id: 1},
  {id: 132, value: 41.0, lock_version: 0, athlete_id: 45, competition_id: 4},
  {id: 133, value: 81.0, lock_version: 0, athlete_id: 43, competition_id: 2},
  {id: 134, value: 29.0, lock_version: 0, athlete_id: 24, competition_id: 2},
  {id: 135, value: 100.0, lock_version: 0, athlete_id: 42, competition_id: 6},
  {id: 136, value: 19.0, lock_version: 0, athlete_id: 21, competition_id: 2},
  {id: 137, value: 63.0, lock_version: 0, athlete_id: 25, competition_id: 1},
  {id: 138, value: 54.0, lock_version: 0, athlete_id: 16, competition_id: 5},
  {id: 139, value: 85.0, lock_version: 0, athlete_id: 23, competition_id: 5},
  {id: 140, value: 88.0, lock_version: 0, athlete_id: 35, competition_id: 1},
  {id: 141, value: 82.0, lock_version: 0, athlete_id: 23, competition_id: 1},
  {id: 142, value: 48.0, lock_version: 0, athlete_id: 38, competition_id: 5},
  {id: 143, value: 49.0, lock_version: 0, athlete_id: 50, competition_id: 1},
  {id: 144, value: 84.0, lock_version: 0, athlete_id: 44, competition_id: 5},
  {id: 145, value: 64.0, lock_version: 0, athlete_id: 27, competition_id: 2},
  {id: 146, value: 40.0, lock_version: 0, athlete_id: 15, competition_id: 1},
  {id: 147, value: 18.0, lock_version: 0, athlete_id: 14, competition_id: 1},
  {id: 148, value: 39.0, lock_version: 0, athlete_id: 49, competition_id: 5},
  {id: 149, value: 82.0, lock_version: 0, athlete_id: 16, competition_id: 4},
  {id: 150, value: 34.0, lock_version: 0, athlete_id: 20, competition_id: 3},
  {id: 151, value: 53.0, lock_version: 0, athlete_id: 14, competition_id: 2},
  {id: 152, value: 98.0, lock_version: 0, athlete_id: 10, competition_id: 2},
  {id: 153, value: 87.0, lock_version: 0, athlete_id: 44, competition_id: 6},
  {id: 154, value: 21.0, lock_version: 0, athlete_id: 24, competition_id: 4},
  {id: 155, value: 48.0, lock_version: 0, athlete_id: 42, competition_id: 1},
  {id: 156, value: 54.0, lock_version: 0, athlete_id: 25, competition_id: 1},
  {id: 157, value: 98.0, lock_version: 0, athlete_id: 47, competition_id: 1},
  {id: 158, value: 40.0, lock_version: 0, athlete_id: 7, competition_id: 2},
  {id: 159, value: 31.0, lock_version: 0, athlete_id: 7, competition_id: 4},
  {id: 160, value: 3.0, lock_version: 0, athlete_id: 42, competition_id: 5},
  {id: 161, value: 27.0, lock_version: 0, athlete_id: 18, competition_id: 2},
  {id: 162, value: 46.0, lock_version: 0, athlete_id: 3, competition_id: 5},
  {id: 163, value: 69.0, lock_version: 0, athlete_id: 1, competition_id: 6},
  {id: 164, value: 11.0, lock_version: 0, athlete_id: 7, competition_id: 2},
  {id: 165, value: 79.0, lock_version: 0, athlete_id: 35, competition_id: 2},
  {id: 166, value: 21.0, lock_version: 0, athlete_id: 42, competition_id: 3},
  {id: 167, value: 98.0, lock_version: 0, athlete_id: 20, competition_id: 2},
  {id: 168, value: 85.0, lock_version: 0, athlete_id: 6, competition_id: 1},
  {id: 169, value: 97.0, lock_version: 0, athlete_id: 25, competition_id: 5},
  {id: 170, value: 23.0, lock_version: 0, athlete_id: 35, competition_id: 2},
  {id: 171, value: 24.0, lock_version: 0, athlete_id: 33, competition_id: 4},
  {id: 172, value: 51.0, lock_version: 0, athlete_id: 45, competition_id: 6},
  {id: 173, value: 69.0, lock_version: 0, athlete_id: 33, competition_id: 5},
  {id: 174, value: 29.0, lock_version: 0, athlete_id: 12, competition_id: 6},
  {id: 175, value: 56.0, lock_version: 0, athlete_id: 8, competition_id: 2},
  {id: 176, value: 46.0, lock_version: 0, athlete_id: 24, competition_id: 2},
  {id: 177, value: 64.0, lock_version: 0, athlete_id: 40, competition_id: 5},
  {id: 178, value: 94.0, lock_version: 0, athlete_id: 18, competition_id: 5},
  {id: 179, value: 14.0, lock_version: 0, athlete_id: 50, competition_id: 5},
  {id: 180, value: 45.0, lock_version: 0, athlete_id: 46, competition_id: 1},
  {id: 181, value: 93.0, lock_version: 0, athlete_id: 6, competition_id: 6},
  {id: 182, value: 14.0, lock_version: 0, athlete_id: 7, competition_id: 4},
  {id: 183, value: 15.0, lock_version: 0, athlete_id: 1, competition_id: 5},
  {id: 184, value: 62.0, lock_version: 0, athlete_id: 37, competition_id: 3},
  {id: 185, value: 46.0, lock_version: 0, athlete_id: 47, competition_id: 5},
  {id: 186, value: 40.0, lock_version: 0, athlete_id: 37, competition_id: 2},
  {id: 187, value: 29.0, lock_version: 0, athlete_id: 25, competition_id: 4},
  {id: 188, value: 13.0, lock_version: 0, athlete_id: 44, competition_id: 5},
  {id: 189, value: 7.0, lock_version: 0, athlete_id: 20, competition_id: 6},
  {id: 190, value: 86.0, lock_version: 0, athlete_id: 18, competition_id: 2},
  {id: 191, value: 73.0, lock_version: 0, athlete_id: 40, competition_id: 3},
  {id: 192, value: 80.0, lock_version: 0, athlete_id: 8, competition_id: 5},
  {id: 193, value: 39.0, lock_version: 0, athlete_id: 22, competition_id: 1},
  {id: 194, value: 56.0, lock_version: 0, athlete_id: 22, competition_id: 5},
  {id: 195, value: 59.0, lock_version: 0, athlete_id: 6, competition_id: 2},
  {id: 196, value: 48.0, lock_version: 0, athlete_id: 8, competition_id: 2},
  {id: 197, value: 76.0, lock_version: 0, athlete_id: 49, competition_id: 5},
  {id: 198, value: 84.0, lock_version: 0, athlete_id: 37, competition_id: 4},
  {id: 199, value: 33.0, lock_version: 0, athlete_id: 22, competition_id: 5},
  {id: 200, value: 92.0, lock_version: 0, athlete_id: 25, competition_id: 6},
  {id: 201, value: 51.0, lock_version: 0, athlete_id: 29, competition_id: 2},
  {id: 202, value: 53.0, lock_version: 0, athlete_id: 3, competition_id: 1},
  {id: 203, value: 74.0, lock_version: 0, athlete_id: 34, competition_id: 6},
  {id: 204, value: 47.0, lock_version: 0, athlete_id: 34, competition_id: 2},
  {id: 205, value: 19.0, lock_version: 0, athlete_id: 30, competition_id: 1},
  {id: 206, value: 75.0, lock_version: 0, athlete_id: 30, competition_id: 1},
  {id: 207, value: 79.0, lock_version: 0, athlete_id: 38, competition_id: 6},
  {id: 208, value: 78.0, lock_version: 0, athlete_id: 1, competition_id: 1},
  {id: 209, value: 34.0, lock_version: 0, athlete_id: 42, competition_id: 2},
  {id: 210, value: 11.0, lock_version: 0, athlete_id: 30, competition_id: 5},
  {id: 211, value: 33.0, lock_version: 0, athlete_id: 44, competition_id: 1},
  {id: 212, value: 63.0, lock_version: 0, athlete_id: 35, competition_id: 6},
  {id: 213, value: 93.0, lock_version: 0, athlete_id: 30, competition_id: 1},
  {id: 214, value: 60.0, lock_version: 0, athlete_id: 11, competition_id: 1},
  {id: 215, value: 51.0, lock_version: 0, athlete_id: 8, competition_id: 4},
  {id: 216, value: 67.0, lock_version: 0, athlete_id: 4, competition_id: 5},
  {id: 217, value: 22.0, lock_version: 0, athlete_id: 36, competition_id: 1},
  {id: 218, value: 45.0, lock_version: 0, athlete_id: 25, competition_id: 5},
  {id: 219, value: 2.0, lock_version: 0, athlete_id: 39, competition_id: 1},
  {id: 220, value: 63.0, lock_version: 0, athlete_id: 45, competition_id: 1},
  {id: 221, value: 83.0, lock_version: 0, athlete_id: 12, competition_id: 1},
  {id: 222, value: 38.0, lock_version: 0, athlete_id: 27, competition_id: 6},
  {id: 223, value: 32.0, lock_version: 0, athlete_id: 2, competition_id: 2},
  {id: 224, value: 91.0, lock_version: 0, athlete_id: 33, competition_id: 4},
  {id: 225, value: 26.0, lock_version: 0, athlete_id: 40, competition_id: 4},
  {id: 226, value: 35.0, lock_version: 0, athlete_id: 28, competition_id: 1},
  {id: 227, value: 29.0, lock_version: 0, athlete_id: 38, competition_id: 1},
  {id: 228, value: 14.0, lock_version: 0, athlete_id: 34, competition_id: 4},
  {id: 229, value: 88.0, lock_version: 0, athlete_id: 44, competition_id: 5},
  {id: 230, value: 81.0, lock_version: 0, athlete_id: 10, competition_id: 5},
  {id: 231, value: 89.0, lock_version: 0, athlete_id: 25, competition_id: 4},
  {id: 232, value: 78.0, lock_version: 0, athlete_id: 43, competition_id: 5},
  {id: 233, value: 45.0, lock_version: 0, athlete_id: 13, competition_id: 4},
  {id: 234, value: 48.0, lock_version: 0, athlete_id: 35, competition_id: 1},
  {id: 235, value: 60.0, lock_version: 0, athlete_id: 6, competition_id: 3},
  {id: 236, value: 35.0, lock_version: 0, athlete_id: 3, competition_id: 5},
  {id: 237, value: 47.0, lock_version: 0, athlete_id: 41, competition_id: 4},
  {id: 238, value: 70.0, lock_version: 0, athlete_id: 7, competition_id: 5},
  {id: 239, value: 56.0, lock_version: 0, athlete_id: 8, competition_id: 2},
  {id: 240, value: 60.0, lock_version: 0, athlete_id: 10, competition_id: 4},
  {id: 241, value: 89.0, lock_version: 0, athlete_id: 32, competition_id: 2},
  {id: 242, value: 69.0, lock_version: 0, athlete_id: 21, competition_id: 1},
  {id: 243, value: 46.0, lock_version: 0, athlete_id: 32, competition_id: 5},
  {id: 244, value: 44.0, lock_version: 0, athlete_id: 33, competition_id: 4},
  {id: 245, value: 1.0, lock_version: 0, athlete_id: 12, competition_id: 2},
  {id: 246, value: 97.0, lock_version: 0, athlete_id: 28, competition_id: 5},
  {id: 247, value: 19.0, lock_version: 0, athlete_id: 35, competition_id: 2},
  {id: 248, value: 86.0, lock_version: 0, athlete_id: 33, competition_id: 1},
  {id: 249, value: 58.0, lock_version: 0, athlete_id: 48, competition_id: 4},
  {id: 250, value: 20.0, lock_version: 0, athlete_id: 47, competition_id: 2},
  {id: 251, value: 6.0, lock_version: 0, athlete_id: 14, competition_id: 6},
  {id: 252, value: 28.0, lock_version: 0, athlete_id: 27, competition_id: 5},
  {id: 253, value: 17.0, lock_version: 0, athlete_id: 20, competition_id: 5},
  {id: 254, value: 73.0, lock_version: 0, athlete_id: 1, competition_id: 4},
  {id: 255, value: 76.0, lock_version: 0, athlete_id: 7, competition_id: 2},
  {id: 256, value: 56.0, lock_version: 0, athlete_id: 32, competition_id: 4},
  {id: 257, value: 99.0, lock_version: 0, athlete_id: 32, competition_id: 5},
  {id: 258, value: 53.0, lock_version: 0, athlete_id: 26, competition_id: 1},
  {id: 259, value: 57.0, lock_version: 0, athlete_id: 33, competition_id: 3},
  {id: 260, value: 60.0, lock_version: 0, athlete_id: 28, competition_id: 2},
  {id: 261, value: 64.0, lock_version: 0, athlete_id: 26, competition_id: 4},
  {id: 262, value: 18.0, lock_version: 0, athlete_id: 48, competition_id: 1},
  {id: 263, value: 61.0, lock_version: 0, athlete_id: 50, competition_id: 4},
  {id: 264, value: 20.0, lock_version: 0, athlete_id: 20, competition_id: 1},
  {id: 265, value: 75.0, lock_version: 0, athlete_id: 26, competition_id: 5},
  {id: 266, value: 22.0, lock_version: 0, athlete_id: 26, competition_id: 6},
  {id: 267, value: 47.0, lock_version: 0, athlete_id: 34, competition_id: 2},
  {id: 268, value: 32.0, lock_version: 0, athlete_id: 31, competition_id: 5},
  {id: 269, value: 95.0, lock_version: 0, athlete_id: 7, competition_id: 6},
  {id: 270, value: 21.0, lock_version: 0, athlete_id: 36, competition_id: 3},
  {id: 271, value: 52.0, lock_version: 0, athlete_id: 34, competition_id: 5},
  {id: 272, value: 75.0, lock_version: 0, athlete_id: 21, competition_id: 1},
  {id: 273, value: 10.0, lock_version: 0, athlete_id: 38, competition_id: 3},
  {id: 274, value: 79.0, lock_version: 0, athlete_id: 45, competition_id: 4},
  {id: 275, value: 85.0, lock_version: 0, athlete_id: 10, competition_id: 6},
  {id: 276, value: 17.0, lock_version: 0, athlete_id: 23, competition_id: 5},
  {id: 277, value: 88.0, lock_version: 0, athlete_id: 37, competition_id: 4},
  {id: 278, value: 70.0, lock_version: 0, athlete_id: 21, competition_id: 4},
  {id: 279, value: 72.0, lock_version: 0, athlete_id: 25, competition_id: 2},
  {id: 280, value: 74.0, lock_version: 0, athlete_id: 48, competition_id: 5},
  {id: 281, value: 45.0, lock_version: 0, athlete_id: 36, competition_id: 4},
  {id: 282, value: 21.0, lock_version: 0, athlete_id: 18, competition_id: 3},
  {id: 283, value: 97.0, lock_version: 0, athlete_id: 32, competition_id: 3},
  {id: 284, value: 39.0, lock_version: 0, athlete_id: 24, competition_id: 6},
  {id: 285, value: 75.0, lock_version: 0, athlete_id: 10, competition_id: 2},
  {id: 286, value: 21.0, lock_version: 0, athlete_id: 21, competition_id: 2},
  {id: 287, value: 68.0, lock_version: 0, athlete_id: 17, competition_id: 3},
  {id: 288, value: 54.0, lock_version: 0, athlete_id: 39, competition_id: 1},
  {id: 289, value: 4.0, lock_version: 0, athlete_id: 20, competition_id: 5},
  {id: 290, value: 46.0, lock_version: 0, athlete_id: 3, competition_id: 3},
  {id: 291, value: 22.0, lock_version: 0, athlete_id: 10, competition_id: 1},
  {id: 292, value: 17.0, lock_version: 0, athlete_id: 47, competition_id: 2},
  {id: 293, value: 90.0, lock_version: 0, athlete_id: 2, competition_id: 5},
  {id: 294, value: 60.0, lock_version: 0, athlete_id: 18, competition_id: 4},
  {id: 295, value: 86.0, lock_version: 0, athlete_id: 6, competition_id: 1},
  {id: 296, value: 68.0, lock_version: 0, athlete_id: 42, competition_id: 2},
  {id: 297, value: 42.0, lock_version: 0, athlete_id: 3, competition_id: 2},
  {id: 298, value: 75.0, lock_version: 0, athlete_id: 49, competition_id: 1},
  {id: 299, value: 97.0, lock_version: 0, athlete_id: 46, competition_id: 4},
  {id: 300, value: 9.0, lock_version: 0, athlete_id: 20, competition_id: 5},
  {id: 301, value: 82.0, lock_version: 0, athlete_id: 18, competition_id: 1},
  {id: 302, value: 7.0, lock_version: 0, athlete_id: 20, competition_id: 4},
  {id: 303, value: 77.0, lock_version: 0, athlete_id: 38, competition_id: 5},
  {id: 304, value: 75.0, lock_version: 0, athlete_id: 18, competition_id: 5},
  {id: 305, value: 49.0, lock_version: 0, athlete_id: 12, competition_id: 1},
  {id: 306, value: 5.0, lock_version: 0, athlete_id: 15, competition_id: 5},
  {id: 307, value: 82.0, lock_version: 0, athlete_id: 37, competition_id: 5},
  {id: 308, value: 6.0, lock_version: 0, athlete_id: 12, competition_id: 1},
  {id: 309, value: 41.0, lock_version: 0, athlete_id: 25, competition_id: 2},
  {id: 310, value: 100.0, lock_version: 0, athlete_id: 22, competition_id: 4},
  {id: 311, value: 21.0, lock_version: 0, athlete_id: 40, competition_id: 5},
  {id: 312, value: 85.0, lock_version: 0, athlete_id: 32, competition_id: 2},
  {id: 313, value: 23.0, lock_version: 0, athlete_id: 25, competition_id: 1},
  {id: 314, value: 85.0, lock_version: 0, athlete_id: 30, competition_id: 4},
  {id: 315, value: 91.0, lock_version: 0, athlete_id: 30, competition_id: 4},
  {id: 316, value: 15.0, lock_version: 0, athlete_id: 17, competition_id: 2},
  {id: 317, value: 70.0, lock_version: 0, athlete_id: 23, competition_id: 2},
  {id: 318, value: 80.0, lock_version: 0, athlete_id: 47, competition_id: 4},
  {id: 319, value: 1.0, lock_version: 0, athlete_id: 38, competition_id: 4},
  {id: 320, value: 53.0, lock_version: 0, athlete_id: 26, competition_id: 4},
  {id: 321, value: 85.0, lock_version: 0, athlete_id: 39, competition_id: 5},
  {id: 322, value: 41.0, lock_version: 0, athlete_id: 25, competition_id: 3},
  {id: 323, value: 63.0, lock_version: 0, athlete_id: 26, competition_id: 4},
  {id: 324, value: 66.0, lock_version: 0, athlete_id: 6, competition_id: 5},
  {id: 325, value: 65.0, lock_version: 0, athlete_id: 19, competition_id: 5},
  {id: 326, value: 58.0, lock_version: 0, athlete_id: 27, competition_id: 3},
  {id: 327, value: 89.0, lock_version: 0, athlete_id: 2, competition_id: 4},
  {id: 328, value: 84.0, lock_version: 0, athlete_id: 28, competition_id: 6},
  {id: 329, value: 1.0, lock_version: 0, athlete_id: 23, competition_id: 1},
  {id: 330, value: 90.0, lock_version: 0, athlete_id: 1, competition_id: 1},
  {id: 331, value: 15.0, lock_version: 0, athlete_id: 2, competition_id: 1},
  {id: 332, value: 96.0, lock_version: 0, athlete_id: 3, competition_id: 2},
  {id: 333, value: 68.0, lock_version: 0, athlete_id: 2, competition_id: 2},
  {id: 334, value: 8.0, lock_version: 0, athlete_id: 15, competition_id: 4},
  {id: 335, value: 11.0, lock_version: 0, athlete_id: 25, competition_id: 2},
  {id: 336, value: 4.0, lock_version: 0, athlete_id: 22, competition_id: 2},
  {id: 337, value: 38.0, lock_version: 0, athlete_id: 34, competition_id: 4},
  {id: 338, value: 69.0, lock_version: 0, athlete_id: 18, competition_id: 6},
  {id: 339, value: 87.0, lock_version: 0, athlete_id: 8, competition_id: 1},
  {id: 340, value: 42.0, lock_version: 0, athlete_id: 40, competition_id: 2},
  {id: 341, value: 31.0, lock_version: 0, athlete_id: 11, competition_id: 4},
  {id: 342, value: 66.0, lock_version: 0, athlete_id: 43, competition_id: 1},
  {id: 343, value: 48.0, lock_version: 0, athlete_id: 10, competition_id: 5},
  {id: 344, value: 82.0, lock_version: 0, athlete_id: 12, competition_id: 2},
  {id: 345, value: 11.0, lock_version: 0, athlete_id: 10, competition_id: 3},
  {id: 346, value: 69.0, lock_version: 0, athlete_id: 7, competition_id: 4},
  {id: 347, value: 59.0, lock_version: 0, athlete_id: 32, competition_id: 2},
  {id: 348, value: 43.0, lock_version: 0, athlete_id: 21, competition_id: 4},
  {id: 349, value: 88.0, lock_version: 0, athlete_id: 1, competition_id: 4},
  {id: 350, value: 85.0, lock_version: 0, athlete_id: 2, competition_id: 5},
  {id: 351, value: 77.0, lock_version: 0, athlete_id: 43, competition_id: 1},
  {id: 352, value: 53.0, lock_version: 0, athlete_id: 24, competition_id: 1},
  {id: 353, value: 51.0, lock_version: 0, athlete_id: 28, competition_id: 1},
  {id: 354, value: 18.0, lock_version: 0, athlete_id: 23, competition_id: 1},
  {id: 355, value: 57.0, lock_version: 0, athlete_id: 32, competition_id: 1},
  {id: 356, value: 85.0, lock_version: 0, athlete_id: 4, competition_id: 2},
  {id: 357, value: 23.0, lock_version: 0, athlete_id: 18, competition_id: 2},
  {id: 358, value: 6.0, lock_version: 0, athlete_id: 43, competition_id: 2},
  {id: 359, value: 21.0, lock_version: 0, athlete_id: 24, competition_id: 4},
  {id: 360, value: 84.0, lock_version: 0, athlete_id: 23, competition_id: 2},
  {id: 361, value: 89.0, lock_version: 0, athlete_id: 9, competition_id: 2},
  {id: 362, value: 62.0, lock_version: 0, athlete_id: 45, competition_id: 2},
  {id: 363, value: 20.0, lock_version: 0, athlete_id: 2, competition_id: 2},
  {id: 364, value: 3.0, lock_version: 0, athlete_id: 50, competition_id: 4},
  {id: 365, value: 59.0, lock_version: 0, athlete_id: 13, competition_id: 1},
  {id: 366, value: 8.0, lock_version: 0, athlete_id: 6, competition_id: 4},
  {id: 367, value: 64.0, lock_version: 0, athlete_id: 2, competition_id: 5},
  {id: 368, value: 6.0, lock_version: 0, athlete_id: 50, competition_id: 3},
  {id: 369, value: 36.0, lock_version: 0, athlete_id: 40, competition_id: 2},
  {id: 370, value: 97.0, lock_version: 0, athlete_id: 18, competition_id: 4},
  {id: 371, value: 72.0, lock_version: 0, athlete_id: 35, competition_id: 5},
  {id: 372, value: 14.0, lock_version: 0, athlete_id: 49, competition_id: 2},
  {id: 373, value: 66.0, lock_version: 0, athlete_id: 36, competition_id: 5},
  {id: 374, value: 16.0, lock_version: 0, athlete_id: 45, competition_id: 2},
  {id: 375, value: 60.0, lock_version: 0, athlete_id: 44, competition_id: 1},
  {id: 376, value: 46.0, lock_version: 0, athlete_id: 11, competition_id: 3},
  {id: 377, value: 20.0, lock_version: 0, athlete_id: 39, competition_id: 2},
  {id: 378, value: 45.0, lock_version: 0, athlete_id: 39, competition_id: 2},
  {id: 379, value: 80.0, lock_version: 0, athlete_id: 4, competition_id: 5},
  {id: 380, value: 10.0, lock_version: 0, athlete_id: 43, competition_id: 5},
  {id: 381, value: 70.0, lock_version: 0, athlete_id: 28, competition_id: 4},
  {id: 382, value: 52.0, lock_version: 0, athlete_id: 41, competition_id: 2},
  {id: 383, value: 55.0, lock_version: 0, athlete_id: 5, competition_id: 4},
  {id: 384, value: 27.0, lock_version: 0, athlete_id: 5, competition_id: 1},
  {id: 385, value: 29.0, lock_version: 0, athlete_id: 8, competition_id: 4},
  {id: 386, value: 85.0, lock_version: 0, athlete_id: 15, competition_id: 3},
  {id: 387, value: 47.0, lock_version: 0, athlete_id: 7, competition_id: 5},
  {id: 388, value: 61.0, lock_version: 0, athlete_id: 29, competition_id: 2}
])
