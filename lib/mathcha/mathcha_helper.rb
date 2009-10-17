module Mathcha

  # Helper included in ActionView::Base. Use mathcha_tag in your views to 
  # generate a quick and - at this point - incredibly simple - arithmetic
  # problem for your end user to validate.
  # 
  # === Coming soon:
  #
  # * Support for floats and precision.
  # * Multiple active mathchas per session.
  # * Override default session key.
  # * Suppport for negative values if users so wish.
  #
  module MathchaHelper
    # For some reason I thought this may make the code look
    # a little cleaner in the switch. Work with me.
    ADD = '+'
    SUB = '-'
    DIV = '/'
    
    SOLV_OPS = [ADD, SUB, DIV]
    
    # Use mathcha_tag to generate a simple mathcha - dead simple math problems.
    # How crazy you get with your seeds is solely at your discretion - cater to 
    # you audience.
    #
    # * All solutions are positive integers.
    # * All problems generated by mathcha present positive integers to the end-user.
    #
    # Other bits:
    # 
    # * Pass html options as such {:html => {:class => 'foo'}}
    # * The default session key for this thing is :solv, I'd suggest you leave it be.
    # * Only one mathcha can exist at a time, for now.
    def mathcha_tag(options={})
      options.reverse_merge!({:seed_one => 300, :seed_two => 100})

      solv_key    = Time.now.to_i       
      result, eq  = nil, nil
      
      while result.nil? or !result.is_a?(Integer) or result < 0
        result, eq = generate_solv(SOLV_OPS[rand(SOLV_OPS.size)], options[:seed_one], options[:seed_two])
      end 

      session[:solv] = [solv_key, eval(eq)]
      
      html = ''
      html << %{#{eq} = <input type="text" name="solv" />\n}
      html << %{<input type="hidden" name="solv_key" value="#{solv_key}" />\n}
      html
    end
    

    def generate_solv(op, seed1, seed2)
      op1 = rand(seed1)
      op2 = rand(seed2)
      
      sol = eval(eq = "#{op1.to_f} #{op} #{op2.to_f}")
      sol = (sol == sol.floor) ? sol.to_i : sol
      
      return [sol, eq]
    end
    
    private :generate_solv
  end 
end 