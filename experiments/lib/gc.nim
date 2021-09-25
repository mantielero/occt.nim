import cinterop
import gp_Pnt


csource "Standard_Handle.hxx":
  cnamespace opencascade:
    type
      handle*[T] = object of CClass

type
  Handle = handle

csource "Geom_TrimmedCurve.hxx":
  type
    Geom_TrimmedCurve* = object of CClass

type
  Handle_Geom_TrimmedCurve* = Handle[Geom_TrimmedCurve]

csource "GC_MakeArcOfCircle.hxx":
  type 
    GC_MakeArcOfCircle* = object of CClass
    gp_Circ* = object of CClass

  converter toHandle_Geom_TrimmedCurve*(self: GC_MakeArcOfCircle):Handle_Geom_TrimmedCurve {.importcpp:"(#)".}
    

proc makeArcOfCircle*(a,b,c:Pnt):Handle_Geom_TrimmedCurve =#Handle_Geom_TrimmedCurve =
  return GC_MakeArcOfCircle.init(a,b,c)
  
csource "GC_MakeSegment.hxx":
  type 
    GC_MakeSegment* = object of CClass

  converter toHandle_Geom_TrimmedCurve*(self: GC_MakeSegment):Handle_Geom_TrimmedCurve {.importcpp:"(#)".}

proc makeSegment*(a,b:Pnt):Handle_Geom_TrimmedCurve =#Handle_Geom_TrimmedCurve =
  return GC_MakeSegment.init(a,b)

#converter toHandle*(this: GC_MakeArcOfCircle): handle[Geom_TrimmedCurve] =
#  this.constopencascade
#GC_MakeArcOfCircle()

#[

  Handle_Geom_TrimmedCurve* {.header: "Geom_TrimmedCurve.hxx", importcpp: "Handle_Geom_TrimmedCurve".} = Handle[Geom_TrimmedCurve]
  #Base_type* {.header: "Geom_TrimmedCurve.hxx", importcpp: "Geom_TrimmedCurve::base_type".} = Geom_BoundedCurve    
]#