# [<<< Back to index](../CEH_index.md)
## Stegnography


`Snow - hide`

snow -C -m "My swiss account number is 121212121212" -p "magic" readme.txt readme2.txt  # magic is password and your secret is stored in readme2.txt along with the content of readme.txt

`Snow - display`

snow -C -p "magic" readme2.txt [comment]:content of readme2.txt

