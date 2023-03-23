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
