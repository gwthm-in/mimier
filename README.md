# Mimier (Only for Mac)
  1. Save OTP of a particular in key chain
  2. Print of a particular service
  3. Copy of a particular service to clipboard

  Now mimier has vpnautoconnect.app (for Mojave). Add this application to have assistive access. And simply run the application.

## Why?
  I use otp for most of the accounts. Currently I have around 12 accounts which needs otp. Though there are lot of pretty good apps for otps such as [GAuthenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2&hl=en_IN), [Authneticator (Chrome)](https://chrome.google.com/webstore/detail/authenticator/bhghoamapcdpbohphigoooaddinpkbai?hl=en) and etc. I don't prefer to use mouse so much.

  So, what mimier will do, uses keyboard shortcut `cmd + shift + o` (personal perference) to wakeup, and then it asks for user input for service account (for which account you need otp) and copies the otp to clipboard.


## How?
  Mimer uses automator to get benefited. It mainly uses 2 things, ~~get text~~(which currently changed to **apple script**) and **run bash script.**

## Security Concerns?
  Mimier stores all service tokens in keychain, so if your key chain is secured, well, your tokens are secured.


## Dependencies
Mimier depends on oauth tool to generate otp. You can install it by running the following command
```bash
brew install oath-toolkit
```

## Installation
##### Automatic Installation:
Install scripts just wraps the above mentioned commands, and cleans up.
```
sudo curl -sL https://raw.githubusercontent.com/gowtham-sai/mimier/master/install.sh | bash
```

##### Manual Installation:
Clone the github repo either by http or ssh way.
```bash
git clone git@github.com:gowtham-sai/mimier.git
```

Navigate to the copied directory, then you need to copy mimer to `/usr/local/bin`
```bash
cd mimier
cp ./mimier /usr/local/bin/
```

Copy the mimer.automator folder to `~/Library/Services/`
```bash
cp -r ./mimier.workflow ~/Library/Services/mimier.workflow
```

##### Setting keyboard shortcut
You can trigger mimier using global keyboard shortcut.
* Open system preferences
* navigate to keyboard shortcuts
* Click on services on left panel
* Scroll down, in general section you will find mimier, set your preferred key shortcut.

<img width="780" alt="Setting Keyboard Shortcut" src="https://user-images.githubusercontent.com/8710113/40257971-b050967a-5b0d-11e8-9d34-11b5cca64060.png">

## Usage
Mimier usage is limited at this point of time. You can do only the following tasks.
1. Adding a service account
2. Deleting a service account
3. Generating OTP for a service account

##### Add Service Token:
Open temrinal and run

```bash
$ mimier add google tokenhere
# or you can use the following as well
$ mimier save google tokenhere
```

##### Delete Service Token:
Open temrinal and run

```bash
$ mimier del google
# or you can use the following as well
$ mimier delete google
```

##### Generate OTP for a service:
Open temrinal and run

```bash
$ mimier gen google
# or you can use the following as well
$ mimier generate google
```


## Security Concerns?
  Mimier stores all service tokens in keychain, so if your key chain is secured (which is the case generally), well, your tokens are secured.
