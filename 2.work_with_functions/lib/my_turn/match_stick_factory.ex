defmodule MyTurn.MatchStickFactory do
  @moduledoc """
  Create a module called MatchstickFactory and a function called boxes/1. The
  function will calculate the number of boxes necessary to accommodate
  some matchsticks. It returns a map with the number of boxes necessary
  for each type of box. The factory has three types of boxes: the big ones
  hold fifty matchsticks, the medium ones hold twenty, and the small ones
  hold five. The boxes can’t have fewer matchstick that they can hold; they
  must be full. The returning map should contain the remaining match-
  sticks. It should work like this:

  MatchstickFactory.boxes(98)
  # %{big: 1, medium: 2, remaining_matchsticks: 3, small: 1}
  MatchstickFactory.boxes(39)
  # %{big: 0, medium: 1, remaining_matchsticks: 4, small: 3}

  Tip: You’ll need to use the rem/2 and div/2 functions.
  """

  @big_box 50
  @medium_box 20
  @small_box 5

  def boxes(match_sticks) do
    big_boxes = div(match_sticks, @big_box)
    remaining_matchsticks = rem(match_sticks, @big_box)

    medium_boxes = div(remaining_matchsticks, @medium_box)
    remaining_matchsticks = rem(remaining_matchsticks, @medium_box)

    small_boxes = div(remaining_matchsticks, @small_box)
    remaining_matchsticks = rem(remaining_matchsticks, @small_box)

    %{big: big_boxes, medium: medium_boxes, small: small_boxes, remaining_matchsticks: remaining_matchsticks}

    # by Copilot:
    # %{} |> Map.put(:big, div(match_sticks, @big_box))
    #     |> Map.put(:medium, div(rem(match_sticks, @big_box), @medium_box))
    #     |> Map.put(:small, div(rem(rem(match_sticks, @big_box), @medium_box), @small_box))
    #     |> Map.put(:remaining_matchsticks, rem(rem(rem(match_sticks, @big_box), @medium_box), @small_box))
  end
end
