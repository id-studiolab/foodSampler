# foodSampler
technology in a soup

## 🎮 DEVICE
the device is used to collect user input.

##### components:
- feather MO lora
- Lipo Battery
- 7 buttons
- 7 leds
- 1 plastic case

#### TODO:
- [ ] prototype device on breadboard
- [ ] test lora communication with gateway
- [ ] design pcb
- [ ] design case

## 📡 GATEWAY
The gateway is a raspberrypi with a lora hat, it listen for messages from the lora gateway and then publishes the data to the server.

#### TODO:
- [ ] setup raspberrypi with ubuntu
- [ ] test gateway with [node js sx127x library](https://github.com/sandeepmistry/node-sx127x)
- [ ] test lora communication with the modules
- [ ] develop lora to mqtt application

## 💾 SERVER
The server hosts a mqtt broker. Listens for incoming mqtt messages and saves the data to a mongodb DB. The data are accessible trough rest api

#### TODO:
- [ ] setup server (docker?)
- [ ] configure mqtt broker
- [ ] configure mongodb
- [ ] develop mqtt to db code
- [ ] develop rest api to read data from db
