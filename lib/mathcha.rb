require 'mathcha/mathcha_helper'
require 'mathcha/mathcha_verify'

ActionView::Base.send(:include, Mathcha::MathchaHelper)
ActionController::Base.send(:include, Mathcha::MathchaVerify)