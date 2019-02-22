defmodule MoneyBench.Profile do
  import ExProf.Macro

  @monies 1..100_000 |> Enum.map(fn i -> Money.new(:USD, i) end)

  def do_analyze do
    profile do
      Enum.map(@monies, fn money -> Money.round(money) end)
    end
  end

  @doc "get analysis records and sum them up"
  def run do
    {records, _block_result} = do_analyze()
    total_percent = Enum.reduce(records, 0.0, &(&1.percent + &2))
    IO.inspect("total = #{total_percent}")
  end
end

MoneyBench.Profile.run()
