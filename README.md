# PipeWire-switch-output
Simple script to change PipeWire output between two sinks

## Dependecies

- [WirePlumber](https://github.com/PipeWire/wireplumber)
- [notify-send.sh](https://github.com/vlevit/notify-send.sh) (for desktop notifications)
- grep


## Istallation

Just clone repository and move `switcher.sh` into your _scripts_ directory  

Installation example:   
`git clone https://github.com/onezerodan/PipeWire-switch-output.git`  
`cd PipeWire-switch-output`  
`sudo mv switcher.sh /usr/bin`

## Configuration
**All you need - just specify devices**   
  

1. **Run in terminal**\
  `wpctl status | grep -A3 -m 1 Sinks | tail -n 3` 
    
   You will get someting like this:  
    ```
    │  *   45. HyperX Cloud Alpha S Analog Stereo  [vol: 0.74]
    │      47. GK104 HDMI Audio Controller Digital Stereo (HDMI 3) [vol: 0.74]
    │      48. Starship/Matisse HD Audio Controller Digital Stereo (IEC958) [vol: 0.74]
    ```
    I will choose **HypeX** as headphones and **HDMI** as another device

  
2. **Put choosen device names into script** 

   ```
   headphonesName=HyperX
   anotherDevice=HDMI
   ```
3. **Edit notifications if you want**

4. **Enjoy**!
