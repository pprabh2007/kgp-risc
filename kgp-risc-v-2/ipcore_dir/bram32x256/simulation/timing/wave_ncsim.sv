
 
 
 

 



window new WaveWindow  -name  "Waves for BMG Example Design"
waveform  using  "Waves for BMG Example Design"


      waveform add -signals /bram32x256_tb/status
      waveform add -signals /bram32x256_tb/bram32x256_synth_inst/bmg_port/CLKA
      waveform add -signals /bram32x256_tb/bram32x256_synth_inst/bmg_port/ADDRA
      waveform add -signals /bram32x256_tb/bram32x256_synth_inst/bmg_port/DINA
      waveform add -signals /bram32x256_tb/bram32x256_synth_inst/bmg_port/WEA
      waveform add -signals /bram32x256_tb/bram32x256_synth_inst/bmg_port/DOUTA
console submit -using simulator -wait no "run"
