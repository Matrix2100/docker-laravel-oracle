# Dockerized Laravel API with Oracle Database Connection

This project serves as an example of how to set up a Dockerized Laravel API that connects with Oracle databases. The following steps will guide you pretty poorly through the process of replicating the configuration I did to get it working:

## How to Replicate

1. Create a Docker container with all that is needed to run a Laravel project with an Oracle database connection. Use my Dockerfile, docker-compose, makefile, and other files as examples so you don't need to create from scratch. The configuration may vary depending on your specific project requirements however.

2. Connect to the container through the terminal for convenience. With this, you can run the Laravel command to create a new project and move its files to the right folder:
   `composer create-project laravel/laravel example-app`
3. Install the  `yajra/laravel-oci8:^10`  package to your project. This package enables the connection between Laravel and Oracle databases. You can find more information about it in the package's repository: https://github.com/yajra/laravel-oci8

4. Configure the database connection settings, including encodings. This ensures the correct communication between Laravel and the Oracle database.

Congratulations! You now have a Dockerized Laravel API with Oracle database connection up and running.

## Additional Information

This project is meant to serve as an example of how to configure a Dockerized Laravel API that connects with Oracle databases. However, it requires some configuration before it can run correctly. Moreover, it is not intended to run without proper security considerations and additional configuration in a production environment. For more information on how to configure and secure your Docker containers, please refer to the Docker documentation.
