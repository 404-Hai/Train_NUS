class DS
    def initialize # connect to data source...
    def get_mouse_info(workstation_id) # ...
    def get_mouse_price(workstation_id) # ...
    def get_keyboard_info(workstation_id) # ...
    def get_keyboard_price(workstation_id) # ...
    def get_cpu_info(workstation_id) # ...
    ...
  end
ds = DS.new
ds.get_cpu_info(42) # => 2.16 Ghz
ds.get_cpu_price(42) # => 150
ds.get_mouse_info(42) # => Dual