# return of the mack

use_bpm 98
use_synth :prophet
ending = "C:/Users/chiamaka_igwebuike/Downloads/rotm.wav"
startJingle = [:e5,:e5,:d5,:d5,:d5,:e5,:e5]
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

live_loop:beat do
  36.times do
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

#new code

# return of the mack

use_bpm 94.25
use_synth :prophet
lyrics = "C:/Users/chiamaka_igwebuike/Downloads/return_aud.wav"
ending = "C:/Users/chiamaka_igwebuike/Downloads/rotm.wav"
startJingle = [:e5,:e5,:d5,:d5,:d5,:e5,:e5]
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

sample lyrics, amp: 2

live_loop :mack do
  2.times do
    3.times do
      play :a
      sleep 0.25
      play :c5
      sleep 0.25
      play :d5
      sleep 0.5
      play :d5
      sleep 0.25
      play :d5
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
    play :a
    sleep 0.5
    play :g
    sleep 0.25
    play :e, release: 2
    sleep 2
  end
  stop
end

sleep 31.5
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
