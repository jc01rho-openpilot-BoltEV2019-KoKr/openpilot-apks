# openpilot-apks

- git pull button added.
- Korean text contributed by crwusiz(@crwusiz) (#1fc2b0bf1), thx for contribution.

- 한글 폰트 설치가 필요하지 않을수도 있습니다.  만약 필요하다면 아래의 폰트설치 가이드를 참조하세요.
```
cd /data
mv openpilot openpilot.bak

git clone --depth 1 https://github.com/jc01rho-openpilot-BoltEV2019-KoKr/openpilot

cd openpilot/installer/fonts

./installer.sh

./installer2.sh

cd /data
mv openpilot openpilot.rm
mv openpilot.bak openpilot

rm -rf openpilot.rm


``````


The source code for the APKs that run alongside openpilot.

[![openpilot apk tests](https://github.com/commaai/openpilot-apks/workflows/openpilot%20apk%20tests/badge.svg)](https://github.com/commaai/openpilot-apks/actions)

## offroad

offroad is the interactive UI displayed while your car is off. Its main features are device setup, comma account pairing, and settings management.

## Dependencies

Ubuntu 16.04:

```
Android SDK:
sudo apt install openjdk-8-jdk openjdk-8-jre android-sdk
sudo chown -R $(whoami): /usr/lib/android-sdk
echo 'export ANDROID_HOME=/usr/lib/android-sdk' >> ~/.bashrc
echo 'export PATH="$PATH:/usr/lib/android-sdk/tools/bin"' >> ~/.bashrc
source ~/.bashrc

Android SDK Tools:
curl -o sdk-tools.zip "https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip"
unzip -o sdk-tools.zip -d "/usr/lib/android-sdk/"
chmod +x /usr/lib/android-sdk/tools/bin/*
sdkmanager "platform-tools" "platforms;android-23" "platforms;android-27" "ndk-bundle"
sdkmanager "extras;android;m2repository"
sdkmanager "extras;google;m2repository"
sdkmanager --licenses

Node:
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

Yarn:
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn

Install capnpc-java:
git clone https://github.com/capnproto/capnproto-java.git
cd capnproto-java/
make
sudo make install
```

## Build

Clone or move this repository under the [openpilot](https://github.com/commaai/openpilot) repository before building. If you have not generated the capnp java files in the openpilot/cereal/ directory you need to run `scons cereal/` in the openpilot directory to generate the files needed for building Offroad. This only needs to be done once.

See build.sh in project directories.
