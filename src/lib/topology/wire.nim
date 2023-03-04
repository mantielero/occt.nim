import ../../wrapper/occt_wrapper

proc `&=`*[T:TopoDS_Edge|TopoDS_Wire](wire:var BRepBuilderAPI_MakeWire; edge:T) =
  ## adding edges to a wire
  wire.add(edge)
  if not wire.isDone:
    raise newException(ValueError, "failed while adding and edge")

# converter toTopoDSWire*(this: BRepBuilderAPI_MakeWire): TopoDS_Wire =
#   ## converter (see types involved)
#   this.wire

proc wire*(edges: varargs[TopoDS_Edge]): BRepBuilderAPI_MakeWire =
  result = newWire() 
  for edge in edges:
    result &= edge

# proc `&`*(w:TopoDS  _Edge; e:TopoDS_Wire): BRepBuilderAPI_MakeWire =
#   result = wire()
#   result &= w
#   result &= e  

# proc `&`*(e:TopoDS_Wire; w:TopoDS_Edge): BRepBuilderAPI_MakeWire =
#   result = wire()
#   result &= e
#   result &= w  

proc `&`*(w1,w2:TopoDS_Wire): BRepBuilderAPI_MakeWire =
  result = wire()
  result &= w1
  result &= w2 



  # echo "\n\n---- STATUS ----"
  # echo "BRepCheck_Wire:"
  # var aWireStatus = newBRepCheck_Wire( w )#.toTopoDSWire )#aWire )
  # echo "- closed: ", aWireStatus.Closed
  # #echo "  - orientation: ", aWireStatus.Orientation
  # #echo "  - isValid: ", aWireStatus.IsValid
  # var aWireAnalyzer = newBRepCheck_Analyzer( w )
  # echo "BRepCheck_Analyzer:"
  # #echo "  - closed: ", aWireAnalyzer.Closed
  # #echo "  - orientation: ", aWireAnalyzer.Orientation
  # echo "- isValid: ", aWireAnalyzer.IsValid    
  # #echo "  - selfintersect: ", aWireStatus.SelfIntersect  
  # #var tmp = face(myFaceProfile.wire)
  # echo "------------"


  # echo "\n\n----Wire edges----"
  # for e in w.getEdges():
  #   echo "Edge:"
  #   echo "  orientation: ", e.orientation
  #   # var first, last: TopoDS_Vertex
  #   # vertices(e, first, last)
  #   # echo first.pnt.x, " ", first.pnt.y
  #   # echo last.pnt.x, " ", last.pnt.y
  #   for v in e.getVertex(): 
  #     var p1 = v.pnt 
  #     echo "  ",p1.x, " ", p1.y#, " ", p1.z


  # echo "\n\nNew wire reversed:"
  # for v in aMirroredWire.getVertex(): #newWireReversed.getVertex(): 
  #   var p1 = v.pnt 
  #   echo p1.x, " ", p1.y#, " ", p1.z
  #aWire &= newWire # isValid --> False
  # #aWire &= newWireReversed 
  # let myWireProfile = aWire & aMirroredWire 
  # for e in newWire.getEdges():
  #   w &= e   #.reversed()#.wire
  #   echo w.error


  #echo aFace.isNull
  #var a = newBRepCheck_Analyzer(aFace)
  #echo a.IsValid

  #aface.shape.toStep("borrame.stp")
  # for v in aWire.getVertex(): 
  #   var p1 = v.pnt 
  #   echo p1.x, " ", p1.y#, " ", p1.z
  #var f = face(aWire.wire, true)  # Error: unhandled unknown cpp exception

  #echo "Closed: ", aWire.wire.isClosed

  

  # echo w.wire.isClosed
  # echo skt.points
  # for s in skt.segments:
  #   var p1 = s.firstVertex.pnt 
  #   echo p1.x, " ", p1.y, " ", p1.z

  # echo "-----------"
  # echo "Information"
  # echo "-----------"
  # for e in w.wire.getEdges(): 
  #   echo e.isGeometric, " ", e.isClosed
  #   echo "Orientation: ", e.orientation
  #   echo "."
  #   var first, last: float    
  #   var aCurve = curve(e, first, last)
  #   #echo `*`(aCurve).firstParameter
  #   echo first, " ", last
  #   #`*`(aCurve).reverse
    
  # for e in newWireReversed.getEdges(): 
  #   echo e.isGeometric, " ", e.isClosed
  #   echo "Orientation: ", e.orientation
  #   echo "."
  #   var first, last: float    
  #   var aCurve = curve(e, first, last)
  #   #echo `*`(aCurve).firstParameter
  #   echo first, " ", last  

#[
    // mirror wire object
    gp_Trsf2d mirrorTransform;
    mirrorTransform.SetMirror(gp_Pnt2d(0, 0), gp_Dir2d(0, 1));
    Geom2d_Transformation mirrorGeomTransf(mirrorTransform);
    wire.Reverse();
    wire.Reverse();
    wire = TopoDS::Wire(mirrorGeomTransf.Transformed(wire));
]#




  # Reverse can be done over Geom2d_Curve
  #var v3 = w2.HandleGeom2dCurve
  #echo aWire.isDone
  #var tmp = face()
  #tmp.add(aWire.wire)
  #let myFaceProfile:TopoDS_Face = face(myWireProfile.toTopoDSWire)