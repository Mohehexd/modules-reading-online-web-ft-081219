require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative "./fancy_dancer.rb"
class Kid
  
  extend MetaDancing
  
  include Dance
 
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
end