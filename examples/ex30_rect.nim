#[
https://forum.nim-lang.org/t/7045
]#
import occt

# Let's create two points `gp_Pnt`
var p1 = pnt(0,0,0)
var p2 = pnt(0,20,0)

# Let's create a segment with `tkgeombase/gc/gc_makesegment.nim`:

# From gc_makesegment: segment outputs a MakeSegment. 
# var tmp1:MakeSegment = segment(p1, p2)   # <--- This does not work

# There is a converter:
# from MakeSegment to HandleGeomTrimmerCurve
var tmp1:HandleGeomTrimmedCurve = segment(p1, p2) # This works


# In the file `tkg3d/geom/geom_types.nim` we see that `HandleGeomTrimmedCurve` is
# an object of `HandleGeomCurve`.
var tmp2:EdgeObj = edge(tmp1)
