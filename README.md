# ArchivesSpace Deployment

ArchivesSpace is an archives management application. For more information, please refer to the ArchivesSpace [repository](https://github.com/archivesspace/archivesspace).

### Purpose

The purpose of this documentary is to document the configuration and plugins of each ArchivesSpace environement we use:
- `development`: refers to the local development environment each developer is running on their machine.
- `test`: refers to the remote test instance currently managed by Lyrasis. This is the instance where all testing is done.
- `production`: refers to the ArchivesSpace production instance, which is also managed by Lyrasis.

Each directory in this repository is named after one of the environments listed above. Under each directory, there are two files:

- `config.rb`: contains all the custom configurations to the ArchivesSpace environment
- `plugins.yml`: contains a list of all the plugins included in the the ArchivesSpace environment. Each plugin must have the following attributes:

```yml
plugins:
  - name: aspace_static_plugins # matches git repository name
    git: true
    branch: "v0.2.1" # matches the version tag or branch in the repository
    url: https://github.com/emory-libraries/aspace_static_plugins.git # url of the plugin's git repository
```

### Plugins

At Emory Libraries, we manage all ArchivesSpace UI customizations under one plugin, [aspace_static_plugins](https://github.com/emory-libraries/aspace_static_plugins). We also use other plugins listed under `plugins.yml` of each environment e.g. [container_management_labels](https://github.com/emory-libraries/container_management_labels).

### Deployment Process

1. Create a new release for [aspace_static_plugins](https://github.com/emory-libraries/aspace_static_plugins) if the latest release does not contain the most up to date changes, and ensure the new release has a tag number that follows semantic versioning. You can use the following [instructions](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository) to create a new release.
2. Confirm which environment you are deploying to e.g. test, production
3. Verify the `plugins.yml` of the environment you are deploying to. Insure all plugins required are listed, with a correct version/branch and repository url.
4. Verify the `config.rb` of the environment you are deploying to. Ensure all configuration customizations are included, and ensure `AppConfig[:emory_plugins_version]` is set to the version of the [aspace_static_plugins](https://github.com/emory-libraries/aspace_static_plugins) plugin you are deploying (listed under `plugins.yml`).
5. Create a new release of this repository and choose a tag that follows semantic versioning.
6. Download the `config.rb` that matches the release tag and environment you are deploying. Rename the file to `config-environment-release_version.rb` to clarify the environment as well as the release version of this repository e.g. `config-production-v0.2.1.rb`.
7. Download the `plugins.yml` that matches the release tag and environment you are deploying. Rename the file to `plugins-environment-release_version.yml` to clarify the environment as well as the release version of this repository e.g. `plugins-production-v0.2.1.yml`.
8. Reach out to the Lyrasis team by email, using the following template. Make sure you attach the `config.rb` and `plugins.yml` files downloaded above.

```
Hi,

We would like to deploy [version_to_deploy] of the Emory ArchivesSpace plugin to Emory's ArchivesSpace Test environment. Attached are the files needed for the deploy:

- config.rb: lists all the configuration variables of the plugin.
- plugins.yml: lists the plugins to include. Each plugin has a name, git tag/branch, and git repository URL.

Please let us know if you have any questions and thank you for all your help!

Best,
```
9. After sending the email, you will receive confirmation from the Lyrasis team in the form of an open support ticket. If the Lyrasis team runs into any issues deploying the new version, they will reach out to you through that support ticket.
10. Once the new version is deployed, make sure to inform Emory staff who manage ArchivesSpace.






