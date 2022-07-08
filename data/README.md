# Estuary "Data" Directory

This path could be confusing considering this overal project is about generating data, however this path is solely about the data tier and respective deployment, migrations, and related collateral for the overall Estuary Project.

The `docker-compose.yml` file spins up a locally deployed PostgreSQL and Hasura container instance pair for development of Estuary. When the repo is pushed to main, whatever is in this data directory is then deployed to production using Hasura's [Github Deployment](https://hasura.io/docs/latest/graphql/cloud/projects/github-integration/) and [Hasura's Cloud](https://hasura.io/).