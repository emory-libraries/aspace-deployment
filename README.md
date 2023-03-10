# ArchivesSpace Deployment

ArchivesSpace is an archives management application. For more information, please refer to the [ArchivesSpace repository](https://github.com/archivesspace/archivesspace).

## Environments

There are three ArchivesSpace environments we use:

- `development`: refers to the local development environment each developer is running on their machine.
- `test`: refers to the remote test instance managed by Lyrasis. This is the instance where testing is done prior to a production deployment.
- `production`: refers to the ArchivesSpace production instance, which is also managed by Lyrasis.

Each directory in this repository is named after one of the environments listed above. Under each directory, there are two files:

- `config.rb`: contains all the custom configurations to the ArchivesSpace environment
- `plugins.yml`: contains a list of all the plugins included in the the ArchivesSpace environment. Each plugin must have the following attributes:

```yml
plugins:
  - name: aspace_static_plugins # matches git repository name
    git: true
    branch: "v0.2.1" # matches the version tag or branch in that plugin's repository
    url: https://github.com/emory-libraries/aspace_static_plugins.git # url of the plugin's git repository
```

## Plugins

At Emory Libraries, we manage all ArchivesSpace UI customizations under one plugin, [aspace_static_plugins](https://github.com/emory-libraries/aspace_static_plugins). We also use other plugins listed under `plugins.yml` of each environment e.g. [container_management_labels](https://github.com/emory-libraries/container_management_labels).

## Deployment Process

### Pre-deployment

1. Create a new release for [aspace_static_plugins](https://github.com/emory-libraries/aspace_static_plugins) if the latest release does not contain the most up to date changes, and ensure the new release has a tag number that follows semantic versioning. You can use the following [instructions](https://docs.github.com/en/repositories/releasing-projects-on-github/managing-releases-in-a-repository) to create a new release. Use the GitHub feature to automatically draft the release notes and make sure the release notes link back to the plugin's tickets that will be included in the release.
1. Link to the release notes in the #archivesspace channel.
1. Confirm which environment you are deploying to e.g. test, production.
1. Verify the `plugins.yml` of the environment you are deploying to. Ensure all plugins required are listed, with a correct version/branch and repository url.
1. Verify the `config.rb` of the environment you are deploying to. Ensure all configuration customizations are included, and change `AppConfig[:emory_plugins_version]` to today's date with a 'v' in front- `vYYYY-MM-DD`.
1. Create a new release of this repository with the same value you set in `AppConfig[:emory_plugins_version]` in the previous step. Use the GitHub feature to automatically draft the release notes and make sure the release notes link back to the tickets for this repository that will be included in the release.

### Deployment

1. Download the `config.rb` and `plugins.yml` that match the new release of this repository and environment you are deploying.
1. Reach out to the Lyrasis team by email. CC the Emory product owner on this email. Make sure you attach the `config.rb` and `plugins.yml` files downloaded above. You can use the template below.
1. After sending the email, you will receive confirmation from the Lyrasis team in the form of an open support ticket. If the Lyrasis team runs into any issues deploying the new version, they will reach out to you through that support ticket.
1. Once the new version is deployed, inform Emory staff who manage ArchivesSpace.

```
Hi,

We would like to deploy a new version of the Emory ArchivesSpace plugin to Emory's ArchivesSpace [environment name] environment. Attached are the files needed for the deploy:

- config.rb: lists all the configuration variables of the plugin.
- plugins.yml: lists the plugins to include. Each plugin has a name, git tag/branch, and git repository URL.

Please let us know if you have any questions and thank you for all your help!

Best,
```
