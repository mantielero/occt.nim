# OCCTutils
https://techoverflow.net/category/opencascade/

# Face area
[How to compute surface area of a TopoDS_Face in OpenCascade](https://techoverflow.net/2019/06/13/how-to-compute-surface-area-of-topods_face-in-opencascade/)

The equivalent in Nim:
```nim
import occt

proc main =
  var r = ellipse(30,20)
  echo r.face.area  # Shows: 1884.95556640625
  
main()
```

# TopoDS_Shape --> TopoDS_Solid
[How to get TopoDS_Solid from TopoDS_Shape](https://techoverflow.net/2019/06/13/how-to-get-topods_solid-from-topods_shape-in-opencascade/)


# Iterate faces
[Iterate faces](https://techoverflow.net/2019/06/13/how-to-iterate-all-faces-in-topods_solid-using-opencascade/)

Using Nim:
```nim
import occt

proc main =
  var aBox = box(10, 20, 30)
  for aFace in aBox.getFaces:
    echo typeof(aFace)

main()
```
# Iterate edges
[Iterate edges](https://techoverflow.net/2019/06/13/how-to-iterate-all-edges-in-topods_face-using-opencascade/)

Using Nim, would be as before, but using `getEdges`.

# Iterate NCollection
[Iterate NCollection](https://techoverflow.net/2019/06/13/how-to-iterate-ncollection_list-in-opencascade/)

```nim
import occt

proc main =
  var aList:NCollection_List[int]
  aList &= 1
  aList &= 2
  aList &= 3

  echo "len: ", aList.len
  for i in aList:
    echo i

  assert aList[0] == 1
  assert aList[1] == 2
  assert aList[2] == 3  

main()
```

# TopTools_ListOfShapes
[How to iterate TopTools_ListOfShape](https://techoverflow.net/2019/06/13/how-to-iterate-toptools_listofshape-in-opencascade/)
[How to create a TopTools_ListOfShape](https://techoverflow.net/2019/06/13/how-to-create-toptools_listofshape-of-two-or-more-shapes-in-opencascade/)

```nim
import occt

proc main =
  # Create an empty list of shapes
  var myList:TopTools_ListOfShape

  # Add the shapes to the list
  var shape1, shape2: TopoDS_Shape

  mylist &= shape1
  mylist &= shape2

  # Print out the number of shapes in the list
  echo "Number of shapes in the list: ", mylist.len

  for shp in mylist:
    echo typeof(shp)

main()
```

# How to create a cube
[How to create a cube](https://techoverflow.net/2019/06/13/how-to-create-a-cube-topods_solid-in-opencascade/)

[How to create a box](https://techoverflow.net/2019/06/13/how-to-create-a-box-topods_solid-in-opencascade/)

```nim
import occt

proc main =
  let cube1 = box(10, 10, 10)
  let cube2 = cube(10)
  
main()
```

# Export a Cylinder to STEP
[How to create a cylinder](https://techoverflow.net/2019/06/13/how-to-create-a-cylinder-topods_solid-in-opencascade/)

[Export to STEP](https://techoverflow.net/2019/06/13/how-to-export-step-file-in-opencascade/)
```nim
import occt

proc main =
  cylinder(10,30).toStep("cylinder.stp")
  
main()
```

# How to fuse TopoDS_Shape
[How to fuse TopoDS_Shape](https://techoverflow.net/2019/06/14/how-to-fuse-topods_shapes-in-opencascade-boolean-or/)

```nim
import occt

proc main =
  let fused = cylinder( 10, 30 ) + box(10,20,30)
  
main()
```