class StaticPagesController < ApplicationController
  def home
    @num_pic = 15
    @index_min = 0
    @index_max = @num_pic - 1
    @index = rand(@num_pic)

    @source_line = nil
    line = @index + 1
    File.open(File.dirname(__FILE__) + '/source.txt') do |f|
      while line > 0
        line -= 1
        @source_line = f.gets
      end
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
