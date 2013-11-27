Bus.destroy_all
Route.destroy_all

buses = Bus.create([
  {
    name: "Bus 1",
    type_of_bus: 1,
    lat: 22.2872, 
    long: 114.14651
  },
  {
    name: "Bus 2",
    type_of_bus: 2,
    lat: 22.28325,
    long: 114.13385
  },
  {
    name: "Bus 3",
    type_of_bus: 1,
    lat: 22.27777, 
    long: 114.14417
  },
  {
    name: "Bus 4",
    type_of_bus: 2,
    lat: 22.2707, 
    long: 114.18477
  },
  {
    name: "Bus 1",
    type_of_bus: 1,
    lat: 22.2877, 
    long: 114.19327
  },
  {
    name: "Bus 10",
    type_of_bus: 2,
    lat: 22.27896, 
    long: 114.22889
  },
  {
    name: "Bus 101",
    type_of_bus: 1,
    lat: 22.30263, 
    long: 114.18142
  },
  {
    name: "Bus 10s",
    type_of_bus: 2,
    lat: 22.25752, 
    long: 114.13259
  }
])

# routes = Route.create([
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[0]
#   },
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[1]
#   },
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[2]
#   },
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[3]
#   },
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[4]
#   },
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[5]
#   },
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[6]
#   },
#   {
#     start_at: "start",
#     stop_at: "stop",
#     bus: buses[7]
#   }
#   ])