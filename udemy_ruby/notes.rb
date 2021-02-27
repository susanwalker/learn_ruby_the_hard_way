full_name = Proc.new do|first, last|
  first + " " + last
  end
  full_name.call("Susan", "Walker")
  or
  full_name["Susan", "Walker"]