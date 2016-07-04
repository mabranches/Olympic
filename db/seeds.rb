Competition.create!([
  {name: "jav2", type: "JavelinThrow", lock_version: 0, status: 0},
  {name: "jav1", type: "JavelinThrow", lock_version: 0, status: 0},
  {name: "run1", type: "Run100m", lock_version: 1, status: 1},
  {name: "run2", type: "Run100m", lock_version: 0, status: 0},
  {name: "name1", type: "Run100m", lock_version: 0, status: 0},
  {name: "mano2", type: "JavelinThrow", lock_version: 0, status: 0}
])
Score.create!([
  {value: 14.0, lock_version: 0, athlete_id: 24, competition_id: 2},
  {value: 65.0, lock_version: 0, athlete_id: 15, competition_id: 1},
  {value: 28.0, lock_version: 0, athlete_id: 10, competition_id: 3},
  {value: 26.0, lock_version: 0, athlete_id: 8, competition_id: 2},
  {value: 20.0, lock_version: 0, athlete_id: 7, competition_id: 3},
  {value: 19.0, lock_version: 0, athlete_id: 5, competition_id: 3},
  {value: 29.0, lock_version: 0, athlete_id: 13, competition_id: 4},
  {value: 90.0, lock_version: 0, athlete_id: 5, competition_id: 1},
  {value: 32.0, lock_version: 0, athlete_id: 10, competition_id: 2},
  {value: 28.0, lock_version: 0, athlete_id: 14, competition_id: 1},
  {value: 43.0, lock_version: 0, athlete_id: 20, competition_id: 2},
  {value: 25.0, lock_version: 0, athlete_id: 20, competition_id: 3},
  {value: 17.0, lock_version: 0, athlete_id: 16, competition_id: 3},
  {value: 26.0, lock_version: 0, athlete_id: 15, competition_id: 1},
  {value: 14.0, lock_version: 0, athlete_id: 21, competition_id: 1},
  {value: 73.0, lock_version: 0, athlete_id: 32, competition_id: 4},
  {value: 42.0, lock_version: 0, athlete_id: 11, competition_id: 4},
  {value: 68.0, lock_version: 0, athlete_id: 10, competition_id: 4},
  {value: 70.0, lock_version: 0, athlete_id: 18, competition_id: 4},
  {value: 91.0, lock_version: 0, athlete_id: 20, competition_id: 2},
  {value: 29.0, lock_version: 0, athlete_id: 16, competition_id: 1},
  {value: 12.0, lock_version: 0, athlete_id: 8, competition_id: 3},
  {value: 26.0, lock_version: 0, athlete_id: 8, competition_id: 4},
  {value: 75.0, lock_version: 0, athlete_id: 4, competition_id: 4},
  {value: 61.0, lock_version: 0, athlete_id: 14, competition_id: 4},
  {value: 59.0, lock_version: 0, athlete_id: 17, competition_id: 2},
  {value: 28.0, lock_version: 0, athlete_id: 29, competition_id: 4},
  {value: 50.0, lock_version: 0, athlete_id: 7, competition_id: 4},
  {value: 19.0, lock_version: 0, athlete_id: 14, competition_id: 1},
  {value: 95.0, lock_version: 0, athlete_id: 27, competition_id: 3},
  {value: 35.0, lock_version: 0, athlete_id: 3, competition_id: 3},
  {value: 15.0, lock_version: 0, athlete_id: 6, competition_id: 1},
  {value: 70.0, lock_version: 0, athlete_id: 16, competition_id: 1},
  {value: 46.0, lock_version: 0, athlete_id: 3, competition_id: 2},
  {value: 96.0, lock_version: 0, athlete_id: 23, competition_id: 1},
  {value: 34.0, lock_version: 0, athlete_id: 11, competition_id: 2},
  {value: 50.0, lock_version: 0, athlete_id: 24, competition_id: 4},
  {value: 53.0, lock_version: 0, athlete_id: 17, competition_id: 4},
  {value: 44.0, lock_version: 0, athlete_id: 19, competition_id: 1},
  {value: 70.0, lock_version: 0, athlete_id: 14, competition_id: 2},
  {value: 25.0, lock_version: 0, athlete_id: 24, competition_id: 2},
  {value: 25.0, lock_version: 0, athlete_id: 5, competition_id: 4},
  {value: 65.0, lock_version: 0, athlete_id: 6, competition_id: 2},
  {value: 2.0, lock_version: 0, athlete_id: 31, competition_id: 2},
  {value: 1.0, lock_version: 0, athlete_id: 17, competition_id: 3},
  {value: 20.0, lock_version: 0, athlete_id: 21, competition_id: 3},
  {value: 54.0, lock_version: 0, athlete_id: 4, competition_id: 3},
  {value: 91.0, lock_version: 0, athlete_id: 26, competition_id: 3},
  {value: 24.0, lock_version: 0, athlete_id: 20, competition_id: 1},
  {value: 8.0, lock_version: 0, athlete_id: 4, competition_id: 2},
  {value: 85.0, lock_version: 0, athlete_id: 16, competition_id: 2},
  {value: 10.0, lock_version: 0, athlete_id: 17, competition_id: 2},
  {value: 96.0, lock_version: 0, athlete_id: 15, competition_id: 1},
  {value: 34.0, lock_version: 0, athlete_id: 16, competition_id: 1},
  {value: 12.0, lock_version: 0, athlete_id: 30, competition_id: 3},
  {value: 99.0, lock_version: 0, athlete_id: 7, competition_id: 1},
  {value: 81.0, lock_version: 0, athlete_id: 27, competition_id: 4},
  {value: 69.0, lock_version: 0, athlete_id: 17, competition_id: 1},
  {value: 3.0, lock_version: 0, athlete_id: 19, competition_id: 1},
  {value: 1.0, lock_version: 0, athlete_id: 18, competition_id: 1},
  {value: 32.0, lock_version: 0, athlete_id: 23, competition_id: 3},
  {value: 97.0, lock_version: 0, athlete_id: 21, competition_id: 4},
  {value: 1.0, lock_version: 0, athlete_id: 6, competition_id: 4},
  {value: 89.0, lock_version: 0, athlete_id: 12, competition_id: 3},
  {value: 39.0, lock_version: 0, athlete_id: 5, competition_id: 1},
  {value: 61.0, lock_version: 0, athlete_id: 28, competition_id: 1},
  {value: 90.0, lock_version: 0, athlete_id: 18, competition_id: 3},
  {value: 100.0, lock_version: 0, athlete_id: 18, competition_id: 1},
  {value: 16.0, lock_version: 0, athlete_id: 22, competition_id: 2},
  {value: 2.0, lock_version: 0, athlete_id: 26, competition_id: 4},
  {value: 65.0, lock_version: 0, athlete_id: 25, competition_id: 2},
  {value: 100.0, lock_version: 0, athlete_id: 9, competition_id: 3},
  {value: 12.0, lock_version: 0, athlete_id: 23, competition_id: 2},
  {value: 51.0, lock_version: 0, athlete_id: 25, competition_id: 1},
  {value: 97.0, lock_version: 0, athlete_id: 7, competition_id: 1},
  {value: 100.0, lock_version: 0, athlete_id: 6, competition_id: 2},
  {value: 71.0, lock_version: 0, athlete_id: 32, competition_id: 3},
  {value: 100.0, lock_version: 0, athlete_id: 9, competition_id: 2},
  {value: 42.0, lock_version: 0, athlete_id: 10, competition_id: 2},
  {value: 76.0, lock_version: 0, athlete_id: 29, competition_id: 3},
  {value: 85.0, lock_version: 0, athlete_id: 22, competition_id: 2},
  {value: 58.0, lock_version: 0, athlete_id: 8, competition_id: 1},
  {value: 100.0, lock_version: 0, athlete_id: 21, competition_id: 2},
  {value: 76.0, lock_version: 0, athlete_id: 6, competition_id: 1},
  {value: 76.0, lock_version: 0, athlete_id: 31, competition_id: 2},
  {value: 87.0, lock_version: 0, athlete_id: 30, competition_id: 2},
  {value: 40.0, lock_version: 0, athlete_id: 25, competition_id: 3},
  {value: 62.0, lock_version: 0, athlete_id: 26, competition_id: 1},
  {value: 52.0, lock_version: 0, athlete_id: 11, competition_id: 3},
  {value: 36.0, lock_version: 0, athlete_id: 24, competition_id: 2},
  {value: 97.0, lock_version: 0, athlete_id: 25, competition_id: 1},
  {value: 4.0, lock_version: 0, athlete_id: 15, competition_id: 3},
  {value: 84.0, lock_version: 0, athlete_id: 28, competition_id: 1},
  {value: 58.0, lock_version: 0, athlete_id: 6, competition_id: 2},
  {value: 51.0, lock_version: 0, athlete_id: 15, competition_id: 2},
  {value: 69.0, lock_version: 0, athlete_id: 29, competition_id: 2},
  {value: 78.0, lock_version: 0, athlete_id: 17, competition_id: 2},
  {value: 34.0, lock_version: 0, athlete_id: 25, competition_id: 1},
  {value: 31.0, lock_version: 0, athlete_id: 25, competition_id: 2},
  {value: 84.0, lock_version: 0, athlete_id: 16, competition_id: 2},
  {value: 41.0, lock_version: 0, athlete_id: 18, competition_id: 2},
  {value: 19.0, lock_version: 0, athlete_id: 26, competition_id: 2},
  {value: 22.0, lock_version: 0, athlete_id: 16, competition_id: 2},
  {value: 100.0, lock_version: 0, athlete_id: 23, competition_id: 2},
  {value: 76.0, lock_version: 0, athlete_id: 3, competition_id: 2},
  {value: 34.0, lock_version: 0, athlete_id: 25, competition_id: 4},
  {value: 97.0, lock_version: 0, athlete_id: 31, competition_id: 2},
  {value: 17.0, lock_version: 0, athlete_id: 28, competition_id: 2},
  {value: 100.0, lock_version: 0, athlete_id: 22, competition_id: 2},
  {value: 76.0, lock_version: 0, athlete_id: 28, competition_id: 2},
  {value: 87.0, lock_version: 0, athlete_id: 15, competition_id: 4},
  {value: 47.0, lock_version: 0, athlete_id: 21, competition_id: 2},
  {value: 93.0, lock_version: 0, athlete_id: 26, competition_id: 1},
  {value: 97.0, lock_version: 0, athlete_id: 28, competition_id: 1},
  {value: 55.0, lock_version: 0, athlete_id: 21, competition_id: 1},
  {value: 30.0, lock_version: 0, athlete_id: 26, competition_id: 1},
  {value: 49.0, lock_version: 0, athlete_id: 21, competition_id: 1},
  {value: 39.0, lock_version: 0, athlete_id: 22, competition_id: 3},
  {value: 50.0, lock_version: 0, athlete_id: 28, competition_id: 3},
  {value: 95.0, lock_version: 0, athlete_id: 29, competition_id: 2},
  {value: 80.0, lock_version: 0, athlete_id: 20, competition_id: 2},
  {value: 16.0, lock_version: 0, athlete_id: 24, competition_id: 3},
  {value: 99.0, lock_version: 0, athlete_id: 19, competition_id: 4},
  {value: 18.0, lock_version: 0, athlete_id: 12, competition_id: 4},
  {value: 16.0, lock_version: 0, athlete_id: 28, competition_id: 4},
  {value: 19.0, lock_version: 0, athlete_id: 30, competition_id: 2},
  {value: 96.0, lock_version: 0, athlete_id: 30, competition_id: 1},
  {value: 59.0, lock_version: 0, athlete_id: 14, competition_id: 3},
  {value: 40.0, lock_version: 0, athlete_id: 5, competition_id: 2},
  {value: 39.0, lock_version: 0, athlete_id: 20, competition_id: 4},
  {value: 96.0, lock_version: 0, athlete_id: 4, competition_id: 2},
  {value: 13.0, lock_version: 0, athlete_id: 19, competition_id: 2},
  {value: 11.0, lock_version: 0, athlete_id: 18, competition_id: 1},
  {value: 1.0, lock_version: 0, athlete_id: 29, competition_id: 1},
  {value: 63.0, lock_version: 0, athlete_id: 22, competition_id: 1},
  {value: 73.0, lock_version: 0, athlete_id: 18, competition_id: 2},
  {value: 75.0, lock_version: 0, athlete_id: 30, competition_id: 2},
  {value: 58.0, lock_version: 0, athlete_id: 9, competition_id: 1},
  {value: 25.0, lock_version: 0, athlete_id: 29, competition_id: 1},
  {value: 72.0, lock_version: 0, athlete_id: 20, competition_id: 1},
  {value: 54.0, lock_version: 0, athlete_id: 27, competition_id: 2},
  {value: 67.0, lock_version: 0, athlete_id: 23, competition_id: 1},
  {value: 89.0, lock_version: 0, athlete_id: 9, competition_id: 4},
  {value: 61.0, lock_version: 0, athlete_id: 4, competition_id: 1},
  {value: 43.0, lock_version: 0, athlete_id: 30, competition_id: 1},
  {value: 73.0, lock_version: 0, athlete_id: 10, competition_id: 2},
  {value: 62.0, lock_version: 0, athlete_id: 12, competition_id: 2},
  {value: 13.0, lock_version: 0, athlete_id: 8, competition_id: 1},
  {value: 94.0, lock_version: 0, athlete_id: 23, competition_id: 2},
  {value: 25.0, lock_version: 0, athlete_id: 19, competition_id: 1},
  {value: 97.0, lock_version: 0, athlete_id: 27, competition_id: 1},
  {value: 25.0, lock_version: 0, athlete_id: 32, competition_id: 2},
  {value: 12.0, lock_version: 0, athlete_id: 13, competition_id: 2},
  {value: 70.0, lock_version: 0, athlete_id: 13, competition_id: 1},
  {value: 14.0, lock_version: 0, athlete_id: 27, competition_id: 1},
  {value: 11.0, lock_version: 0, athlete_id: 9, competition_id: 2},
  {value: 88.0, lock_version: 0, athlete_id: 13, competition_id: 3},
  {value: 20.0, lock_version: 0, athlete_id: 13, competition_id: 1},
  {value: 100.0, lock_version: 0, athlete_id: 19, competition_id: 2},
  {value: 16.0, lock_version: 0, athlete_id: 20, competition_id: 1},
  {value: 5.0, lock_version: 0, athlete_id: 12, competition_id: 1},
  {value: 48.0, lock_version: 0, athlete_id: 3, competition_id: 1},
  {value: 25.0, lock_version: 0, athlete_id: 19, competition_id: 2},
  {value: 6.0, lock_version: 0, athlete_id: 29, competition_id: 1},
  {value: 100.0, lock_version: 0, athlete_id: 15, competition_id: 2},
  {value: 87.0, lock_version: 0, athlete_id: 7, competition_id: 2},
  {value: 68.0, lock_version: 0, athlete_id: 5, competition_id: 1},
  {value: 78.0, lock_version: 0, athlete_id: 7, competition_id: 1},
  {value: 37.0, lock_version: 0, athlete_id: 15, competition_id: 2},
  {value: 57.0, lock_version: 0, athlete_id: 11, competition_id: 2},
  {value: 59.0, lock_version: 0, athlete_id: 32, competition_id: 2},
  {value: 26.0, lock_version: 0, athlete_id: 32, competition_id: 1},
  {value: 11.0, lock_version: 0, athlete_id: 32, competition_id: 1},
  {value: 75.0, lock_version: 0, athlete_id: 9, competition_id: 1},
  {value: 7.0, lock_version: 0, athlete_id: 24, competition_id: 1},
  {value: 19.0, lock_version: 0, athlete_id: 14, competition_id: 1},
  {value: 46.0, lock_version: 0, athlete_id: 27, competition_id: 1},
  {value: 23.0, lock_version: 0, athlete_id: 25, competition_id: 2},
  {value: 19.0, lock_version: 0, athlete_id: 31, competition_id: 3}
])
Athlete.create!([
  {name: "atl0", sex: 0, age: 22, lock_version: 0},
  {name: "atl1", sex: 1, age: 37, lock_version: 0},
  {name: "atl2", sex: 0, age: 31, lock_version: 0},
  {name: "atl3", sex: 1, age: 34, lock_version: 0},
  {name: "atl4", sex: 0, age: 32, lock_version: 0},
  {name: "atl5", sex: 0, age: 28, lock_version: 0},
  {name: "atl6", sex: 1, age: 19, lock_version: 0},
  {name: "atl7", sex: 1, age: 33, lock_version: 0},
  {name: "atl8", sex: 1, age: 38, lock_version: 0},
  {name: "atl9", sex: 1, age: 22, lock_version: 0},
  {name: "atl10", sex: 0, age: 21, lock_version: 0},
  {name: "atl11", sex: 1, age: 22, lock_version: 0},
  {name: "atl12", sex: 0, age: 15, lock_version: 0},
  {name: "atl13", sex: 1, age: 30, lock_version: 0},
  {name: "atl14", sex: 0, age: 38, lock_version: 0},
  {name: "atl15", sex: 1, age: 20, lock_version: 0},
  {name: "atl16", sex: 1, age: 37, lock_version: 0},
  {name: "atl17", sex: 0, age: 33, lock_version: 0},
  {name: "atl18", sex: 0, age: 24, lock_version: 0},
  {name: "atl19", sex: 0, age: 28, lock_version: 0},
  {name: "atl20", sex: 0, age: 33, lock_version: 0},
  {name: "atl21", sex: 0, age: 36, lock_version: 0},
  {name: "atl22", sex: 1, age: 19, lock_version: 0},
  {name: "atl23", sex: 1, age: 40, lock_version: 0},
  {name: "atl24", sex: 0, age: 36, lock_version: 0},
  {name: "atl25", sex: 1, age: 30, lock_version: 0},
  {name: "atl26", sex: 0, age: 27, lock_version: 0},
  {name: "atl27", sex: 1, age: 16, lock_version: 0},
  {name: "atl28", sex: 1, age: 37, lock_version: 0},
  {name: "atl29", sex: 0, age: 30, lock_version: 0}
])
JavelinThrow.create!([
  {name: "jav2", type: "JavelinThrow", lock_version: 0, status: 0},
  {name: "jav1", type: "JavelinThrow", lock_version: 0, status: 0},
  {name: "mano2", type: "JavelinThrow", lock_version: 0, status: 0}
])
Run100m.create!([
  {name: "run1", type: "Run100m", lock_version: 1, status: 1},
  {name: "run2", type: "Run100m", lock_version: 0, status: 0},
  {name: "name1", type: "Run100m", lock_version: 0, status: 0}
])
