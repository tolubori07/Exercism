local SquareRoot = {}

function newtonise(radical, guess)
  return (guess + (radical / guess)) / 2
end

function SquareRoot.square_root(radicand)
  local tolerance = 0.00001
  local guess = radicand
  local next_guess = newtonise(radicand,guess)

  while math.abs(guess - next_guess) > tolerance do
    guess = next_guess
    next_guess = newtonise(radicand,guess)
  end
  return math.floor(next_guess)
end

return SquareRoot
