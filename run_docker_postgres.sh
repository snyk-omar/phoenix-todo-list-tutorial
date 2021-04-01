# This script will allow you to create a docker container 
# with postgres and map the volume to the `data` folder.
# This will allow you to run the app locally without needing
# to install postgres locally on your machine.

docker run -d --name pgdb -e POSTGRES_PASSWORD=Pass2021! -v data:/var/lib/postgresql/data -p 5432:5432 postgres
