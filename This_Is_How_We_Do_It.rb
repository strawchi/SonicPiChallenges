# This Is How We Do It
use_bpm 104
use_synth :saw
chatter = "C:/Users/chiamaka_igwebuike/Documents/Audacity/chatting.wav"
start = "C:/Users/chiamaka_igwebuike/Documents/Audacity/do_itt.wav"
scat = "C:/Users/chiamaka_igwebuike/Documents/Audacity/scating.wav"
chorus = "C:/Users/chiamaka_igwebuike/Documents/Audacity/This Is How We Do It.wav"
clap = "C:/Users/chiamaka_igwebuike/Documents/Audacity/clap.wav"
lyrics = "C:/Users/chiamaka_igwebuike/Downloads/audiomass-output.wav"

#main melody array
melody = [:a3,:fb3,:a3,:a3,:fb3,:a3,:a3,:ab3,:a3,:as3,:a3]
melSleeps = [1, 0.5, 1, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 1.5]
index = 0

#main chorus array
choSleeps = [3.8, 3, 5]
diffChorus = [chorus, scat, chorus]
index2 = 0

#parameterized function
define :melod do |vol|
  11.times do
    play (melody[index]), amp: vol
    sleep (melSleeps[index])
    index = index + 1
    if index > 10
      index = 0
    end
  end
end

#transition
sample chatter, amp: 0.75
sleep 14.5

#start of the song
sample start,amp: 2
sleep 4

live_loop :snare do
  248.times do
    sample :drum_cymbal_pedal, amp: 0.2
    sleep 0.25
  end
  stop
end
sleep 4


live_loop :beat do
  40.times do
    sample clap, amp: 1.25
    sleep 1
    sample :drum_bass_hard, beat_stretch: 1
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

3.times do
  sleep choSleeps [index2]
  sample diffChorus [index2], amp: 2
  index2 = index2 + 1
end
sleep 4

sample lyrics



sleep 64.2

#fade out
vol2 = 2
volume = 1
live_loop :ending do
  4.times do
    melod volume
    volume = volume - 0.25
    vol2 = vol2 - 0.5
  end
  stop
end
live_loop :beat2 do
  11.times do
    sample clap, amp: volume
    sleep 1
    sample :drum_bass_hard, amp: volume, beat_stretch: 0.5
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
  sample chorus, amp: vol2
  sleep 8
end
