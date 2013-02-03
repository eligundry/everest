class Reddit
  require 'snoo'

  def initialize
    options = { :useragent => "/r/everest v0.1 u/eligundry" }
    @snoo = Snoo::Client.new(options)
  end

  def snoo
    @snoo
  end
end
