# This Is How We Do It
use_bpm 104
use_synth :saw
start = "C:/Users/chiamaka_igwebuike/Documents/Audacity/do_itt.wav"
scat = "C:/Users/chiamaka_igwebuike/Documents/Audacity/scating.wav"
chorus = "C:/Users/chiamaka_igwebuike/Documents/Audacity/This Is How We Do It.wav"

melody = [:a3,:fb3,:a3,:a3,:fb3,:a3,:a3,:ab3,:a3,:a3,:a3]
melSleeps = [1, 0.5, 1, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 1.5]
i = 0

define :melod do |vol|
  11.times do
    play (melody[i]), amp: vol
    sleep (melSleeps[i])
    i = i + 1
    if i > 10
      i = 0
    end
  end
end
sample start
sleep 4

live_loop :snare do
  84.times do
    sample :drum_cymbal_pedal, amp: 0.2
    sleep 0.25
  end
  stop
end
sleep 4

live_loop :beat do
  15.times do
    sample :drum_snare_soft, amp: 1.5, beat_stretch: 0.5
    sleep 1
  end
  stop
end
live_loop :main do
  2.times do
    melod 1
  end
  stop
end
sleep 3.8
sample chorus
sleep 3
sample scat, amp: 0.5
sleep 5
sample chorus
sleep 4.2
volume = 1
live_loop :ending do
  4.times do
    melod volume
    volume = volume - 0.25
  end
  stop
end
live_loop :beat2 do
  22.times do
    sample :drum_snare_soft, amp: volume, beat_stretch: 0.5
    sleep 1
  end
  stop
end
live_loop :snare2 do
  96.times do
    sample :drum_cymbal_pedal, amp: 0.2
    sleep 0.25
  end
  stop
end
sleep 3.8
4.times do
  sample chorus, amp: volume
  sleep 8
end
