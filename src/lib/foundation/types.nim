import ../../wrapper/occt_wrapper

proc toStandardType*[T:GeomSurface](typ: typedesc[T]): Handle[Standard_Type] {.cdecl, 
        importcpp: "STANDARD_TYPE('1)", 
        header: "Standard_Type.hxx".}

proc toStandardType*[T:GeomSurface](typ: T): Handle[Standard_Type] {.cdecl, 
        importcpp: "STANDARD_TYPE('1)", 
        header: "Standard_Type.hxx".}

proc toStandardType*[T:GeomSurface](typ: Handle[T]): Handle[Standard_Type] =
  `*`(typ).toStandardType


proc isKind*( this: TopoDS_Face; 
              theType: Handle[StandardType]): bool =
  `*`(this.surface).isKind(theType)

proc isCylinder*(this: TopoDS_Face): bool =
  this.isKind(Geom_CylindricalSurface.toStandardType)

#openArray[T]
# iterator filterCylinders*(this: iterable[TopoDS_Face]): TopoDS_Face =
#   for i in this:
#     if i.isCylinder:
#       yield i