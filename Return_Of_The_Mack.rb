# return of the mack

use_bpm 94.25
use_synth :prophet
lyrics = "C:/Users/chiamaka_igwebuike/Downloads/return_aud.wav"
lied = "C:/Users/chiamaka_igwebuike/Downloads/rotm.wav"
startJingle = [:e,:e,:d,:d,:d,:e,:e]
startSleep = [0.5,0.25,0.5,0.25,0.5,0.5,1.5]
i = 0
define :intro do |a|
  7.times do
    play (startJingle [i]), amp: a
    sleep (startSleep [i])
    i = i + 1
    if i > 6
      i = 0
    end
  end
end

define :main do |n1, n2, n3, n4, n5, s1, s2, s3, s4, r1|
  play :a3
  sleep 0.25
  play :c
  sleep 0.25
  play :d
  sleep 0.5
  play :d
  sleep 0.25
  #changing measure
  play n1
  sleep 0.5
  play n2
  sleep s1
  play n3, release: r1
  sleep s2
  play n4
  sleep s3
  play n5
  sleep s4
end

define :liar do
  sample lied, amp: 1.25
  sleep 0.4
  with_fx :reverb do
    play_chord [:c, :e3], amp: 0.5
    sleep 0.5
    play_chord [:g, :d], release: 2, amp: 0.5
    sleep 1
    play_chord [:c, :e3], amp: 0.5
    sleep 0.5
    play_chord [:c, :e3], amp: 0.5, release: 1.5
  end
end


live_loop:beat do
  52.times do
    sample :drum_bass_hard
    sleep 1
  end
  stop
end

sleep 4

a = 0.25
live_loop:melody do
  4.times do
    intro a
    a = a + 0.25
  end
  stop
end

sleep 15.5

live_loop :back do
  play
end


sample lyrics, amp: 2


main :d, :a3, :c, :r, :r, 0.25, 2, 0, 0, 2
main :d, :a3, :c, :r, :r, 0.25, 2, 0, 0, 2
main :d, :a3, :c, :r, :r, 0.25, 2, 0, 0, 2

play :c5
sleep 0.5
play :b
sleep 0.5
play :b
sleep 0.25
play :a
sleep 0.5
play :g
sleep 0.25
play :e, release: 2
sleep 2

main :d, :a3, :c, :r, :r, 0.25, 2, 0, 0, 2
main :e, :e, :d, :c, :a3, 0.5, 0.5, 0.25, 1, 1
main :d, :a3, :c, :r, :r, 0.25, 2, 0, 0, 2

play :c
sleep 0.5
play :b3
sleep 0.5
play :b3
sleep 0.25
play :a3
sleep 0.5
play :g3
sleep 0.25
play :e3, release: 2
sleep 1.5


liar

sleep 1.25

play :c
sleep 0.25
play :d
sleep 0.25
play :e
sleep 0.25
play :e
sleep 0.5
play :d
sleep 0.5
play :d
sleep 0.5
play :a3
sleep 0.5
play :c
sleep 0.5
play :d
sleep 0.5
play :d, release: 2

sleep 0.5
liar

#back music
play :e3
sleep 0.5
play :a3
sleep 0.75
play :e3
sleep 0.75
play :d3, release: 1.25
