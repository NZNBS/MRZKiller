echo "MRZ Segurity v1.7"
echo "Running Obfusapk, please wait..."
sudo docker run --rm -it -u $(id -u):$(id -g) -v "${PWD}":"/workdir" obfuscapk -p -i -o ConstStringEncryption -o Goto -o Nop -o LibEncryption -o ResStringEncryption -o RandomManifest -o AssetEncryption -o ConstStringEncryption -o ClassRename -o FieldRename -o MethodRename -o ConstStringEncryption -o ResStringEncryption -o RandomManifest -o AssetEncryption -o ConstStringEncryption -o ClassRename -o FieldRename -o MethodRename -o Rebuild -o NewSignature -o NewAlignment --keystore-file MRZKiller.jks --keystore-password MRZKiller --key-password MRZKiller --key-alias MrEoZ -d MRZKiller.apk app-release.apk

