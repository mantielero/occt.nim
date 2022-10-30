# PROVIDES: ConvertCosAndSinEvalFunction ConvertParameterisationType ConvertSequenceOfArray1OfPoles2d ConvertCompBezierCurves2dToBSplineCurve2d ConvertCompBezierCurvesToBSplineCurve ConvertCompPolynomialToPoles ConvertConicToBSplineCurve ConvertElementarySurfaceToBSplineSurface ConvertGridPolynomialToPoles
# DEPENDS:  NCollectionSequence[Handle[TColgpHArray1OfPnt]] ConvertConicToBSplineCurve ConvertElementarySurfaceToBSplineSurface ConvertElementarySurfaceToBSplineSurface ConvertConicToBSplineCurve ConvertConicToBSplineCurve ConvertConicToBSplineCurve ConvertElementarySurfaceToBSplineSurface ConvertElementarySurfaceToBSplineSurface

import tkmath/convert/convert_types
import tkernel/ncollection/ncollection_types
import tkernel/standard/standard_types
type
  ConvertCosAndSinEvalFunction* = proc (a1: cfloat; a2: cint; a3: TColgpArray1OfPnt2d;
                                     a4: TColStdArray1OfReal;
                                     a5: ptr TColStdArray1OfInteger;
                                     result: array[2, cfloat]): void {.cdecl.}

  ConvertParameterisationType* {.size: sizeof(cint),
                                importcpp: "Convert_ParameterisationType",
                                header: "Convert_ParameterisationType.hxx".} = enum
    convertTgtThetaOver2, convertTgtThetaOver21, convertTgtThetaOver22,
    convertTgtThetaOver23, convertTgtThetaOver24, convertQuasiAngular,
    convertRationalC1, convertPolynomial

  ConvertSequenceOfArray1OfPoles2d* = TColgpSequenceOfArray1OfPnt2d

  ConvertCompBezierCurves2dToBSplineCurve2d* {.
      importcpp: "Convert_CompBezierCurves2dToBSplineCurve2d",
      header: "Convert_CompBezierCurves2dToBSplineCurve2d.hxx", bycopy.} = object 

  ConvertCompBezierCurvesToBSplineCurve* {.
      importcpp: "Convert_CompBezierCurvesToBSplineCurve",
      header: "Convert_CompBezierCurvesToBSplineCurve.hxx", bycopy.} = object 

  ConvertCompPolynomialToPoles* {.importcpp: "Convert_CompPolynomialToPoles",
                                 header: "Convert_CompPolynomialToPoles.hxx",
                                 bycopy.} = object 

  ConvertConicToBSplineCurve* {.importcpp: "Convert_ConicToBSplineCurve",
                               header: "Convert_ConicToBSplineCurve.hxx", bycopy.} = object of RootObj 

  ConvertElementarySurfaceToBSplineSurface* {.
      importcpp: "Convert_ElementarySurfaceToBSplineSurface",
      header: "Convert_ElementarySurfaceToBSplineSurface.hxx", bycopy.} = object of RootObj

  ConvertGridPolynomialToPoles* {.importcpp: "Convert_GridPolynomialToPoles",
                                 header: "Convert_GridPolynomialToPoles.hxx",
                                 bycopy.} = object 

  ConvertSequenceOfArray1OfPoles* = NCollectionSequence[Handle[TColgpHArray1OfPnt]]

  ConvertCircleToBSplineCurve* {.importcpp: "Convert_CircleToBSplineCurve",
                                header: "Convert_CircleToBSplineCurve.hxx", bycopy.} = object of ConvertConicToBSplineCurve 

  ConvertConeToBSplineSurface* {.importcpp: "Convert_ConeToBSplineSurface",
                                header: "Convert_ConeToBSplineSurface.hxx", bycopy.} = object of ConvertElementarySurfaceToBSplineSurface 

  ConvertCylinderToBSplineSurface* {.importcpp: "Convert_CylinderToBSplineSurface", header: "Convert_CylinderToBSplineSurface.hxx",
                                    bycopy.} = object of ConvertElementarySurfaceToBSplineSurface 

  ConvertEllipseToBSplineCurve* {.importcpp: "Convert_EllipseToBSplineCurve",
                                 header: "Convert_EllipseToBSplineCurve.hxx",
                                 bycopy.} = object of ConvertConicToBSplineCurve 

  ConvertHyperbolaToBSplineCurve* {.importcpp: "Convert_HyperbolaToBSplineCurve", header: "Convert_HyperbolaToBSplineCurve.hxx",
                                   bycopy.} = object of ConvertConicToBSplineCurve 

  ConvertParabolaToBSplineCurve* {.importcpp: "Convert_ParabolaToBSplineCurve",
                                  header: "Convert_ParabolaToBSplineCurve.hxx",
                                  bycopy.} = object of ConvertConicToBSplineCurve 

  ConvertSphereToBSplineSurface* {.importcpp: "Convert_SphereToBSplineSurface",
                                  header: "Convert_SphereToBSplineSurface.hxx",
                                  bycopy.} = object of ConvertElementarySurfaceToBSplineSurface 

                                  bycopy.} = object of ConvertElementarySurfaceToBSplineSurface 
  ConvertTorusToBSplineSurface* {.importcpp: "Convert_TorusToBSplineSurface",
                                 header: "Convert_TorusToBSplineSurface.hxx",
                                 bycopy.} = object of ConvertElementarySurfaceToBSplineSurface 


