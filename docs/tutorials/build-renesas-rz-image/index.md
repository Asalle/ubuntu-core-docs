(ref-index-build-your-first-image)=
# Build your first image

This tutorial will guide you through the steps required to **create your own Ubuntu Core image**, with **your own selection of snaps**, and **install it on a Renesas RZ device**.  

## Requirements

In addition to having a basic understanding of Linux and running commands from the terminal, this tutorial has hardware requirements.

* [Hardware requirements for building an Ubuntu Core image](requirements.md)

  See the recommended hardware configuration of the host and target systems specific to this tutorial.

## Create an Ubuntu One account

Before you can use Ubuntu Core, build or sign an image, or publish a snap, you will need to create an Ubuntu One account, supply it with Snapcraft credentials, and retrieve the developer account ID.

Ubuntu One is a single sign-on service (SSO) for Ubuntu and its affiliated projects, including [snapcraft.io](https://snapcraft.io), the central resource for all snap-related publishing.

See the details on how to create an account, login, and retrieve your developer account details.

* [Create the account online](access-ubuntu-one.md#create-an-ubuntu-one-account)

  Learn how to create an account and register an SSH key.

* [Export login credentials with Snapcraft](access-ubuntu-one.md#snapcraft-credentials)

  Use Snapcraft to export your login authentication credentials and place them within an environment variable.

* [Retrieve your developer account id](access-ubuntu-one.md#retrieve-your-developer-account-id)

  Use the `snapcraft whoami` command to display your developer identifier.

## Create the model assertion

A _model assertion_ is a signed recipe that describes the components that comprise a complete image at the heart of a custom Ubuntu Core.

* [Download a model assertion](create-a-model.md#download-a-model-file)

  Download the 64-bit reference model for the Renesas RZ/G2 devices: [ubuntu-core-24-renesas-rz-arm64.json](https://raw.githubusercontent.com/canonical/models/refs/heads/master/devices/mediatek/genio/ubuntu-core-22-genio-arm64.json)

* [Edit the model assertion](create-a-model.md#edit-the-model-file)

  Edit `my-model.json` using a text editor.

* [authority-id and brand-id](create-a-model.md#authority-id-and-brand-id)

  Replace "canonical" in `my-model.json` with your developer and brand ID.

* [timestamp](create-a-model.md#timestamp)

  Provide the timestamp at the end of the process.

* [snaps](create-a-model.md#snaps)

  Add the snaps **pi**, **pi-kernel**, **core24** and **snapd** that are required for a functioning Ubuntu Core device.

* [A complete model assertion](create-a-model.md#complete-model-example)

  Review `my-model.json` after finishing the edits above.

## Sign the model assertion

Learn how to sign a model with a GPG key to make it into a _model assertion_.

* [Create a key](sign-the-model.md#create-a-key)

  Use `snapcraft` to create a key that will be used across all models or model families.

* [Register the key](sign-the-model.md#register-the-key)

  Upload the key and register it with your Ubuntu One account by using `register-key` command. After creating the key, update the timestamp in `my-model.json`.

* [Sign the model](sign-the-model.md#sign-the-model)

  Use the `snap sign` command to update the JSON file with the key name.

## Build the image

Using [ubuntu-image](https://github.com/canonical/ubuntu-image), generate a bootable image from the recipe contained in the [model assertion](/tutorials/build-your-first-image/create-a-model).

* [Compile the image](build-the-image.md#compile-the-image)

  Install the `ubuntu-image` command and use the arguments `snap`, `--allow-snapd-kernel-mismatch` and the file name of the previously signed model assertion to build an image.

Now that you have a custom image for a Renesas RZ/G devices on a microSD card. Follow the intructions [here](https://documentation.ubuntu.com/core/tutorials/try-pre-built-images/install-on-a-device/install-on-renesas/) to flash the image.

