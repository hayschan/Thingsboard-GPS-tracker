-- Initializes a GPIO pin for use with a relay.

function relay_gpio_init()
    -- create a gpio variable that stores the relay pin number
    local relay_PIN = 13

    -- set the relay pin as input, 设置gpio17为输入
    gpio.setup(relay_PIN, nil)
end

-- create a function to check the Relay_state located at GPIO 13 is on or off.

function relay_state()
	-- create a variable that stores the relay pin number
	local relay_PIN = 13

	-- read the relay state
	local relay_state = gpio.read(relay_PIN)

	-- print the relay state
	print("Relay state is: " .. relay_state)

	-- return the relay state
	return relay_state
end