# Creation
Copy the headers files:
```
cp /usr/include/opencascade/BrepTools* ./
```

Copy an example `.c2nim` file from other folder:
```
cp ../tkoffset/brepoffset/brepoffset.c2nim breptools.c2nim
```

If everything went fine, remove the headers:
```
rm *.hxx
```

Create the headers:
```
find ./ -name "*.hxx" -exec c2nim --cpp --header breptools.c2nim {} \;
```

Convert the filenames to lowercase:
```
for F in B*; do NEWNAME=$(echo "$F" | tr '[:upper:]' '[:lower:]'); mv "$F" "$NEWNAME"; done
```

Create a file for the types definitions:
```
touch breptools_types.nim
```

Move all the types definitions into `breptools_types.nim` manually (sorry for me!).

Add the line `import breptools_types` into all the files:
```
sed -i '1s/^/import breptools_types\n\n/' *.nim 
```
(remove that line in the case of `breptools_types.nim` obviously)

Create an include file:
```
ls *.nim > breptools_includes.nim
```

We edit `bretools_includes.nim` so that it imports and exports all the files in the folder (except itself). We also append the required pragmas for its proper compilation. In this case, [we can see](https://dev.opencascade.org/doc/refman/html/class_b_rep_tools.html) that it depends on the toolkit `TKBrep`. So:
```nim
{.passL:"-lTKBRep".}
{.passC:"-I/usr/include/opencascade/".}
```

We import and export this include under `occt_wrapper.nim`:
```nim
...
# TKBRep
import breptools/breptools_includes

....

# TKBRep
export breptools_includes
....
```


## Fix dependencies
We try to compile any file and it will fail:
```
wrapper/breptools/breptools_types.nim(4, 41) Error: undeclared identifier: 'handle'
```
We start fixing the mixing dependences. For example, `handle` is defined in `wrapper/tkernel/standard_types`, so the file `breptools_types.nim` requires the line:
```nim
import ../tkernel/standard/standard_types
```
besides, we name to rename `handle[`  into `Handle[`.

If you don't know we something is located, you can use:
```
grep TColgp_SequenceOfPnt2d -R *
```

## Reorder
Sometimes we might need to reorder the type definitions within `breptools_types` moving definitions within the file. For example:
```
type
  Handle_BRepTools_GTrsfModification* = Handle[BRepTools_GTrsfModification]


type
  BRepTools_GTrsfModification* {.importcpp: "BRepTools_GTrsfModification",
                                header: "BRepTools_GTrsfModification.hxx", bycopy.} = object of BRepTools_Modification
```
we see that `Handle[BRepTools_GTrsfModification]` requires that we move `BRepTools_GTrsfModification` before the `Handle` definition. So we will put:
```
type
  BRepTools_GTrsfModification* {.importcpp: "BRepTools_GTrsfModification",
                                header: "BRepTools_GTrsfModification.hxx", bycopy.} = object of BRepTools_Modification

type
  Handle_BRepTools_GTrsfModification* = Handle[BRepTools_GTrsfModification]
```

## Inheritance
Sometimes you will find an error like:
```
Error: inheritance only works with non-final objects; for TopToolsShapeSet to be inheritable it must be 'object of RootObj' instead of 'object'
```
In order to make it inheritable you have to options:
1. Using `= object of RootObj`. 
2. For me it works better using the pragmas: `pure, inheritable`.

So I had to edit `toptools_types.nim` like:
```nim
  TopToolsShapeSet* {.importcpp: "TopTools_ShapeSet",
                     header: "TopTools_ShapeSet.hxx", bycopy, pure,inheritable.} = object 
```
