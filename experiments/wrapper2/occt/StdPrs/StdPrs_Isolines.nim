##  Created on: 2014-10-14
##  Created by: Anton POLETAEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of Poly_Triangle"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopLoc_Location"
type
  StdPrsIsolines* {.importcpp: "StdPrs_Isolines", header: "StdPrs_Isolines.hxx",
                   bycopy.} = object of Prs3dRoot ## ! Computes isolines presentation for a TopoDS face.
                                             ## ! This method chooses proper version of isoline builder algorithm : on triangulation
                                             ## ! or surface depending on the flag passed from Prs3d_Drawer attributes.
                                             ## ! This method is a default way to display isolines for a given TopoDS face.
                                             ## ! @param thePresentation [in] the presentation.
                                             ## ! @param theFace [in] the face.
                                             ## ! @param theDrawer [in] the display settings.
                                             ## ! @param theDeflection [in] the deflection for isolines-on-surface version.
                                             ## ! Auxiliary structure defining 3D point on isoline.
                                             ## ! Computes isolines on surface.
                                             ## ! @param theSurface [in] the surface
                                             ## ! @param theDrawer [in] the display settings
                                             ## ! @param theDeflection [in] the deflection value
                                             ## ! @param theUIsoParams [in] the parameters of u isolines to compute
                                             ## ! @param theVIsoParams [in] the parameters of v isolines to compute
                                             ## ! @param theUPolylines [out] the sequence of result polylines
                                             ## ! @param theVPolylines [out] the sequence of result polylines


proc add*(thePresentation: Handle[Prs3dPresentation]; theFace: TopoDS_Face;
         theDrawer: Handle[Prs3dDrawer]; theDeflection: cfloat) {.
    importcpp: "StdPrs_Isolines::Add(@)", header: "StdPrs_Isolines.hxx".}
proc add*(theFace: TopoDS_Face; theDrawer: Handle[Prs3dDrawer];
         theDeflection: cfloat; theUPolylines: var Prs3dNListOfSequenceOfPnt;
         theVPolylines: var Prs3dNListOfSequenceOfPnt) {.
    importcpp: "StdPrs_Isolines::Add(@)", header: "StdPrs_Isolines.hxx".}
proc addOnTriangulation*(thePresentation: Handle[Prs3dPresentation];
                        theFace: TopoDS_Face; theDrawer: Handle[Prs3dDrawer]) {.
    importcpp: "StdPrs_Isolines::AddOnTriangulation(@)",
    header: "StdPrs_Isolines.hxx".}
proc addOnTriangulation*(theFace: TopoDS_Face; theDrawer: Handle[Prs3dDrawer];
                        theUPolylines: var Prs3dNListOfSequenceOfPnt;
                        theVPolylines: var Prs3dNListOfSequenceOfPnt) {.
    importcpp: "StdPrs_Isolines::AddOnTriangulation(@)",
    header: "StdPrs_Isolines.hxx".}
proc addOnTriangulation*(thePresentation: Handle[Prs3dPresentation];
                        theTriangulation: Handle[PolyTriangulation];
                        theSurface: Handle[GeomSurface];
                        theLocation: TopLocLocation;
                        theDrawer: Handle[Prs3dDrawer];
                        theUIsoParams: TColStdSequenceOfReal;
                        theVIsoParams: TColStdSequenceOfReal) {.
    importcpp: "StdPrs_Isolines::AddOnTriangulation(@)",
    header: "StdPrs_Isolines.hxx".}
proc addOnSurface*(thePresentation: Handle[Prs3dPresentation];
                  theFace: TopoDS_Face; theDrawer: Handle[Prs3dDrawer];
                  theDeflection: cfloat) {.
    importcpp: "StdPrs_Isolines::AddOnSurface(@)", header: "StdPrs_Isolines.hxx".}
proc addOnSurface*(theFace: TopoDS_Face; theDrawer: Handle[Prs3dDrawer];
                  theDeflection: cfloat;
                  theUPolylines: var Prs3dNListOfSequenceOfPnt;
                  theVPolylines: var Prs3dNListOfSequenceOfPnt) {.
    importcpp: "StdPrs_Isolines::AddOnSurface(@)", header: "StdPrs_Isolines.hxx".}
proc addOnSurface*(thePresentation: Handle[Prs3dPresentation];
                  theSurface: Handle[BRepAdaptorHSurface];
                  theDrawer: Handle[Prs3dDrawer]; theDeflection: cfloat;
                  theUIsoParams: TColStdSequenceOfReal;
                  theVIsoParams: TColStdSequenceOfReal) {.
    importcpp: "StdPrs_Isolines::AddOnSurface(@)", header: "StdPrs_Isolines.hxx".}
proc uVIsoParameters*(theFace: TopoDS_Face; theNbIsoU: cint; theNbIsoV: cint;
                     theUVLimit: cfloat; theUIsoParams: var TColStdSequenceOfReal;
                     theVIsoParams: var TColStdSequenceOfReal; theUmin: var cfloat;
                     theUmax: var cfloat; theVmin: var cfloat; theVmax: var cfloat) {.
    importcpp: "StdPrs_Isolines::UVIsoParameters(@)",
    header: "StdPrs_Isolines.hxx".}
type
  StdPrsIsolinesPntOnIso* {.importcpp: "StdPrs_Isolines::PntOnIso",
                           header: "StdPrs_Isolines.hxx", bycopy.} = object
    pnt* {.importc: "Pnt".}: Pnt ## !< 3D point
    param* {.importc: "Param".}: cdouble ## !< parameter along the line (for sorting)

  StdPrsIsolinesSegOnIso* {.importcpp: "StdPrs_Isolines::SegOnIso",
                           header: "StdPrs_Isolines.hxx", bycopy.} = object
    pnts* {.importc: "Pnts".}: array[2, StdPrsIsolinesPntOnIso]


converter `pntOnIso*`*(this: var StdPrsIsolinesSegOnIso): ptr StdPrsIsolinesPntOnIso {.
    importcpp: "SegOnIso::operator PntOnIso*", header: "StdPrs_Isolines.hxx".}
converter `constPntOnIso*`*(this: StdPrsIsolinesSegOnIso): ptr StdPrsIsolinesPntOnIso {.
    noSideEffect, importcpp: "SegOnIso::operator constPntOnIso*",
    header: "StdPrs_Isolines.hxx".}
proc `<`*(this: StdPrsIsolinesSegOnIso; theOther: StdPrsIsolinesSegOnIso): bool {.
    noSideEffect, importcpp: "(# < #)", header: "StdPrs_Isolines.hxx".}

























