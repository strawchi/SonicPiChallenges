# return of the mack

use_bpm 98
use_synth :prophet
ending = "C:/Users/chiamaka_igwebuike/Downloads/rotm.wav"

define :intro do |a|
  play :e5, amp: a
  sleep 0.5
  play :e5, amp: a
  sleep 0.25
  play :d5, amp: a
  sleep 0.5
  play :d5, amp: a
  sleep 0.25
  play :d5, amp: a
  sleep 0.5
  play :e5, amp: a
  sleep 0.5
  play :e5, amp: a
end

live_loop:beat do
  36.times do
    sample :drum_bass_hard
    sleep 1
  end
  stop
end

sleep 4

live_loop:melody do
  intro 0.25
  sleep 1.5
  intro 0.5
  sleep 1.5
  intro 0.75
  sleep 1.5
  intro 1
  stop
end

sleep 15.5

live_loop :mack do
  3.times do
    play :a
    sleep 0.25
    play :c5
    sleep 0.25
    play :d5
    sleep 0.5
    play :d5
    sleep 0.25
    play :d5, release: 1
    sleep 0.5
    play :a
    sleep 0.25
    play :c5, release: 2
    sleep 2
  end
  play :c5
  sleep 0.5
  play :b
  sleep 0.5
  play :b
  sleep 0.25
  play :a, release: 1
  sleep 0.5
  play :g
  sleep 0.25
  play :e, release: 2
  sleep 2
  stop
end

sleep 15.5
sample ending, amp: 1.25
sleep 0.4
with_fx :reverb do
  play :c, amp: 0.5
  play :e3, amp: 0.5
  sleep 0.5
  play :g, release: 2, amp: 0.5
  play :d, release: 2, amp: 0.5
  sleep 1
  play :c, amp: 0.5
  play :e3, amp: 0.5
  sleep 0.5
  play :c, amp: 0.5, release: 1.5
  play :e3, amp: 0.5, release: 1.5
end
