# Swift Timer
A basic Timer for Swift

## Inspiration
I use NSTimer quite a bit in Objective C. Its interface doesn't fit in with Swift code though. So I've built my own.

## What do I use a timer for?
- To execute some code at a later time
- To repeatedly execute code at regular intervals
- As a timeout event trigger for asynchronous comms code/state machine

## Ideal Interface
This is what I would like the code to look like (It doesn't yet)

First up a timeout example

	let timeout = Timer(seconds: 5.0) { println("Time's Up!") }
	
	// If we wanted to stop the timeout timer from executing
	timeout.invalidate()
	
	// If we wanted timeout to execute now
	timeout.execute()
	
	// If we want to reset the timer to a new time
	timeout.reset(seconds: 2.0)
	
Next as a polling object
	
	let poller = Timer(seconds: 0.2, repeats: true) {
		let data = self.serialPort.read()
		self.databuffer.append(data)
		self.processDataBuffer()
	}
	
	// If we wanted to stop the timeout timer from executing
	poller.invalidate()
	
	// If we want to change the polling frequency
	poller.reset(seconds: 0.5)