monies = 1..100_000 |> Enum.map(fn i -> Money.new(:USD, i) end)

mult = fn monies -> Enum.map(monies, fn money -> Money.mult!(money, 2) end) end
add = fn monies -> Enum.map(monies, fn money -> Money.add!(money, money) end) end
round = fn monies -> Enum.map(monies, fn money -> Money.round(money) end) end
sum = fn monies -> Enum.reduce(monies, Money.zero(:USD), &Money.add!/2) end

Benchee.run(%{
  "mult" => fn -> mult.(monies) end,
  "add" => fn -> add.(monies) end,
  "round" => fn -> round.(monies) end,
  "sum" => fn -> sum.(monies) end
})
