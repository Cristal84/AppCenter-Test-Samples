# Provide AppCenter/Test upload command
AppCenter_Test_Command='paste your command here'

# Point to APK & test build-dir 
apk_path='app/build/outputs/apk/debug/app-debug.apk'
build_dir='app/build/outputs/apk/androidTest/debug'

# Run using the command "sh tcupload.sh"

# Script injects set values
AppCenter_Test_Command=${AppCenter_Test_Command/'pathToFile.apk'/$apk_path}
AppCenter_Test_Command=${AppCenter_Test_Command/'pathToEspressoBuildFolder'/$build_dir}
echo $AppCenter_Test_Command # For debugging only, prints the final command that will be submitted by eval
eval $AppCenter_Test_Command