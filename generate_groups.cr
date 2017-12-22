probabilities = [1, 0, 0, 2, 2, 3, 2, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 2]
draw_box = [] of Int32
winners = [] of Int32

probabilities.each_with_index do |p, i|
  draw_box += [i + 1] * p
end

7.times do
  winner = draw_box.sample
  draw_box.delete winner
  winners << winner
end

p winners.sort! # [1, 4, 5, 6, 7, 14, 18] by https://travis-ci.org/NCU-CSIE-Algorithmics-A-1061/Homework-12/builds/320140456#L489
