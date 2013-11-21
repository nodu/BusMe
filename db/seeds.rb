Bus.destroy_all
Route.destroy_all

buses = Bus.create([
  {
    name: "Bus 1",
    type_of_bus: 1
  },
  {
    name: "Bus 2",
    type_of_bus: 2
  },
  {
    name: "Bus 3",
    type_of_bus: 1
  },
  {
    name: "Bus 4",
    type_of_bus: 2
  },
  {
    name: "Bus 1",
    type_of_bus: 1
  },
  {
    name: "Bus 10",
    type_of_bus: 2
  },
  {
    name: "Bus 101",
    type_of_bus: 1
  },
  {
    name: "Bus 10s",
    type_of_bus: 2
  }
])

routes = Route.create([
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[0]
  },
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[1]
  },
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[2]
  },
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[3]
  },
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[4]
  },
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[5]
  },
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[6]
  },
  {
    start_at: "start",
    stop_at: "stop",
    bus: buses[7]
  }
  ])