# PROVIDES:
# DEPENDS: TColgpArray1OfCirc2d TColgpArray1OfDir TColgpArray1OfDir2d TColgpArray1OfLin2d TColgpArray1OfPnt TColgpArray1OfPnt2d TColgpArray1OfVec TColgpArray1OfVec2d TColgpArray1OfXY TColgpArray1OfXYZ TColgpArray2OfCirc2d TColgpArray2OfDir TColgpArray2OfDir2d TColgpArray2OfLin2d TColgpArray2OfPnt TColgpArray2OfPnt2d TColgpArray2OfVec TColgpArray2OfVec2d TColgpArray2OfXY TColgpArray2OfXYZ TColgpSequenceOfDir TColgpSequenceOfDir2d TColgpSequenceOfPnt TColgpSequenceOfPnt2d TColgpSequenceOfVec TColgpSequenceOfVec2d TColgpSequenceOfXY TColgpSequenceOfXYZ

type
  TColgpHArray1OfCirc2d* {.importcpp: "TColgp_HArray1OfCirc2d",
                          header: "TColgp_HArray1OfCirc2d.hxx", bycopy.} = object of TColgpArray1OfCirc2d

type
  TColgpHArray1OfDir* {.importcpp: "TColgp_HArray1OfDir",
                       header: "TColgp_HArray1OfDir.hxx", bycopy.} = object of TColgpArray1OfDir

type
  TColgpHArray1OfDir2d* {.importcpp: "TColgp_HArray1OfDir2d",
                         header: "TColgp_HArray1OfDir2d.hxx", bycopy.} = object of TColgpArray1OfDir2d

type
  TColgpHArray1OfLin2d* {.importcpp: "TColgp_HArray1OfLin2d",
                         header: "TColgp_HArray1OfLin2d.hxx", bycopy.} = object of TColgpArray1OfLin2d

type
  TColgpHArray1OfPnt* {.importcpp: "TColgp_HArray1OfPnt",
                       header: "TColgp_HArray1OfPnt.hxx", bycopy.} = object of TColgpArray1OfPnt

type
  TColgpHArray1OfPnt2d* {.importcpp: "TColgp_HArray1OfPnt2d",
                         header: "TColgp_HArray1OfPnt2d.hxx", bycopy.} = object of TColgpArray1OfPnt2d

type
  TColgpHArray1OfVec* {.importcpp: "TColgp_HArray1OfVec",
                       header: "TColgp_HArray1OfVec.hxx", bycopy.} = object of TColgpArray1OfVec

type
  TColgpHArray1OfVec2d* {.importcpp: "TColgp_HArray1OfVec2d",
                         header: "TColgp_HArray1OfVec2d.hxx", bycopy.} = object of TColgpArray1OfVec2d

type
  TColgpHArray1OfXY* {.importcpp: "TColgp_HArray1OfXY",
                      header: "TColgp_HArray1OfXY.hxx", bycopy.} = object of TColgpArray1OfXY

type
  TColgpHArray1OfXYZ* {.importcpp: "TColgp_HArray1OfXYZ",
                       header: "TColgp_HArray1OfXYZ.hxx", bycopy.} = object of TColgpArray1OfXYZ

type
  TColgpHArray2OfCirc2d* {.importcpp: "TColgp_HArray2OfCirc2d",
                          header: "TColgp_HArray2OfCirc2d.hxx", bycopy.} = object of TColgpArray2OfCirc2d

type
  TColgpHArray2OfDir* {.importcpp: "TColgp_HArray2OfDir",
                       header: "TColgp_HArray2OfDir.hxx", bycopy.} = object of TColgpArray2OfDir

type
  TColgpHArray2OfDir2d* {.importcpp: "TColgp_HArray2OfDir2d",
                         header: "TColgp_HArray2OfDir2d.hxx", bycopy.} = object of TColgpArray2OfDir2d

type
  TColgpHArray2OfLin2d* {.importcpp: "TColgp_HArray2OfLin2d",
                         header: "TColgp_HArray2OfLin2d.hxx", bycopy.} = object of TColgpArray2OfLin2d

type
  TColgpHArray2OfPnt* {.importcpp: "TColgp_HArray2OfPnt",
                       header: "TColgp_HArray2OfPnt.hxx", bycopy.} = object of TColgpArray2OfPnt

type
  TColgpHArray2OfPnt2d* {.importcpp: "TColgp_HArray2OfPnt2d",
                         header: "TColgp_HArray2OfPnt2d.hxx", bycopy.} = object of TColgpArray2OfPnt2d

type
  TColgpHArray2OfVec* {.importcpp: "TColgp_HArray2OfVec",
                       header: "TColgp_HArray2OfVec.hxx", bycopy.} = object of TColgpArray2OfVec

type
  TColgpHArray2OfVec2d* {.importcpp: "TColgp_HArray2OfVec2d",
                         header: "TColgp_HArray2OfVec2d.hxx", bycopy.} = object of TColgpArray2OfVec2d

type
  TColgpHArray2OfXY* {.importcpp: "TColgp_HArray2OfXY",
                      header: "TColgp_HArray2OfXY.hxx", bycopy.} = object of TColgpArray2OfXY

type
  TColgpHArray2OfXYZ* {.importcpp: "TColgp_HArray2OfXYZ",
                       header: "TColgp_HArray2OfXYZ.hxx", bycopy.} = object of TColgpArray2OfXYZ

type
  TColgpHSequenceOfDir* {.importcpp: "TColgp_HSequenceOfDir",
                         header: "TColgp_HSequenceOfDir.hxx", bycopy.} = object of TColgpSequenceOfDir

type
  TColgpHSequenceOfDir2d* {.importcpp: "TColgp_HSequenceOfDir2d",
                           header: "TColgp_HSequenceOfDir2d.hxx", bycopy.} = object of TColgpSequenceOfDir2d

type
  TColgpHSequenceOfPnt* {.importcpp: "TColgp_HSequenceOfPnt",
                         header: "TColgp_HSequenceOfPnt.hxx", bycopy.} = object of TColgpSequenceOfPnt

type
  TColgpHSequenceOfPnt2d* {.importcpp: "TColgp_HSequenceOfPnt2d",
                           header: "TColgp_HSequenceOfPnt2d.hxx", bycopy.} = object of TColgpSequenceOfPnt2d

type
  TColgpHSequenceOfVec* {.importcpp: "TColgp_HSequenceOfVec",
                         header: "TColgp_HSequenceOfVec.hxx", bycopy.} = object of TColgpSequenceOfVec

type
  TColgpHSequenceOfVec2d* {.importcpp: "TColgp_HSequenceOfVec2d",
                           header: "TColgp_HSequenceOfVec2d.hxx", bycopy.} = object of TColgpSequenceOfVec2d

type
  TColgpHSequenceOfXY* {.importcpp: "TColgp_HSequenceOfXY",
                        header: "TColgp_HSequenceOfXY.hxx", bycopy.} = object of TColgpSequenceOfXY

                        header: "TColgp_HSequenceOfXY.hxx", bycopy.} = object of TColgpSequenceOfXY
type
  TColgpHSequenceOfXYZ* {.importcpp: "TColgp_HSequenceOfXYZ",
                         header: "TColgp_HSequenceOfXYZ.hxx", bycopy.} = object of TColgpSequenceOfXYZ


