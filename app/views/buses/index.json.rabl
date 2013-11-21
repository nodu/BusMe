collection @buses

attributes :name, :type_of_bus

node :href do |bus|
  bus_url(bus)
end

node:links do |bus|
  {
  routes: bus_routes_url(bus)
  }  
end
