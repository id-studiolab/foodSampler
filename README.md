# foodSampler
Food sampler is a project to collect user data about their food consumption.
It consist of a series of devices equipped with buttons who can send and save data to a server using Lora protocol.

## The device
The devices are based on adafruit feather lora baord, and make use of a custom pcb.
They run on buttery and try to send messages to the lora network every 10 minutes.
once a button is pressed, they connect to the server and send out the data. A button cannot be pressed continuosly... a trasmission need to finish before a new message can be sent.
Arduino code, pcb design and more information on how to configure the library can be found inside the device folder.

## The server
The device communicate via a gateway to the things network, each device need to be configured and provisioned via ttn platform before it can send data to the server.
The server listens for incoming messages from the things network and saves the data to a mongodb DB. The data are accessible trough rest api.
More information on how to deploy the server and which api are accessible can be found in the server folder.
