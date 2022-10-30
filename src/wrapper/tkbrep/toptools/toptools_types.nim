# PROVIDES: TopTools TopToolsLocationSet TopToolsMutexForShapeProvider TopToolsShapeSet
# DEPENDS:  object ## ! Computes a hash code for the given shape, in the range [1, theUpperBound] TopToolsArray1OfListOfShape TopToolsArray1OfShape TopToolsArray2OfShape TopToolsSequenceOfShape

import tkbrep/toptools/toptools_types
type
  TopTools* {.importcpp: "TopTools", header: "TopTools.hxx", bycopy.} = object 
                                                                       
                                                                       
                                                                       

  TopToolsLocationSet* {.importcpp: "TopTools_LocationSet",
                        header: "TopTools_LocationSet.hxx", bycopy.} = object 
                                                                         

  TopToolsMutexForShapeProvider* {.importcpp: "TopTools_MutexForShapeProvider",
                                  header: "TopTools_MutexForShapeProvider.hxx",
                                  bycopy.} = object 
                                                 

  TopToolsShapeSet* {.importcpp: "TopTools_ShapeSet",
                     header: "TopTools_ShapeSet.hxx", bycopy.} = object 
                                                                   
                                                                   

  TopToolsOrientedShapeMapHasher* {.importcpp: "TopTools_OrientedShapeMapHasher", header: "TopTools_OrientedShapeMapHasher.hxx",
                                   bycopy.} = object 
                                                  
                                                  
                                                  

























  TopToolsHArray1OfListOfShape* {.importcpp: "TopTools_HArray1OfListOfShape",
                                 header: "TopTools_HArray1OfListOfShape.hxx",
                                 bycopy.} = object of TopToolsArray1OfListOfShape






















  TopToolsHArray1OfShape* {.importcpp: "TopTools_HArray1OfShape",
                           header: "TopTools_HArray1OfShape.hxx", bycopy.} = object of TopToolsArray1OfShape






















  TopToolsHArray2OfShape* {.importcpp: "TopTools_HArray2OfShape",
                           header: "TopTools_HArray2OfShape.hxx", bycopy.} = object of TopToolsArray2OfShape










































  TopToolsHSequenceOfShape* {.importcpp: "TopTools_HSequenceOfShape",
                             header: "TopTools_HSequenceOfShape.hxx", bycopy.} = object of TopToolsSequenceOfShape











































