# Package creation
Modify `genGenerator.nim` file 


Execute:
```
nim c -r genGenerator
```

This will create the file: `gen.nim`

Execute the file `gen.nim`:
```
nim c -r gen
```
If the processing goes well, the header gets deleted. Otherwise, the file `gen.nim` needs to be updated. Or the file `../opencascade.c2nim`.


If it fails, edit it so that the appropriate lines of the header are commented.


Finally, use `../pp.nim`.

