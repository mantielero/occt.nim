{.passL:"-lTKG3d".}
{.passC:"-I/usr/include/opencascade/" .}

import tkernel/standard/[standard_types]

type
  CartesianPointObj* {.importcpp: "Geom_CartesianPoint",
                       header: "Geom_CartesianPoint.hxx", bycopy.} = object #of GeomPoint ##
    ## !
    ## Returns
    ## a
    ## transient
    ## copy
    ## of
    ## P.    
    
  HandleCartesianPointObj* = Handle[CartesianPointObj]

  GeometryObj* {.importcpp: "Geom_Geometry", header: "Geom_Geometry.hxx", bycopy.} = object #of StandardTransient ##
                                                                                                        ## !
  HandleGeometryObj* = Handle[GeometryObj]




  ## ! The abstract class Point describes the common
  ## ! behavior of geometric points in 3D space.
  ## ! The Geom package also provides the concrete class
  ## ! Geom_CartesianPoint.


  PointObj* {.importcpp: "Geom_Point", header: "Geom_Point.hxx", bycopy.} = object #of GeomGeometry ##
                                                                                          ## !
                                                                                          ## returns
                                                                                          ## the
                                                                                          ## Coordinates
                                                                                          ## of
                                                                                          ## <me>.

  HandlePointObj* = Handle[PointObj]