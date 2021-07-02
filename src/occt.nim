{.passL: "-lTKBO -lTKSTEP -lTKPrim -lTKSTEPAttr -lTKSTEP209 -lTKSTEPBase -lTKXSBase -lTKShHealing -lTKTopAlgo -lTKGeomAlgo -lTKBRep -lTKGeomBase -lTKG3d -lTKG2d -lTKMath -lTKernel".}
{.passC:"-I/usr/include/opencascade" .}

#[
# https://dev.opencascade.org/doc/refman/html/index.html
# https://forum.freecadweb.org/viewtopic.php?t=20975
]#

import Standard/standard
export standard

# FOUNDATION CLASSES: https://dev.opencascade.org/doc/refman/html/module_foundationclasses.html
# - TKernel
# exec "nimgen BSplCLib
# exec "nimgen BSplSLib
# exec "nimgen BVH
# exec "nimgen Bnd
# exec "nimgen CSLib
# exec "nimgen Convert
# exec "nimgen ElCLib
import ElcLib/elclib
# exec "nimgen ElSLib
# exec "nimgen Expr
# exec "nimgen ExprIntrp
# exec "nimgen GeomAbs
# exec "nimgen PLib
# exec "nimgen Poly
# exec "nimgen Precision
# exec "nimgen tcolgp.cfg"
# exec "nimgen TopLoc
import gp/gp
export elclib, gp#, elclib
# exec "nimgen math

# -TKMath
# exec "nimgen FSD
# exec "nimgen Message
# exec "nimgen NCollection
# exec "nimgen OSD
# exec "nimgen Plugin
# exec "nimgen Quantity
# exec "nimgen Resource
# exec "nimgen Standard
# exec "nimgen StdFail
# exec "nimgen Storage
# exec "nimgen TColStd
# exec "nimgen TCollection
# exec "nimgen TShort
# exec "nimgen Units
# exec "nimgen UnitsAPI



# MODELING DATA: https://dev.opencascade.org/doc/refman/html/module_modelingdata.html
# - TKBRep
import BRep/BRep
export BRep
# exec "nimgen BRepAdaptor
# exec "nimgen BRepLProp
# exec "nimgen BRepTools
# exec "nimgen BinTools
# exec "nimgen TopExp
# exec "nimgen TopTools
import TopoDS/topods
export topods


# - TKG2d
# exec "nimgen Adaptor2d
# exec "nimgen Geom2d
# exec "nimgen Geom2dAdaptor
# exec "nimgen Geom2dEvaluator
# exec "nimgen Geom2dLProp
# exec "nimgen LProp
# exec "nimgen TColGeom2d

# - TKG3d
# exec "nimgen Adaptor3d
# exec "nimgen AdvApprox
# exec "nimgen GProp
import Geom/[geom_types, geom]
export geom_types, geom
# exec "nimgen GeomAdaptor
# exec "nimgen GeomEvaluator
# exec "nimgen GeomLProp
# exec "nimgen LProp3d
# exec "nimgen TColGeom
# exec "nimgen TopAbs

# - TKGeomBase
# exec "nimgen AdvApp2Var
# exec "nimgen AppCont
# exec "nimgen AppDef
# exec "nimgen AppParCurves
# exec "nimgen Approx
# exec "nimgen BndLib
# exec "nimgen CPnts
# exec "nimgen Extrema
# exec "nimgen FEmTool
import GC/gc
export gc
# exec "nimgen GCE2d
# exec "nimgen GCPnts
# exec "nimgen Geom2dConvert
# exec "nimgen GeomConvert
# exec "nimgen GeomLib
# exec "nimgen GeomProjLib
# exec "nimgen GeomTools
# exec "nimgen Hermit
# exec "nimgen IntAna
# exec "nimgen IntAna2d
# exec "nimgen ProjLib
# exec "nimgen gce


# MODELING ALGORITHMS: https://dev.opencascade.org/doc/refman/html/module_modelingalgorithms.html
# - TKBO
#[
# exec "nimgen BOPAlgo
# exec "nimgen BOPDS
# exec "nimgen BOPTools
# exec "nimgen BRepAlgoAPI
# exec "nimgen IntTools    
]#


# - TKBool
#[
# exec "nimgen BRepAlgo
# exec "nimgen BRepFill
# exec "nimgen BRepProj
# exec "nimgen TopOpeBRep
# exec "nimgen TopOpeBRepBuild
# exec "nimgen TopOpeBRepDS
# exec "nimgen TopOpeBRepTool
]#

# - TKFeat
#[

# exec "nimgen BRepFeat
# exec "nimgen LocOpe
]#

# - TKFillet
# exec "nimgen BRepBlend
import BRepFilletAPI/brepfilletapi
# exec "nimgen Blend
# exec "nimgen BlendFunc
# exec "nimgen ChFi2d
# exec "nimgen ChFi3d
# exec "nimgen ChFiDS
# exec "nimgen ChFiKPart
# exec "nimgen FilletSurf
export brepfilletapi

# - TKGeomAlgo
#include tkGeomBase/tkgeombase
#[
# exec "nimgen AppBlend
# exec "nimgen ApproxInt
# exec "nimgen FairCurve
# exec "nimgen GccAna
# exec "nimgen GccEnt
# exec "nimgen GccInt
# exec "nimgen Geom2dAPI
# exec "nimgen Geom2dGcc
# exec "nimgen Geom2dHatch
# exec "nimgen Geom2dInt
# exec "nimgen GeomAPI
# exec "nimgen GeomFill
# exec "nimgen GeomInt
# exec "nimgen GeomPlate
# exec "nimgen Hatch
# exec "nimgen HatchGen
# exec "nimgen IntCurve
# exec "nimgen IntCurveSurface
# exec "nimgen IntImp
# exec "nimgen IntImpParGen
# exec "nimgen IntPatch
# exec "nimgen IntPolyh
# exec "nimgen IntRes2d
# exec "nimgen IntStart
# exec "nimgen IntSurf
# exec "nimgen IntWalk
# exec "nimgen Intf
# exec "nimgen Law
# exec "nimgen LocalAnalysis
# exec "nimgen NLPlate
# exec "nimgen Plate
# exec "nimgen TopClass
# exec "nimgen TopTrans
]#


# - TKHLR
#[
# exec "nimgen Contap
# exec "nimgen HLRAlgo
# exec "nimgen HLRAppli
# exec "nimgen HLRBRep
# exec "nimgen HLRTopoBRep
# exec "nimgen Intrv
# exec "nimgen TopBas
# exec "nimgen TopCnx
]#

# - TKMesh
#[
# exec "nimgen BRepMesh
# exec "nimgen BRepMeshData
# exec "nimgen IMeshData
# exec "nimgen IMeshTools
]#

# - TKOffset
#[
# exec "nimgen BRepOffset
# exec "nimgen BRepOffsetAPI
# exec "nimgen BiTgte
# exec "nimgen Draft

]#

# - TKPrim
# exec "nimgen BRepPreviewAPI
import BRepPrim/brepprim
export brepprim
import BRepPrimAPI/brepprimapi
export brepprimapi
# exec "nimgen BRepPrimAPI
# exec "nimgen BRepSweep
# exec "nimgen Sweep


# - TKShHealing
# exec "nimgen ShapeAlgo
# exec "nimgen ShapeAnalysis
# exec "nimgen ShapeBuild
# exec "nimgen ShapeConstruct
# exec "nimgen ShapeCustom
# exec "nimgen ShapeExtend
# exec "nimgen ShapeFix
# exec "nimgen ShapeProcess
# exec "nimgen ShapeProcessAPI
# exec "nimgen ShapeUpgrade

# - TKTopAlgo
# exec "nimgen BRepApprox
# exec "nimgen BRepBndLib
import BRepBuilderAPI/brepbuilderapi
export brepbuilderapi
# exec "nimgen BRepCheck
# exec "nimgen BRepClass
# exec "nimgen BRepClass3d
# exec "nimgen BRepExtrema
# exec "nimgen BRepGProp
# exec "nimgen BRepIntCurveSurface
# exec "nimgen BRepLib
# exec "nimgen BRepMAT2d
# exec "nimgen BRepTopAdaptor
# exec "nimgen Bisector
# exec "nimgen IntCurvesFace
# exec "nimgen MAT
# exec "nimgen MAT2d

# - TKXMesh
#[
# exec "nimgen XBRepMesh
]#






#[
- Visualization 
    TKService 
    TKV3d 
    TKOpenGl 
    TKMeshVS 
    TKIVtk 
    TKD3DHost
- ApplicationFramework 
    TKCDF
     TKLCAF
     TKCAF
     TKBinL
     TKXmlL
     TKBin
     TKXml
     TKStdL 
     TKStd 
     TKTObj 
     TKBinTObj 
     TKXmlTObj 
     TKVCAF
- DataExchange 
    TKXSBase 
    TKSTEPBase 
    TKSTEPAttr 
    TKSTEP209 
    TKSTEP 
    TKIGES 
    TKXCAF 
    TKXDEIGES 
    TKXDESTEP 
    TKSTL 
    TKVRML 
    TKXmlXCAF 
    TKBinXCAF
- Draw
    TKDraw 
    TKTopTest 
    TKViewerTest 
    TKXSDRAW 
    TKDCAF 
    TKXDEDRAW 
    TKTObjDRAW 
    TKQADraw 
    TKIVtkDraw 
    DRAWEXE
]#

# standard
# FIXME: Standard_DefineAlloc.hxx, Standard_DefineException.hxx, Standard_Macro.hxx
# FIXME: Standard_PrimitiveTypes.hxx, Standard_Size.hxx, Standard_Stream.hxx
# FIXME: Standard_WarningDisableFunctionCast.hxx, Standard_WarningsDisable.hxx
# FIXME: Standard_WarningsRestore.hxx
#exec "nimgen standard.cfg" # FIXME: Standard_Boolean.hxx, Standard_Byte.hxx    
