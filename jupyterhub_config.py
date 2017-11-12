import os
user_folder="/home/{}".format(os.getenv("J_USER", "myuser"))
j_location=os.getenv("JUPYTERHUB_LOCATION", user_folder)

c = get_config()
c.JupyterHub.cookie_secret_file = ('{}/jupyterhub_cookie_secret'
									''.format(j_location))
c.JupyterHub.db_url = '{}/jupyterhub.sqlite'.format(j_location)


c.JupyterHub.ssl_cert = u'/etc/letsencrypt/live/4x100g-dtn-mgmt2.sc17.org/fullchain.pem'
c.JupyterHub.ssl_key = u'/etc/letsencrypt/live/4x100g-dtn-mgmt2.sc17.org/privkey.pem'
