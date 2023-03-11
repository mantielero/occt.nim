import occt
import sugar#, iterutils
import zero_functional
import std/sequtils
# proc getFaces2*(body:TopoDS_Shape): (iterator: TopoDS_Face) = #{.closure.} =
#   var aFaceExplorer = newExplorer(body, topAbsFACE) # myBodyFused?
#   return iterator(): TopoDS_Face =
#     while aFaceExplorer.more():
#       yield aFaceExplorer.current.face
#       aFaceExplorer.next()

# proc filter*[T](it: (iterator : T), f: proc(x: T): bool): (iterator: T) =
#   return iterator(): T =
#     while (let x = it(); not finished(it)):
#       if f(x):
#         yield x


proc main =
  let
    myWidth     = 50.0
    myThickness = 20.0
    myHeight    = 70.0

  var myBody = start(-myWidth / 2, 0)    # starting point
              .vline(-myThickness / 4)   # vertical line for a distance
              
              # arc using the last point, this point and next point
              .threePointsArc( 0, -myThickness / 2.0, #myWidth, 0, 
                              myWidth / 2, -myThickness / 4)
              .vLine( myThickness / 4)
              .closeWithMirror
              .extrude( myHeight )
              .fillet(myThickness / 12)

  let
    myNeckRadius = myThickness / 4
    myNeckHeight = myHeight / 10

  var myNeck = cylinder( myNeckRadius, 
                         myNeckHeight,
                         pnt(0, 0, myHeight),
                         dir(0,0,1) )
  
  myBody = myBody.fuse( myNeck )

  # make a shell from a hollowed solid
  myBody = mybody.shell( -myThickness / 50,  # bottle thickness
                         mybody.getPlaneZmax ) # hollowed by removing the top face
  

  # for (distance,_) in myBody.getDistancesToFaces(0, 0, myHeight):
  #   echo distance

  # for distance in myBody.getFacesWithinDistance(10, 0, myNeckRadius, myHeight):
  #   echo distance    

  # for aFace in myBody.getFacesContaining(0, myNeckRadius, myHeight):
  #   echo aFace
# TODO: inPlane  "XY"

  #for aFace in myBody.getFaces.toSeq.filter(isCylinder):
  #  echo aFace.isCylinder
    #echo typeof( aFace.surface.toStandardType )
    #echo typeof(Geom_CylindricalSurface.toStandardType)
    #var tmp = Geom_CylindricalSurface.toStandardType
    #var tmp:cstring = "CYLINDER"
    #getParam(Geom_CylindricalSurface)
    #echo aFace.surface.isCylinder
    #echo typeof(Geom_CylindricalSurface)
    #echo aFace.surface.isKind(Geom_CylindricalSurface)

  # Get the cylinders containing the point [0, myNeckRadius, myHeight]
  let cylinders = myBody.getFacesContaining(0, myNeckRadius, myHeight).toSeq
                        .filter(isCylinder)
  echo typeof(cylinders)
  echo len(cylinders)

  #let bottomThreadFace = newBRepOffset_MakeOffset(cylinders[0], cfloat(-0.01 * myNeckRadius), 1.0e-6 ).Shape
  #tmp.toStep("borra2.stp")

  #var baseThreadSketch = draw(0.75, 0.25)
  #                       .halfEllipse(2, 0.5, 0.1)
    #.close()

  #let topThreadFace = newBRepOffset_MakeOffset(cylinders[0], cfloat(0.05 * myNeckRadius), 1.0e-6 ).Shape


  #let cylinders2 = myBody.getFacesContaining(0, myNeckRadius, myHeight) --> filter(isCylinder)
  #[------THREAD-----------
  const neckFace = new FaceFinder()
    .containsPoint([0, myNeckRadius, myHeight])
    .ofSurfaceType("CYLINDRE")
    .find(shape.clone(), { unique: true });

  const bottomThreadFace = makeOffset(neckFace, -0.01 * myNeckRadius).faces[0];
  const baseThreadSketch = draw([0.75, 0.25])
    .halfEllipse(2, 0.5, 0.1)
    .close()
    .sketchOnFace(bottomThreadFace, "bounds");

  const topThreadFace = makeOffset(neckFace, 0.05 * myNeckRadius).faces[0];
  const topThreadSketch = draw([0.75, 0.25])
    .halfEllipse(2, 0.5, 0.05)
    .close()
    .sketchOnFace(topThreadFace, "bounds");

  const thread = baseThreadSketch.loftWith(topThreadSketch);
  ]#

  myBody.toStep("borrame.stp")


main()