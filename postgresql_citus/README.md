
  1.) Execution of CITUS PostgreSQL Cluster  with scripts in this folder

   - follow link for details : http://docs.citusdata.com/en/v8.3/installation/single_machine_docker.html

    jpac@PC:~/postgresql_citus$ pwd
    /home/joci/postgresql_citus
    jpac@PC:~/postgresql_citus$ ls
    bind-different-port-citus-cluster.sh  citus-shutdown-cluster.sh  citus-verify-cluster.sh  install-docker-compose.sh  install-start-citus-cluster.sh
    jpac@PC:~/postgresql_citus$ ls -la
    total 0
    drwxrwxrwx 1 joci joci 512 Oct 30 09:15 .
    drwxr-xr-x 1 joci joci 512 Oct 30 09:14 ..
    -rwxrwxrwx 1 joci joci  74 Oct 30 09:12 bind-different-port-citus-cluster.sh
    -rwxrwxrwx 1 joci joci  50 Oct 30 09:14 citus-shutdown-cluster.sh
    -rwxrwxrwx 1 joci joci  46 Oct 30 09:13 citus-verify-cluster.sh
    -rwxrwxrwx 1 joci joci 278 Oct 30 09:10 install-docker-compose.sh
    -rwxrwxrwx 1 joci joci 154 Oct 30 09:11 install-start-citus-cluster.sh
    jpac@PC:~/postgresql_citus$ ls -listarh
    total 0
    11540474045607178 0 -rwxrwxrwx 1 joci joci 278 Oct 30 09:10 install-docker-compose.sh
     4222124650824340 0 -rwxrwxrwx 1 joci joci 154 Oct 30 09:11 install-start-citus-cluster.sh
     3377699720998095 0 -rwxrwxrwx 1 joci joci  74 Oct 30 09:12 bind-different-port-citus-cluster.sh
     7318349394943326 0 -rwxrwxrwx 1 joci joci  46 Oct 30 09:13 citus-verify-cluster.sh
     3377699721002662 0 -rwxrwxrwx 1 joci joci  50 Oct 30 09:14 citus-shutdown-cluster.sh
     1407374883772386 0 drwxr-xr-x 1 joci joci 512 Oct 30 09:14 ..
     7881299348352169 0 drwxrwxrwx 1 joci joci 512 Oct 30 09:15 .
    jpac@PC:~/postgresql_citus$ cat install-start-citus-cluster.sh
    curl -L https://raw.githubusercontent.com/citusdata/docker/master/docker-compose.yml > docker-compose.yml
    COMPOSE_PROJECT_NAME=citus docker-compose up -d
    jpac@PC:~/postgresql_citus$ bash -x install-start-citus-cluster.sh
    + curl -L https://raw.githubusercontent.com/citusdata/docker/master/docker-compose.yml
      % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                     Dload  Upload   Total   Spent    Left  Speed
    100   608  100   608    0     0   1865      0 --:--:-- --:--:-- --:--:--  1865
    + COMPOSE_PROJECT_NAME=citus
    + docker-compose up -d
    Creating network "citus_default" with the default driver
    Pulling master (citusdata/citus:8.3.2)...
    8.3.2: Pulling from citusdata/citus
    0a4690c5d889: Pull complete
    723861590717: Pull complete
    db019468bdf4: Pull complete
    91cb81a60371: Pull complete
    a2a4ab07588d: Pull complete
    a7ccdc2a5f31: Pull complete
    93687df2bb93: Pull complete
    f00839cf3313: Pull complete
    883c210c14fb: Pull complete
    8a7c2d5b0cd7: Pull complete
    76024f5cefd1: Pull complete
    f34bbb0a3f3f: Pull complete
    8529e6396a61: Pull complete
    f39bb2a104c1: Pull complete
    04168eccc3da: Pull complete
    6880b4034277: Pull complete
    85db35731cab: Pull complete
    3ce69d3e4c96: Pull complete
    Digest: sha256:e23a29d00edff038297feb15331a978664fcc0c3340052afe2e13fbffa331f97
    Status: Downloaded newer image for citusdata/citus:8.3.2
    Pulling manager (citusdata/membership-manager:0.2.0)...
    0.2.0: Pulling from citusdata/membership-manager
    90f4dba627d6: Pull complete
    a615e2cf13bb: Pull complete
    0fbbccd531ba: Pull complete
    31f0ec3870ee: Pull complete
    8e0f020d8d66: Pull complete
    e5908e586d78: Pull complete
    5811baf80867: Pull complete
    Digest: sha256:97db2f76cefff127886ee49cf85322ab20b86a14ae7832999b1e71af02f5a666
    Status: Downloaded newer image for citusdata/membership-manager:0.2.0
    Creating citus_master ... done
    Creating citus_manager ... done
    Creating citus_worker_1 ... done
    jpac@PC:~/postgresql_citus$ docker exec -it citus_master psql -U postgres
    psql (11.4 (Debian 11.4-1.pgdg90+1))
    Type "help" for help.

    postgres=# SELECT * FROM master_get_active_worker_nodes();
       node_name    | node_port
    ----------------+-----------
     citus_worker_1 |      5432
    (1 row)

    postgres=# \q
    jpac@PC:~/postgresql_citus$ ls -la
    total 4
    drwxrwxrwx 1 joci joci 512 Oct 30 09:17 .
    drwxr-xr-x 1 joci joci 512 Oct 30 09:14 ..
    -rwxrwxrwx 1 joci joci  74 Oct 30 09:12 bind-different-port-citus-cluster.sh
    -rwxrwxrwx 1 joci joci  50 Oct 30 09:14 citus-shutdown-cluster.sh
    -rwxrwxrwx 1 joci joci  46 Oct 30 09:13 citus-verify-cluster.sh
    -rw-rw-rw- 1 joci joci 608 Oct 30 09:17 docker-compose.yml
    -rwxrwxrwx 1 joci joci 278 Oct 30 09:10 install-docker-compose.sh
    -rwxrwxrwx 1 joci joci 154 Oct 30 09:11 install-start-citus-cluster.sh
    jpac@PC:~/postgresql_citus$ ls -listarh
    total 4.0K
    11540474045607178    0 -rwxrwxrwx 1 joci joci 278 Oct 30 09:10 install-docker-compose.sh
     4222124650824340    0 -rwxrwxrwx 1 joci joci 154 Oct 30 09:11 install-start-citus-cluster.sh
     3377699720998095    0 -rwxrwxrwx 1 joci joci  74 Oct 30 09:12 bind-different-port-citus-cluster.sh
     7318349394943326    0 -rwxrwxrwx 1 joci joci  46 Oct 30 09:13 citus-verify-cluster.sh
     3377699721002662    0 -rwxrwxrwx 1 joci joci  50 Oct 30 09:14 citus-shutdown-cluster.sh
     1407374883772386    0 drwxr-xr-x 1 joci joci 512 Oct 30 09:14 ..
     7881299348352169    0 drwxrwxrwx 1 joci joci 512 Oct 30 09:17 .
     21955048183897427 4.0K -rw-rw-rw- 1 joci joci 608 Oct 30 09:17 docker-compose.yml
    jpac@PC:~/postgresql_citus$ cat citus-shutdown-cluster.sh
    COMPOSE_PROJECT_NAME=citus docker-compose down -v
    jpac@PC:~/postgresql_citus$ bash -x citus-shutdown-cluster.sh
    + COMPOSE_PROJECT_NAME=citus
    + docker-compose down -v
    Stopping citus_worker_1 ... done
    Stopping citus_manager  ... done
    Stopping citus_master   ... done
    Removing citus_worker_1 ... done
    Removing citus_manager  ... done
    Removing citus_master   ... done
    Removing network citus_default
    jpac@PC:~/postgresql_citus$ pwd
    /home/joci/postgresql_citus
    jpac@PC:~/postgresql_citus$   
