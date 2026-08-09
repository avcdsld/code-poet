# You Keep Calling Out

class Echo
  def method_missing(name, *)
    name
  end
end

echo = Echo.new
echo.are_you_there
echo.please
echo.answer_me
echo.i_know_you_never_were
