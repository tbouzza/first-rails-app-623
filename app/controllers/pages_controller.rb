class PagesController < ApplicationController
  def about
    @students = ['Rana', 'Mady', 'Jude', 'Smida', 'Kai']
  end

  def contact
    # stop the process == binding.pry

    @students = ['Rana', 'Mady', 'Jude', 'Smida', 'Kai']

    if params[:member].present?
      member = params[:member]

      if @students.include?(member)
        @message = "#{member}'s email is #{member}@lewagon.org"
      else
        @message = "Sorry this member does not work here yet..."
      end
    else
      @message = "You did not type anything 🤔"
    end
  end

  def home
  end
end
