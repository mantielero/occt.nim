# PROVIDES:
# DEPENDS:  NCollectionArray1[gp_Circ2d]  NCollectionArray1[gp_Dir]  NCollectionArray1[gp_Dir2d]  NCollectionArray1[gp_Lin2d]  NCollectionArray1[gp_Pnt]  NCollectionArray1[gp_Pnt2d]  NCollectionArray1[gp_Vec]  NCollectionArray1[gp_Vec2d]  NCollectionArray1[gp_Xy]  NCollectionArray1[gp_Xyz]  NCollectionArray2[gp_Circ2d]  NCollectionArray2[gp_Dir]  NCollectionArray2[gp_Dir2d]  NCollectionArray2[gp_Lin2d]  NCollectionArray2[gp_Pnt]  NCollectionArray2[gp_Pnt2d]  NCollectionArray2[gp_Vec]  NCollectionArray2[gp_Vec2d]  NCollectionArray2[gp_Xy]  NCollectionArray2[gp_Xyz]  NCollectionSequence[  NCollectionSequence[gp_Ax1]  NCollectionSequence[gp_Dir]  NCollectionSequence[gp_Dir2d]  NCollectionSequence[gp_Pnt]  NCollectionSequence[gp_Pnt2d]  NCollectionSequence[gp_Vec]  NCollectionSequence[gp_Vec2d]  NCollectionSequence[gp_Xy]  NCollectionSequence[gp_Xyz] TColgpArray1OfCirc2d TColgpArray1OfDir TColgpArray1OfDir2d TColgpArray1OfLin2d TColgpArray1OfPnt TColgpArray1OfPnt2d TColgpArray1OfVec TColgpArray1OfVec2d TColgpArray1OfXY TColgpArray1OfXYZ TColgpArray2OfCirc2d TColgpArray2OfDir TColgpArray2OfDir2d TColgpArray2OfLin2d TColgpArray2OfPnt TColgpArray2OfPnt2d TColgpArray2OfVec TColgpArray2OfVec2d TColgpArray2OfXY TColgpArray2OfXYZ TColgpSequenceOfDir TColgpSequenceOfDir2d TColgpSequenceOfPnt TColgpSequenceOfPnt2d TColgpSequenceOfVec TColgpSequenceOfVec2d TColgpSequenceOfXY TColgpSequenceOfXYZ

import ../gp/gp_types
#import ../tcolstd/tcolstd_types
import ../ncollection/ncollection_types
import ../standard/standard_types
type
  TColgpArray1OfCirc2d* = NCollectionArray1[gp_Circ2d]

  TColgpArray1OfDir* = NCollectionArray1[gp_Dir]

  TColgpArray1OfDir2d* = NCollectionArray1[gp_Dir2d]

  TColgpArray1OfLin2d* = NCollectionArray1[gp_Lin2d]

  TColgpArray1OfPnt* = NCollectionArray1[gp_Pnt]

  TColgpArray1OfPnt2d* = NCollectionArray1[gp_Pnt2d]

  TColgpArray1OfVec* = NCollectionArray1[gp_Vec]

  TColgpArray1OfVec2d* = NCollectionArray1[gp_Vec2d]

  TColgpArray1OfXY* = NCollectionArray1[gp_Xy]

  TColgpArray1OfXYZ* = NCollectionArray1[gp_Xyz]

  TColgpArray2OfCirc2d* = NCollectionArray2[gp_Circ2d]

  TColgpArray2OfDir* = NCollectionArray2[gp_Dir]

  TColgpArray2OfDir2d* = NCollectionArray2[gp_Dir2d]

  TColgpArray2OfLin2d* = NCollectionArray2[gp_Lin2d]

  TColgpArray2OfPnt* = NCollectionArray2[gp_Pnt]

  TColgpArray2OfPnt2d* = NCollectionArray2[gp_Pnt2d]

  TColgpArray2OfVec* = NCollectionArray2[gp_Vec]

  TColgpArray2OfVec2d* = NCollectionArray2[gp_Vec2d]

  TColgpArray2OfXY* = NCollectionArray2[gp_Xy]

  TColgpArray2OfXYZ* = NCollectionArray2[gp_Xyz]

  TColgpSequenceOfArray1OfPnt2d* = NCollectionSequence[
      Handle[TColgpHArray1OfPnt2d]]

  TColgpSequenceOfAx1* = NCollectionSequence[gp_Ax1]

  TColgpSequenceOfDir* = NCollectionSequence[gp_Dir]

  TColgpSequenceOfDir2d* = NCollectionSequence[gp_Dir2d]

  TColgpSequenceOfPnt* = NCollectionSequence[gp_Pnt]

  TColgpSequenceOfPnt2d* = NCollectionSequence[gp_Pnt2d]

  TColgpSequenceOfVec* = NCollectionSequence[gp_Vec]

  TColgpSequenceOfVec2d* = NCollectionSequence[gp_Vec2d]

  TColgpSequenceOfXY* = NCollectionSequence[gp_Xy]

  TColgpSequenceOfXYZ* = NCollectionSequence[gp_Xyz]

  TColgpHArray1OfCirc2d* {.importcpp: "TColgp_HArray1OfCirc2d",
                          header: "TColgp_HArray1OfCirc2d.hxx", bycopy.} = object of TColgpArray1OfCirc2d

  TColgpHArray1OfDir* {.importcpp: "TColgp_HArray1OfDir",
                       header: "TColgp_HArray1OfDir.hxx", bycopy.} = object of TColgpArray1OfDir

  TColgpHArray1OfDir2d* {.importcpp: "TColgp_HArray1OfDir2d",
                         header: "TColgp_HArray1OfDir2d.hxx", bycopy.} = object of TColgpArray1OfDir2d

  TColgpHArray1OfLin2d* {.importcpp: "TColgp_HArray1OfLin2d",
                         header: "TColgp_HArray1OfLin2d.hxx", bycopy.} = object of TColgpArray1OfLin2d

  TColgpHArray1OfPnt* {.importcpp: "TColgp_HArray1OfPnt",
                       header: "TColgp_HArray1OfPnt.hxx", bycopy.} = object of TColgpArray1OfPnt

  TColgpHArray1OfPnt2d* {.importcpp: "TColgp_HArray1OfPnt2d",
                         header: "TColgp_HArray1OfPnt2d.hxx", bycopy.} = object of TColgpArray1OfPnt2d

  TColgpHArray1OfVec* {.importcpp: "TColgp_HArray1OfVec",
                       header: "TColgp_HArray1OfVec.hxx", bycopy.} = object of TColgpArray1OfVec

  TColgpHArray1OfVec2d* {.importcpp: "TColgp_HArray1OfVec2d",
                         header: "TColgp_HArray1OfVec2d.hxx", bycopy.} = object of TColgpArray1OfVec2d

  TColgpHArray1OfXY* {.importcpp: "TColgp_HArray1OfXY",
                      header: "TColgp_HArray1OfXY.hxx", bycopy.} = object of TColgpArray1OfXY

  TColgpHArray1OfXYZ* {.importcpp: "TColgp_HArray1OfXYZ",
                       header: "TColgp_HArray1OfXYZ.hxx", bycopy.} = object of TColgpArray1OfXYZ

  TColgpHArray2OfCirc2d* {.importcpp: "TColgp_HArray2OfCirc2d",
                          header: "TColgp_HArray2OfCirc2d.hxx", bycopy.} = object of TColgpArray2OfCirc2d

  TColgpHArray2OfDir* {.importcpp: "TColgp_HArray2OfDir",
                       header: "TColgp_HArray2OfDir.hxx", bycopy.} = object of TColgpArray2OfDir

  TColgpHArray2OfDir2d* {.importcpp: "TColgp_HArray2OfDir2d",
                         header: "TColgp_HArray2OfDir2d.hxx", bycopy.} = object of TColgpArray2OfDir2d

  TColgpHArray2OfLin2d* {.importcpp: "TColgp_HArray2OfLin2d",
                         header: "TColgp_HArray2OfLin2d.hxx", bycopy.} = object of TColgpArray2OfLin2d

  TColgpHArray2OfPnt* {.importcpp: "TColgp_HArray2OfPnt",
                       header: "TColgp_HArray2OfPnt.hxx", bycopy.} = object of TColgpArray2OfPnt

  TColgpHArray2OfPnt2d* {.importcpp: "TColgp_HArray2OfPnt2d",
                         header: "TColgp_HArray2OfPnt2d.hxx", bycopy.} = object of TColgpArray2OfPnt2d

  TColgpHArray2OfVec* {.importcpp: "TColgp_HArray2OfVec",
                       header: "TColgp_HArray2OfVec.hxx", bycopy.} = object of TColgpArray2OfVec

  TColgpHArray2OfVec2d* {.importcpp: "TColgp_HArray2OfVec2d",
                         header: "TColgp_HArray2OfVec2d.hxx", bycopy.} = object of TColgpArray2OfVec2d

  TColgpHArray2OfXY* {.importcpp: "TColgp_HArray2OfXY",
                      header: "TColgp_HArray2OfXY.hxx", bycopy.} = object of TColgpArray2OfXY

  TColgpHArray2OfXYZ* {.importcpp: "TColgp_HArray2OfXYZ",
                       header: "TColgp_HArray2OfXYZ.hxx", bycopy.} = object of TColgpArray2OfXYZ

  TColgpHSequenceOfDir* {.importcpp: "TColgp_HSequenceOfDir",
                         header: "TColgp_HSequenceOfDir.hxx", bycopy.} = object of TColgpSequenceOfDir

  TColgpHSequenceOfDir2d* {.importcpp: "TColgp_HSequenceOfDir2d",
                           header: "TColgp_HSequenceOfDir2d.hxx", bycopy.} = object of TColgpSequenceOfDir2d

  TColgpHSequenceOfPnt* {.importcpp: "TColgp_HSequenceOfPnt",
                         header: "TColgp_HSequenceOfPnt.hxx", bycopy.} = object of TColgpSequenceOfPnt

  TColgpHSequenceOfPnt2d* {.importcpp: "TColgp_HSequenceOfPnt2d",
                           header: "TColgp_HSequenceOfPnt2d.hxx", bycopy.} = object of TColgpSequenceOfPnt2d

  TColgpHSequenceOfVec* {.importcpp: "TColgp_HSequenceOfVec",
                         header: "TColgp_HSequenceOfVec.hxx", bycopy.} = object of TColgpSequenceOfVec

  TColgpHSequenceOfVec2d* {.importcpp: "TColgp_HSequenceOfVec2d",
                           header: "TColgp_HSequenceOfVec2d.hxx", bycopy.} = object of TColgpSequenceOfVec2d

  TColgpHSequenceOfXY* {.importcpp: "TColgp_HSequenceOfXY",
                        header: "TColgp_HSequenceOfXY.hxx", bycopy.} = object of TColgpSequenceOfXY
                        #header: "TColgp_HSequenceOfXY.hxx", bycopy.} = object of TColgpSequenceOfXY

                        #header: "TColgp_HSequenceOfXY.hxx", bycopy.} = object of TColgpSequenceOfXY
  TColgpHSequenceOfXYZ* {.importcpp: "TColgp_HSequenceOfXYZ",
                         header: "TColgp_HSequenceOfXYZ.hxx", bycopy.} = object of TColgpSequenceOfXYZ


