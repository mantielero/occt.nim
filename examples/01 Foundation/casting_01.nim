# nim cpp -r tmp01
{.experimental: "callOperator".}
import occt

proc mydowncast*[A; B](this: Handle[A] ): Handle[B] {.cdecl, importcpp: "\'0::DownCast(@)".}

proc dcast1*[T](this: auto ):T {.cdecl, importcpp: "\'0::DownCast(@)".}

proc dcast2*[T](this: Handle[auto] ): Handle[T] {.cdecl, importcpp: "\'0::DownCast(@)".}

proc dcast3*[T](this: Handle ): Handle[T] {.cdecl, importcpp: "\'0::DownCast(@)".}

#proc `()`(this:void; that:Handle[auto] ) =
#  echo "testing"
#  this(that)
#proc `()`(this: void; that:Handle[Geom_Point]) =#:Handle[Geom_CartesianPoint] = # ; theLink: BVH_EncodedLink): bool
#    echo "hola"
var aPnt1: Handle[Geom_Point]           
var aPnt2, aPnt3: Handle[Geom_CartesianPoint] 

aPnt2 = newHandle( cnew newGeomCartesianPoint(1.0,2.0,3.0) ) # 
aPnt1 = newHandle( cast[ptr Geom_Point](aPnt2.get) )


#aPnt3 = mydowncast[Geom_Point,Geom_CartesianPoint](aPnt1)  # <-- This works
#aPnt3 = dcast1[Handle[Geom_CartesianPoint]](aPnt1)         # <-- This doesn't
#aPnt3 = dcast2[Geom_CartesianPoint](aPnt1)                 # <-- This doesn't
aPnt3 = dcast3[Geom_CartesianPoint](aPnt1)                 # <-- This doesn't

# ()(dcast3[Geom_CartesianPoint], aPnt1)
