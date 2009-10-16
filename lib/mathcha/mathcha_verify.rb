module Mathcha
  module MathchaVerify
    SOLV_KEY  = 0
    SOLV      = 1
    
    # This method is used in conjunction with MatchaHelper#matcha_tag. Verifies 
    # the current session's last generated mathcha. Returns true if we verify 
    # and false if otherwise. 
    def verify_mathcha(params)
      if (solv_key = params[:solv_key]) and (solv = params[:solv])
        return (session[:solv] and session[:solv][SOLV_KEY] == solv_key.to_i and session[:solv][SOLV] == solv.to_i)
      end          
    end
  end
end
    