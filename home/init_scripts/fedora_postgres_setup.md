# Setting up localhost

1. `sudo -u <postgres-username> psql`

    This opens up the terminal front-end to postgres. `<postgres-user>` is probably just `postgres`.

2. `show hba_file;`

    This shows where the config for connections, `pg_hba.conf`, is located.

3. `\q` to exit the postgres frontend

4. Open the `pg_hba.conf` with your text editor

    You should find:

```
local   all             all                                     peer
...
host    all             all             127.0.0.1/32            peer
...
host    all             all             127.0.0.1/32            peer
```

5. Change `peer` to `trust` if you do not care about authenticating to access the database (e.g., you are running it locally and you are the only user on that computer), or to `scram-sha-256` or `md5` if you want it to request a password. [See here for more info on postgres authentication methods.](https://www.postgresql.org/docs/current/auth-methods.html)

6. Restart postgresql. For me on Fedora, this is `sudo systemctl restart postgresql`.
