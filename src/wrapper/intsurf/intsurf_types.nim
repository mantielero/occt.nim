import ../../tkernel/ncollection/ncollection_types
import ../../tkernel/standard/standard_types
type
  IntSurfListOfPntOn2S* {.importcpp:"NCollection_List<IntSurf_PntOn2S>", header:"IntSurf_ListOfPntOn2S.hxx",bycopy.} = object

  IntSurfListIteratorOfListOfPntOn2S* {.importcpp:"NCollection_List<IntSurf_PntOn2S>::Iterator", header:"IntSurf_ListOfPntOn2S.hxx",bycopy.} = object

  IntSurfSituation* {.size: sizeof(cint), importcpp: "IntSurf_Situation",
                     header: "IntSurf_Situation.hxx".} = enum
    IntSurfInside, IntSurfOutside, IntSurfUnknown

  IntSurf* {.importcpp: "IntSurf", header: "IntSurf.hxx", bycopy.} = object 

  IntSurfCouple* {.importcpp: "IntSurf_Couple", header: "IntSurf_Couple.hxx", bycopy.} = object

  IntSurfInteriorPoint* {.importcpp: "IntSurf_InteriorPoint",
                         header: "IntSurf_InteriorPoint.hxx", bycopy.} = object

  IntSurfInteriorPointTool* {.importcpp: "IntSurf_InteriorPointTool",
                             header: "IntSurf_InteriorPointTool.hxx", bycopy.} = object 

  IntSurfPathPoint* {.importcpp: "IntSurf_PathPoint",
                     header: "IntSurf_PathPoint.hxx", bycopy.} = object

  IntSurfPathPointTool* {.importcpp: "IntSurf_PathPointTool",
                         header: "IntSurf_PathPointTool.hxx", bycopy.} = object 

  IntSurfPntOn2S* {.importcpp: "IntSurf_PntOn2S", header: "IntSurf_PntOn2S.hxx",
                   bycopy.} = object 

  IntSurfQuadric* {.importcpp: "IntSurf_Quadric", header: "IntSurf_Quadric.hxx",
                   bycopy.} = object

  IntSurfQuadricTool* {.importcpp: "IntSurf_QuadricTool",
                       header: "IntSurf_QuadricTool.hxx", bycopy.} = object 
                       #header: "IntSurf_QuadricTool.hxx", bycopy.} = object 

  IntSurfTransition* {.importcpp: "IntSurf_Transition",
                      header: "IntSurf_Transition.hxx", bycopy.} = object 

  IntSurfTypeTrans* {.size: sizeof(cint), importcpp: "IntSurf_TypeTrans",
                     header: "IntSurf_TypeTrans.hxx".} = enum
    IntSurfIn, IntSurfOut, IntSurfTouch, IntSurfUndecided

  IntSurfAllocator* = Handle[NCollectionBaseAllocator]

  IntSurfSequenceOfCouple* = NCollectionSequence[IntSurfCouple]

  IntSurfSequenceOfInteriorPoint* = NCollectionSequence[IntSurfInteriorPoint]

  IntSurfSequenceOfPathPoint* = NCollectionSequence[IntSurfPathPoint]

  IntSurfSequenceOfPntOn2S* = NCollectionSequence[IntSurfPntOn2S]

  IntSurfLineOn2S* {.importcpp: "IntSurf_LineOn2S", header: "IntSurf_LineOn2S.hxx",
                    bycopy.} = object of StandardTransient

  HandleIntSurfLineOn2S* = Handle[IntSurfLineOn2S]

