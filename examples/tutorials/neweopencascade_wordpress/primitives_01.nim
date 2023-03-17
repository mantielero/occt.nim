import occt

proc main =
  # Building a Rectangular parallelepiped
  let boxShape = box( pnt(0.5,0,0), # origin
                      1.0,  # dx
                      0.8,  # dy
                      0.4   # dz
                    ).shape
  boxShape.toStep("box.stp")

  # Building a sphere
  let sphereShape = sphere( pnt(2.5,0.5,0.5), 0.5).shape
  sphereShape.toStep("sphere.stp")

  # Building a cone
  let coneOrigin = pnt(1,2,0)
  let ax = ax2(coneOrigin, dzAsDir(), dxAsDir())
  let coneShape = cone( ax, 
                        0.5,  # Rbig
                        0.15, # Rsmall
                        1     # height
                      ).shape
  coneShape.toStep("cone.stp")

  # Building a cylinder
  let cylinderOrigin = pnt(2.5,2,0)
  var ox = dxAsDir()
  var oz = dzAsDir()
  let axCyl = ax2(cylinderOrigin, oz, ox)
  let cylinderShape = cylinder(axCyl, 0.5, 1.0).shape
  cylinderShape.toStep("cylinder.stp")

  # Building a wedge
  let wedgeShape = wedge(ax2(pnt(3.5,0,0), oz, ox),
                   0.5, 0.15, 1.0,  # dx, dy, dz
                   0.4  # itx
                   ).shape
  wedgeShape.toStep("wedge.stp")

  # Build a torus
  torus( ax2(pnt(3.5,2,0.5),oz,ox),
         0.3, 0.1)
    .shape
    .toStep("torus.stp")



main()

#[


//Build a torus
double torusR1 = 0.3;
double torusR2 = 0.1;
gp_Pnt torusOrig(3.5,2,0.5);
TopoDS_Shape torusShape = BRepPrimAPI_MakeTorus(gp_Ax2(torusOrig,AxZ,AxX),torusR1,torusR2).Shape();
]#