# Example ansible script to deploy Djano projects

I typically keep site specific configuration separately.

The ansible scripts are divided into only 2 scripts:
* provision.yml to setup a newly launched server. This only needs to be run once on server setup
* deploy.yml to run a new deploy whenver there is a new commit on master

```
bash provision.sh site1
bash deploy.sh site1
```

## Vault

Create a ansible-vault password file called `vault.txt` in the root folder. This is common for all sites.

## Site specific folders

Each folder must contain the following

* `hosts` file
* `SECRETS` file
* `vars.yml` with project specific vars