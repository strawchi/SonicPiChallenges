# CHALLENGE D: Use functions to optimize the SpongeBob theme!

use_bpm 136
use_synth :piano
define :measure2_8 do
  play:E4
  sleep 1
  play:E5
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
end
define :measure3_4_6 do
  play :r
  sleep 1
  play:E5
  play:Gs4
  play:B4
  sleep 1
  play:B4
  sleep 1
  play:E5
  play:Gs4
  sleep 1
end
define :measure5_7 do
  play:B4
  sleep 0.75
  play:As4
  sleep 0.25
  play:Gs4
  play:B4
  sleep 0.75
  play:Cs5
  sleep 0.25
  play:B4
  sleep 1
  play:Gs4
  play:E5
  sleep 1
end
define :back_music do |diff|
  play:E3, amp: diff
  sleep 1
  play:B3, amp: diff
  play:E4, amp: diff
  sleep 1
  play:B3, amp: diff
  sleep 1
  play:E4, amp: diff
  sleep 1
end
live_loop:beat do
  32.times do
    sample :drum_bass_hard
    sleep 1
  end
  stop
end
live_loop:background_notes do
  back_music 0.25
  
  back_music 0.5
  
  back_music 0.75
  
  5.times do
    back_music 1
  end
  stop
end

# Measure 1
play :r
sleep 1
play:E4
play:Gs4
sleep 2
play:E5
play:Gs4
sleep 1

measure2_8
measure3_4_6
measure3_4_6
measure5_7
measure3_4_6
measure2_8

sleep 4

play :e5
sleep 1
play :e5, sustain: 2
sleep 2
play :gb5
sleep 0.5
play :fb5
sleep 0.5
play :gb5
sleep 0.5
play :fb5
sleep 0.5
play :gb5
