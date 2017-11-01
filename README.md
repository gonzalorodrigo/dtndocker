Container to run a Jupyter notebook and some other tools

## TODO

- Change the user/pass of the demo user to load from an ENV-VAR
- Add the ESNet demo software

## Building & running:
~~~
# Build container
docker-compose build

# Run container
docker-compose up
~~~
At this point, the jupyter notebook should be accessible through
[http://127.0.0.1:8000](http://127.0.0.1:8000). Loging with 
myuser:Docker!
