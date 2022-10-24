# PROVIDES: BndB2d BndB2f BndB3d BndB3f BndBoundSortBox BndBoundSortBox2d BndBox BndBox2d BndHArray1OfBox BndHArray1OfBox2d BndOBB BndRange BndSphere BndTools
# DEPENDS: BndArray1OfSphere

type
  BndB2d* {.importcpp: "Bnd_B2d", header: "Bnd_B2d.hxx", bycopy.} = object ## ! Empty constructor.

type
  BndB2f* {.importcpp: "Bnd_B2f", header: "Bnd_B2f.hxx", bycopy.} = object ## ! Empty constructor.

type
  BndB3d* {.importcpp: "Bnd_B3d", header: "Bnd_B3d.hxx", bycopy.} = object ## ! Empty constructor.

type
  BndB3f* {.importcpp: "Bnd_B3f", header: "Bnd_B3f.hxx", bycopy.} = object ## ! Empty constructor.

type
  BndBoundSortBox* {.importcpp: "Bnd_BoundSortBox", header: "Bnd_BoundSortBox.hxx",
                    bycopy.} = object ## ! Constructs an empty comparison algorithm for bounding boxes.
                                   ## ! The bounding boxes are then defined using the Initialize function.
                                   ## ! Prepares  BoundSortBox and  sorts   the  boxes of
                                   ## ! <SetOfBox> .

type
  BndBoundSortBox2d* {.importcpp: "Bnd_BoundSortBox2d",
                      header: "Bnd_BoundSortBox2d.hxx", bycopy.} = object ## ! Constructs an empty comparison algorithm for 2D bounding boxes.
                                                                     ## ! The bounding boxes are then defined using the Initialize function.
                                                                     ## ! Prepares
                                                                     ## BoundSortBox2d and sorts the rectangles of
                                                                     ## ! <SetOfBox> .

type
  BndBox* {.importcpp: "Bnd_Box", header: "Bnd_Box.hxx", bycopy.} = object ## ! Creates an empty Box.
                                                                   ## ! The constructed box is qualified Void. Its gap is null.
                                                                   ## ! Bit flags.

type
  BndBox2d* {.importcpp: "Bnd_Box2d", header: "Bnd_Box2d.hxx", bycopy.} = object ## ! Creates an empty 2D
                                                                         ## bounding box.
                                                                         ## ! The
                                                                         ## constructed box is
                                                                         ## qualified Void. Its gap is null.
                                                                         ## ! Bit flags.

type
  BndHArray1OfBox* {.importcpp: "Bnd_HArray1OfBox", header: "Bnd_HArray1OfBox.hxx",
                    bycopy.} = object

type
  BndHArray1OfBox2d* {.importcpp: "Bnd_HArray1OfBox2d",
                      header: "Bnd_HArray1OfBox2d.hxx", bycopy.} = object

type
  BndOBB* {.importcpp: "Bnd_OBB", header: "Bnd_OBB.hxx", bycopy.} = object ## ! Empty constructor
                                                                   ## ! Center of the OBB
    ## ! Directions of the box's axes
    ## ! (all vectors are already normalized)
    ## ! Half-size dimensions of the OBB
    ## ! To be set if the OBB is axis aligned box;

type
  BndRange* {.importcpp: "Bnd_Range", header: "Bnd_Range.hxx", bycopy.} = object ## ! Default
                                                                         ## constructor. Creates VOID range.
    ## !< Start of range
    ## !< End   of range

type
  BndSphere* {.importcpp: "Bnd_Sphere", header: "Bnd_Sphere.hxx", bycopy.} = object ## !
                                                                            ## Empty
                                                                            ## constructor

                                                                            ## constructor
type
  BndTools* {.importcpp: "Bnd_Tools", header: "Bnd_Tools.hxx", bycopy.} = object ## ! @name Bnd_Box to BVH_Box
                                                                         ## conversion
                                                                         ## !
                                                                         ## Converts the given
                                                                         ## Bnd_Box2d to BVH_Box


type
  BndHArray1OfSphere* {.importcpp: "Bnd_HArray1OfSphere",
                       header: "Bnd_HArray1OfSphere.hxx", bycopy.} = object of BndArray1OfSphere

