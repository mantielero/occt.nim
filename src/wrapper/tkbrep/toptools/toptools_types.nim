# PROVIDES: TopTools TopToolsLocationSet TopToolsMutexForShapeProvider TopToolsOrientedShapeMapHasher TopToolsShapeSet
# DEPENDS: TopToolsArray1OfListOfShape TopToolsArray1OfShape TopToolsArray2OfShape TopToolsSequenceOfShape

type
  TopTools* {.importcpp: "TopTools", header: "TopTools.hxx", bycopy.} = object ## ! A set of Shapes. Can be dump, wrote or read.
                                                                       ## ! Dumps the
                                                                       ## topological structure  of <Sh>  on the
                                                                       ## ! stream <S>.

type
  TopToolsLocationSet* {.importcpp: "TopTools_LocationSet",
                        header: "TopTools_LocationSet.hxx", bycopy.} = object ## ! Returns an empty set of
                                                                         ## locations.

type
  TopToolsMutexForShapeProvider* {.importcpp: "TopTools_MutexForShapeProvider",
                                  header: "TopTools_MutexForShapeProvider.hxx",
                                  bycopy.} = object ## ! Constructor
                                                 ## ! This method should not be called (prohibited).

type
  TopToolsOrientedShapeMapHasher* {.importcpp: "TopTools_OrientedShapeMapHasher", header: "TopTools_OrientedShapeMapHasher.hxx",
                                   bycopy.} = object ## ! Computes a hash code for the given shape, in the range [1, theUpperBound]
                                                  ## ! @param theShape the shape which hash code is to be computed
                                                  ## ! @param theUpperBound the upper bound of the range a computing hash code must be within
                                                  ## ! @return a computed hash code, in the range [1, theUpperBound]
#proc hashCode*(theShape: TopoDS_Shape; theUpperBound: cint): cint {.cdecl,
#    importcpp: "TopTools_OrientedShapeMapHasher::HashCode(@)", header: "TopTools_OrientedShapeMapHasher.hxx".}

#    importcpp: "TopTools_OrientedShapeMapHasher::HashCode(@)", header: "TopTools_OrientedShapeMapHasher.hxx".}
type
  TopToolsShapeSet* {.importcpp: "TopTools_ShapeSet",
                     header: "TopTools_ShapeSet.hxx", bycopy.} = object ## ! Builds an empty ShapeSet.
                                                                   ## ! Reads  from <IS>  a shape  and  returns  it in  S.
                                                                   ## ! <NbShapes> is the number of tshapes in the set.


type
  TopToolsHArray1OfListOfShape* {.importcpp: "TopTools_HArray1OfListOfShape",
                                 header: "TopTools_HArray1OfListOfShape.hxx",
                                 bycopy.} = object of TopToolsArray1OfListOfShape

type
  TopToolsHArray1OfShape* {.importcpp: "TopTools_HArray1OfShape",
                           header: "TopTools_HArray1OfShape.hxx", bycopy.} = object of TopToolsArray1OfShape

type
  TopToolsHArray2OfShape* {.importcpp: "TopTools_HArray2OfShape",
                           header: "TopTools_HArray2OfShape.hxx", bycopy.} = object of TopToolsArray2OfShape

type
  TopToolsHSequenceOfShape* {.importcpp: "TopTools_HSequenceOfShape",
                             header: "TopTools_HSequenceOfShape.hxx", bycopy.} = object of TopToolsSequenceOfShape

