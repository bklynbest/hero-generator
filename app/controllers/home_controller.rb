class HomeController < ApplicationController
  before_action :common_action, :only => [:index, :team]
  
  def index
  end
  
  def team
    @team_number = params[:team_number].to_i
  end
  
  def common_action 
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @corp_title = Faker::Name.title
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize
    
    
    @rand_num = rand(1..1000)
    @set_number = rand(1..4)
    @background = rand(1..2)
    
    #random backgrounds 
    if @set_number == 1
      @set = "set1"
    elsif @set_number == 2
      @set = "set2"
    elsif @set_number == 3
      @set = "set3"
    else
      @set = "set4"
    end
    
    if @background == 1
      @bg = "bg1"
    else @background == 2
      @bg = "bg2"
    end
    
    @avatar = Faker::Avatar.image(@rand_num, "300x300", "bmp", @set, @bg)
  
    
  end
end

