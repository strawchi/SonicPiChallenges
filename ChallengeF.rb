num = 21 #b/c we start counting at 1
use_synth :piano
88.times do
  play num
  sleep 0.5
  num = num + 1
end
sleep 0.25
88.times do
  play num
  sleep 0.25
  num = num - 1
end
sleep 0.125
with_fx :flanger do
  88.times do
    play num
    sleep 0.125
    num = num + 1
  end
end
