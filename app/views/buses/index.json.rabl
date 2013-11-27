object false

child @buses, object_root: false do
  attributes :name, :type_of_bus, :id, :lat, :long
 
node :href do |bus|
   bus_url(bus)
 end
end
