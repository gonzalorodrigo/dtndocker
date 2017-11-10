Container to run a Jupyter notebook and two anonymous grid-ftp instances.

Test Command:

~~~
globus-url-copy -vb -fast -p 4  ftp://192.168.200.2:2811/data/10G.dat ftp://192.168.200.2:2811/data/10G-b.dat
globus-url-copy -vb -fast -p 4  ftp://192.168.100.2:2811/data/10G.dat ftp://192.168.200.2:2811/data/10G-b.dat
~~~
