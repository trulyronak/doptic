# Optic - Docker CLI

	# build container (only when you update Dockerfile, when in production this is a skipped step)
	docker build -t opticcli . # or ./install.sh
	
	# run image
	docker run -v /absolute/path/to/you:/home/userworkspace -p 34444:34444 -p 4000:4000 -it opticcl
	
	# add alias
	alias doptic='docker run --env DEBUG  -v $(pwd):/home/userworkspace -p 34444:34444 -p 4000:4000 -it opticcli'
	
	# after alias
	doptic init

## Issues

### This takes too long to type

simply add an alias (or add to your `PATH` if you wanna be fancy.

	alias doptic='docker run --env DEBUG  -v $(pwd):/home/userworkspace -p 34444:34444 -p 4000:4000 -it opticcli'
	
note that this sets the directory to always be the current one

also maps port 4000 to be where your api runs

### I want to debug around

In the `Dockerfile`, you can change `ENTRYPOINT` so that it doesn't run any command.

	ENTRYPOINT [""]
	
now, you can use `doptic` as a way to just ls and edit around in the container! 
note that your current directory is synced with your current directory, so don't go too crazy

