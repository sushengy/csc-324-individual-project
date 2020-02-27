class StaticPagesController < ApplicationController
  def home
    @num_pic = 5
    @index_min = 0
    @index_max = @num_pic - 1
    @index = rand(@num_pic)
  end

  def help
  end

  def about
  end

  def contact
  end
end
