class Api::PagesController < ApplicationController
  def query_params_action
    @name = params[:name].upcase
    render 'query_params_view.json.jb'
  end

  def check_word
    @name = params[:name].upcase
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'starts_with.json.jb'
  end

  def string_guess
    @guess = params[:guess].to_i 
    
    hidden_number = 23

    if @guess == hidden_number
      @response = "Correct!"
    elsif @guess < hidden_number
      @response = "Go Higher!"
    else 
      @response = "Go Lower!"
    end
    render 'check_guess.json.jb'
  end

  def segment_guess
    @segment_guess = params[:number].to_i 
    
    hidden_number = 23

    if @segment_guess == hidden_number
      @response = "Correct!"
    elsif @segment_guess < hidden_number
      @response = "Go Higher!"
    else 
      @response = "Go Lower!"
    end
    render 'url_segments_test_view.json.jb'
  end

  def body_guess
    @body_guess = params[:body_guess].to_i 
    
    hidden_number = 23

    if @body_guess == hidden_number
      @response = "Correct!"
    elsif @body_guess < hidden_number
      @response = "Go Higher!"
    else 
      @response = "Go Lower!"
    end
    render 'body_guess_view.json.jb'
  end

end
