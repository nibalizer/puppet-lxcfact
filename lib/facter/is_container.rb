require 'pathname'
Facter.add("is_container") do
  confine :kernel => "Linux"
  setcode do
    Pathname.new('/dev/mem').exist?
  end
end
