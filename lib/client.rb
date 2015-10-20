require "httparty"
require "pry"

class SamplParty
  include HTTParty
  base_uri "http://10.0.0.125:4567"

  def initialize(server=nil,port=nil)
    self.class.base_uri "http://#{server}:#{port}" if server && port
  end

  def after(options={})
    SamplParty.post("/after", :body => options)
  end

  def beat()
    SamplParty.post("/beat")
  end

  def better(options={})
    SamplParty.post("/better", :body => options)
  end

  def doit(options={})
    SamplParty.post("/doit", :body => options)
  end

  def ever(options={})
    SamplParty.post("/ever", :body => options)
  end

  def faster(options={})
    SamplParty.post("/faster", :body => options)
  end

  def harder(options={})
    SamplParty.post("/harder", :body => options)
  end

  def hour(options={})
    SamplParty.post("/hour", :body => options)
  end

  def makeit(options={})
    SamplParty.post("/makeit", :body => options)
  end

  def makeus(options={})
    SamplParty.post("/makeus", :body => options)
  end

  def morethan(options={})
    SamplParty.post("/morethan", :body => options)
  end

  def never(options={})
    SamplParty.post("/never", :body => options)
  end

  def our(options={})
    SamplParty.post("/our", :body => options)
  end

  def over(options={})
    SamplParty.post("/over", :body => options)
  end

  def stronger(options={})
    SamplParty.post("/stronger", :body => options)
  end

  def workis(options={})
    SamplParty.post("/workis", :body => options)
  end

  def workit(options={})
    SamplParty.post("/workit", :body => options)
  end

  def stop
    SamplParty.get("/stop")
  end
end


sampler = SamplParty.new("localhost","4567")

sampler.beat
sampler.workit(v: 1)
sleep 2
sampler.better(v: 1)
sleep 2
sampler.faster(v: 1)
sleep 2
sampler.stronger(v: 1)
sleep 2


binding.pry

