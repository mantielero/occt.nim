# https://neweopencascade.wordpress.com/2018/10/17/lets-talk-about-fillets/
# https://neweopencascade.wordpress.com/2018/10/18/lets-keep-talking-about-fillets/
#{.passL:"-lTKFillet".}
import occt

proc main =
  var
    l_cyl1 = 100f
    r_cyl1 =  20f
    l_cyl2 =  30f
    r_cyl2 =   5f

    ax2_cyl1 = ax2( pnt(0, -l_cyl1 * 0.5, 0 ), dir(0,1,0) )
    ax2_cyl2:Ax2Obj

    cyl1 = cylinder( ax2_cyl1, r_cyl1, l_cyl1).shape()
    cyl2 = cylinder( ax2_cyl2, r_cyl2, l_cyl2).shape()

    fuseOp:BRepAlgoAPI_Fuse

    toolShapes, argShapes: TopTools_ListOfShape # NCollectionList[TopoDS_Shape]

  argShapes.append(cyl1)
  toolShapes.append(cyl2)

  fuseOp.setTools(toolShapes)
  fuseOp.setArguments(argShapes)
  fuseOp.build()


  var 
    sectionEdges:NCollectionList[TopoDS_Shape] = fuseOp.sectionEdges()

  # Constant radius fillet
  var 
    rFillet  = 1.0
    filletOp = fillet(fuseOp.shape())

  for edShape in sectionEdges.items:
    var ed:TopoDS_Edge = TopoDS_Edge(edShape) 
    filletOp.add(rFillet, ed)

  filletOp.build()

  filletOp.shape.toStep("fillet.stp")

main()



