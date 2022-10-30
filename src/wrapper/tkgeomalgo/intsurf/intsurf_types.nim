# PROVIDES: IntSurf IntSurfCouple IntSurfInteriorPoint IntSurfInteriorPointTool IntSurfPathPoint IntSurfPathPointTool IntSurfPntOn2S IntSurfQuadric IntSurfQuadricTool IntSurfTransition
# DEPENDS:  Handle[IntSurfLineOn2S]  Handle[IntSurfLineOn2S] StandardTransient

import tkgeomalgo/intsurf/intsurf_types
import tkernel/standard/standard_types
type
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
                       header: "IntSurf_QuadricTool.hxx", bycopy.} = object 

  IntSurfTransition* {.importcpp: "IntSurf_Transition",
                      header: "IntSurf_Transition.hxx", bycopy.} = object 
                                                                     

  HandleIntSurfLineOn2S* = Handle[IntSurfLineOn2S]


  HandleIntSurfLineOn2S* = Handle[IntSurfLineOn2S]

  HandleIntSurfLineOn2S* = Handle[IntSurfLineOn2S]
  IntSurfLineOn2S* {.importcpp: "IntSurf_LineOn2S", header: "IntSurf_LineOn2S.hxx",
                    bycopy.} = object of StandardTransient





