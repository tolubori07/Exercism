local EliudsEggs = {}

function EliudsEggs.egg_count(number)
  local results = 0
  while number > 0 do
    results = results + (number & 1)
    number = number >> 1
  end
  --account for missing 1
  return results
end

return EliudsEggs
