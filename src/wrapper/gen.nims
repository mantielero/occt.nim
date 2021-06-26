# https://dev.opencascade.org/doc/refman/html/index.html
# https://forum.freecadweb.org/viewtopic.php?t=20975

#[
- FoundationClasses [FreeCAD]
    - TKernel
        Package BSplCLib
        Package BSplSLib
        Package BVH
        Package Bnd
        Package CSLib
        Package Convert
        Package ElCLib
        Package ElSLib
        Package Expr
        Package ExprIntrp
        Package GeomAbs
        Package PLib
        Package Poly
        Package Precision
        [X] Package TColgp
        Package TopLoc
        [X] Package gp
        Package math

    - TKMath
        Package FSD
        Package Message
        Package NCollection
        Package OSD
        Package Plugin
        Package Quantity
        Package Resource
        Package Standard
        Package StdFail
        Package Storage
        [ ] Package TColStd
        Package TCollection
        Package TShort
        Package Units
        Package UnitsAPI
]#

# FOUNDATION CLASSES: https://dev.opencascade.org/doc/refman/html/module_foundationclasses.html
# - TKernel
exec "nimgen gp.cfg"
exec "nimgen tcolgp.cfg"

# -TKMath



#[
- ModelingData [FreeCAD]
    - Toolkit TKBRep
        - [X] Package BRep
        Package BRepAdaptor
        Package BRepLProp
        Package BRepTools
        Package BinTools
        Package TopExp
        Package TopTools
        - [X] Package TopoDS

    - Toolkit TKG2d
        Package Adaptor2d
        Package Geom2d
        Package Geom2dAdaptor
        Package Geom2dEvaluator
        Package Geom2dLProp
        Package LProp
        Package TColGeom2d

    - Toolkit TKG3d
        Package Adaptor3d
        Package AdvApprox
        Package GProp
        Package Geom
        Package GeomAdaptor
        Package GeomEvaluator
        Package GeomLProp
        Package LProp3d
        Package TColGeom
        Package TopAbs

    - Toolkit TKGeomBase
        Package AdvApp2Var
        Package AppCont
        Package AppDef
        Package AppParCurves
        Package Approx
        Package BndLib
        Package CPnts
        Package Extrema
        Package FEmTool
        - [X] Package GC
        Package GCE2d
        Package GCPnts
        Package Geom2dConvert
        Package GeomConvert
        Package GeomLib
        Package GeomProjLib
        Package GeomTools
        Package Hermit
        Package IntAna
        Package IntAna2d
        Package ProjLib
        Package gce


]#


# MODELING DATA: https://dev.opencascade.org/doc/refman/html/module_modelingdata.html
# - TKBRep
exec "nimgen brep.cfg"   # FIXME: BRep_ListIteratorOfListOfCurveRepresentation.hxx, BRep_ListIteratorOfListOfPointRepresentation.hxx
exec "nimgen topods.cfg" # FIXME: TopoDS_ListIteratorOfListOfShape.hxx

# - TKG2d

# - TKG3d

# - TKGeomBase
exec "nimgen gc.cfg"


# MODELING ALGORITHMS: https://dev.opencascade.org/doc/refman/html/module_modelingalgorithms.html
#[
- ModelingAlgorithms [FreeCAD]
    - TKGeomAlgo 
    - TKTopAlgo
    - TKPrim
    - TKBO
    - TKBool
    - TKHLR
    - TKFillet
    - TKOffset
    - TKFeat
    - TKMesh
    - TKXMesh
    - TKShHealing
]#

# tkPrim
exec "nimgen brepprim.cfg"
exec "nimgen brepprimapi.cfg"

# standard
# FIXME: Standard_DefineAlloc.hxx, Standard_DefineException.hxx, Standard_Macro.hxx
# FIXME: Standard_PrimitiveTypes.hxx, Standard_Size.hxx, Standard_Stream.hxx
# FIXME: Standard_WarningDisableFunctionCast.hxx, Standard_WarningsDisable.hxx
# FIXME: Standard_WarningsRestore.hxx
exec "nimgen standard.cfg" # FIXME: Standard_Boolean.hxx, Standard_Byte.hxx



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