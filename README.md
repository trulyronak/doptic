# Optic - Docker CLI

	# build container (only when you update Dockerfile, when in production this is a skipped step)
	docker build -t opticcli .
	
	# run image
	docker run -v /absolute/path/to/you:/home/userworkspace opticcli init
	
	# after alias
	doptic init

## Issues

### This takes too long to type

simply add an alias (or add to your `PATH` if you wanna be fancy.

	alias doptic='docker run -v $(pwd):/home/userworkspace opticcli'
	
note that this lets the directory to always be the current one

### Wait, none of the commands work

Yep, there's currently an X11 Forwarding issue going on

### I want to debug around

In the `Dockerfile`, you can change `ENTRYPOINT` so that it doesn't run any command.

	ENTRYPOINT [""]
	
now, you can use `doptic` as a way to just ls and edit around in the container! 
note that your current directory is synced with your current directory, so don't go too crazy

