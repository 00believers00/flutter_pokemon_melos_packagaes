fvm flutter clean &&
fvm flutter pub get &&
fvm flutter pub run build_runner build --delete-conflicting-outputs &&
cd ios &&
if [ -f Podfile.lock ]; then rm -R Podfile.lock; fi &&
if [ -d Pods ]; then rm -Rf Pods; fi &&
pod install || pod install --repo-update &&
cd ..
