# Best Practices For CAN Wiring in FIRST Robotics Competition

## The Basics

The CAN bus is how most motor controllers and sensors communicate to one another.  Any message sent by one device must be recieved by all devices on that bus.  Only one can transmit at a time.  The equivalence to human connection is a Discord call, a party line, or something like them.

Each end is terminated with a 120ohm resistor, to keep signal integrity high.

## Connectors

The connectors in use don't matter too much, as the process is more important.  Soldering them daisy-chaining is a viable option, but they do need to be properly insulated.

Some connectors people have used successfully are lever-nuts (like <a href="https://wcproducts.com/products/wcp-0486">these</a>), Anderson Powerpoles