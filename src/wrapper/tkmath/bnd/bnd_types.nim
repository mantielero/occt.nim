# PROVIDES: BndB2d BndB2f BndB3d BndB3f BndBoundSortBox BndBoundSortBox2d BndBox BndBox2d BndHArray1OfBox BndHArray1OfBox2d BndOBB BndRange BndSphere BndTools
# DEPENDS:  NCollectionArray1[BndBox]  NCollectionArray1[BndSphere]  NCollectionSequence[BndBox] BndArray1OfSphere

import tkmath/bnd/bnd_types
import tkernel/ncollection/ncollection_types
type
  BndB2d* {.importcpp: "Bnd_B2d", header: "Bnd_B2d.hxx", bycopy.} = object 

  BndB2f* {.importcpp: "Bnd_B2f", header: "Bnd_B2f.hxx", bycopy.} = object 

  BndB3d* {.importcpp: "Bnd_B3d", header: "Bnd_B3d.hxx", bycopy.} = object 

  BndB3f* {.importcpp: "Bnd_B3f", header: "Bnd_B3f.hxx", bycopy.} = object 

  BndBoundSortBox* {.importcpp: "Bnd_BoundSortBox", header: "Bnd_BoundSortBox.hxx",
                    bycopy.} = object 

  BndBoundSortBox2d* {.importcpp: "Bnd_BoundSortBox2d",
                      header: "Bnd_BoundSortBox2d.hxx", bycopy.} = object 

  BndBox* {.importcpp: "Bnd_Box", header: "Bnd_Box.hxx", bycopy.} = object 

  BndBox2d* {.importcpp: "Bnd_Box2d", header: "Bnd_Box2d.hxx", bycopy.} = object 

  BndHArray1OfBox* {.importcpp: "Bnd_HArray1OfBox", header: "Bnd_HArray1OfBox.hxx",
                    bycopy.} = object

  BndHArray1OfBox2d* {.importcpp: "Bnd_HArray1OfBox2d",
                      header: "Bnd_HArray1OfBox2d.hxx", bycopy.} = object

  BndOBB* {.importcpp: "Bnd_OBB", header: "Bnd_OBB.hxx", bycopy.} = object 

  BndRange* {.importcpp: "Bnd_Range", header: "Bnd_Range.hxx", bycopy.} = object 

  BndSphere* {.importcpp: "Bnd_Sphere", header: "Bnd_Sphere.hxx", bycopy.} = object 

  BndTools* {.importcpp: "Bnd_Tools", header: "Bnd_Tools.hxx", bycopy.} = object 

  BndArray1OfBox* = NCollectionArray1[BndBox]

  BndArray1OfSphere* = NCollectionArray1[BndSphere]

  BndSeqOfBox* = NCollectionSequence[BndBox]

  BndTools* {.importcpp: "Bnd_Tools", header: "Bnd_Tools.hxx", bycopy.} = object 
  BndHArray1OfSphere* {.importcpp: "Bnd_HArray1OfSphere",
                       header: "Bnd_HArray1OfSphere.hxx", bycopy.} = object of BndArray1OfSphere


