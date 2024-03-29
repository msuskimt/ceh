# [<<< Back to index](../CEH_index.md)
## Stegnography

### snow `A tool for hiding and display hiddien data in file`

`Snow - hide`

snow -C -m "My swiss account number is 121212121212" -p "magic" readme.txt readme2.txt
- magic is password and your secret is stored in readme2.txt along with the content of readme.txt<

`Snow - display`

snow -C -p "magic" readme2.txt
- content of readme2.txt

### binwalk `A tool for searching binary files for embedded hidden files and data.`

binwalk file `Displays the embedded data`\
binwalk -e file `Extracts the data`\
binwalk --dd ".*" file `Extracts all data`


### others

exiftool file `Shows the metadata`\
exiv2 file `Shows the metadata`\
openstego `gui tool`\

### ADS - Alternate Data Streams

`add`
echo "Dane ukryte" > "plik.txt:HiddenData"

`extract`
Get-Content -Path "plik.txt" -Stream "HiddenData"\
streams.exe `z pakietu sysinternals`