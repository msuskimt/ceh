# [<<< Back to index](../CEH_index.md)
## Stegnography


`Snow - hide`

snow -C -m "My swiss account number is 121212121212" -p "magic" readme.txt readme2.txt  <p style="color:blue">magic is password and your secret is stored in readme2.txt along with the content of readme.txt</p>

`Snow - display`

snow -C -p "magic" readme2.txt <p style="color:blue">content of readme2.txt ]</p>

