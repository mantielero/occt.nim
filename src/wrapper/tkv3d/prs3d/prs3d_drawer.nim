import prs3d_types
import ../tkv3d/graphic3d/graphic3d_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ../../tkmath/geomabs/geomabs_types



##  Copyright (c) 1995-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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





proc newPrs3dDrawer*(): Prs3dDrawer {.cdecl, constructor,
                                   importcpp: "Prs3d_Drawer(@)", header: "Prs3d_Drawer.hxx".}
proc setTypeOfDeflection*(this: var Prs3dDrawer;
                         theTypeOfDeflection: AspectTypeOfDeflection) {.cdecl,
    importcpp: "SetTypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc typeOfDeflection*(this: Prs3dDrawer): AspectTypeOfDeflection {.noSideEffect,
    cdecl, importcpp: "TypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc hasOwnTypeOfDeflection*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnTypeOfDeflection", header: "Prs3d_Drawer.hxx".}
proc setMaximalChordialDeviation*(this: var Prs3dDrawer;
                                 theChordialDeviation: cfloat) {.cdecl,
    importcpp: "SetMaximalChordialDeviation", header: "Prs3d_Drawer.hxx".}
proc maximalChordialDeviation*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalChordialDeviation", header: "Prs3d_Drawer.hxx".}
proc hasOwnMaximalChordialDeviation*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnMaximalChordialDeviation", header: "Prs3d_Drawer.hxx".}
proc setTypeOfHLR*(this: var Prs3dDrawer; theTypeOfHLR: Prs3dTypeOfHLR) {.cdecl,
    importcpp: "SetTypeOfHLR", header: "Prs3d_Drawer.hxx".}
proc typeOfHLR*(this: var Prs3dDrawer): Prs3dTypeOfHLR {.cdecl,
    importcpp: "TypeOfHLR", header: "Prs3d_Drawer.hxx".}
proc hasOwnTypeOfHLR*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnTypeOfHLR", header: "Prs3d_Drawer.hxx".}
proc setMaximalParameterValue*(this: var Prs3dDrawer; theValue: cfloat) {.cdecl,
    importcpp: "SetMaximalParameterValue", header: "Prs3d_Drawer.hxx".}
proc maximalParameterValue*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
    importcpp: "MaximalParameterValue", header: "Prs3d_Drawer.hxx".}
proc hasOwnMaximalParameterValue*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnMaximalParameterValue", header: "Prs3d_Drawer.hxx".}
proc setIsoOnPlane*(this: var Prs3dDrawer; theIsEnabled: bool) {.cdecl,
    importcpp: "SetIsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc isoOnPlane*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
                                        importcpp: "IsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc hasOwnIsoOnPlane*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnIsoOnPlane", header: "Prs3d_Drawer.hxx".}
proc isoOnTriangulation*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "IsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc hasOwnIsoOnTriangulation*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnIsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc setIsoOnTriangulation*(this: var Prs3dDrawer; theToEnable: bool) {.cdecl,
    importcpp: "SetIsoOnTriangulation", header: "Prs3d_Drawer.hxx".}
proc setDiscretisation*(this: var Prs3dDrawer; theValue: cint) {.cdecl,
    importcpp: "SetDiscretisation", header: "Prs3d_Drawer.hxx".}
proc discretisation*(this: Prs3dDrawer): cint {.noSideEffect, cdecl,
    importcpp: "Discretisation", header: "Prs3d_Drawer.hxx".}
proc hasOwnDiscretisation*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDiscretisation", header: "Prs3d_Drawer.hxx".}
proc setDeviationCoefficient*(this: var Prs3dDrawer; theCoefficient: cfloat) {.cdecl,
    importcpp: "SetDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc deviationCoefficient*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
    importcpp: "DeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc setDeviationCoefficient*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "SetDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc hasOwnDeviationCoefficient*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc previousDeviationCoefficient*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
    importcpp: "PreviousDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc updatePreviousDeviationCoefficient*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "UpdatePreviousDeviationCoefficient", header: "Prs3d_Drawer.hxx".}
proc setDeviationAngle*(this: var Prs3dDrawer; theAngle: cfloat) {.cdecl,
    importcpp: "SetDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc deviationAngle*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
    importcpp: "DeviationAngle", header: "Prs3d_Drawer.hxx".}
proc setDeviationAngle*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "SetDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc hasOwnDeviationAngle*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc previousDeviationAngle*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
    importcpp: "PreviousDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc updatePreviousDeviationAngle*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "UpdatePreviousDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc setAutoTriangulation*(this: var Prs3dDrawer; theIsEnabled: bool) {.cdecl,
    importcpp: "SetAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc isAutoTriangulation*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "IsAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc hasOwnIsAutoTriangulation*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnIsAutoTriangulation", header: "Prs3d_Drawer.hxx".}
proc uIsoAspect*(this: var Prs3dDrawer): Handle[Prs3dIsoAspect] {.cdecl,
    importcpp: "UIsoAspect", header: "Prs3d_Drawer.hxx".}
proc setUIsoAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dIsoAspect]) {.cdecl,
    importcpp: "SetUIsoAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnUIsoAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnUIsoAspect", header: "Prs3d_Drawer.hxx".}
proc vIsoAspect*(this: var Prs3dDrawer): Handle[Prs3dIsoAspect] {.cdecl,
    importcpp: "VIsoAspect", header: "Prs3d_Drawer.hxx".}
proc setVIsoAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dIsoAspect]) {.cdecl,
    importcpp: "SetVIsoAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnVIsoAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnVIsoAspect", header: "Prs3d_Drawer.hxx".}
proc wireAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "WireAspect", header: "Prs3d_Drawer.hxx".}
proc setWireAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    cdecl, importcpp: "SetWireAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnWireAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnWireAspect", header: "Prs3d_Drawer.hxx".}
proc setWireDraw*(this: var Prs3dDrawer; theIsEnabled: bool) {.cdecl,
    importcpp: "SetWireDraw", header: "Prs3d_Drawer.hxx".}
proc wireDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl, importcpp: "WireDraw",
                                      header: "Prs3d_Drawer.hxx".}
proc hasOwnWireDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnWireDraw", header: "Prs3d_Drawer.hxx".}
proc pointAspect*(this: var Prs3dDrawer): Handle[Prs3dPointAspect] {.cdecl,
    importcpp: "PointAspect", header: "Prs3d_Drawer.hxx".}
proc setPointAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dPointAspect]) {.
    cdecl, importcpp: "SetPointAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnPointAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnPointAspect", header: "Prs3d_Drawer.hxx".}
#proc setupOwnPointAspect*(this: var Prs3dDrawer; theDefaults: Handle[Prs3dDrawer] = constructHandle[newPrs3dDrawer()]()): bool {.cdecl, importcpp: "SetupOwnPointAspect", header: "Prs3d_Drawer.hxx".}
proc lineAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "LineAspect", header: "Prs3d_Drawer.hxx".}
proc setLineAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    cdecl, importcpp: "SetLineAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnLineAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnLineAspect", header: "Prs3d_Drawer.hxx".}
#proc setOwnLineAspects*(this: var Prs3dDrawer;
#                       theDefaults: Handle[Prs3dDrawer] = handle[Prs3dDrawer]()): bool {.
#    cdecl, importcpp: "SetOwnLineAspects", header: "Prs3d_Drawer.hxx".}
#proc setOwnDatumAspects*(this: var Prs3dDrawer; theDefaults: Handle[Prs3dDrawer] = constructHandle[newPrs3dDrawer()]()): bool {.cdecl, importcpp: "SetOwnDatumAspects", header: "Prs3d_Drawer.hxx".}
proc textAspect*(this: var Prs3dDrawer): Handle[Prs3dTextAspect] {.cdecl,
    importcpp: "TextAspect", header: "Prs3d_Drawer.hxx".}
proc setTextAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dTextAspect]) {.
    cdecl, importcpp: "SetTextAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnTextAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnTextAspect", header: "Prs3d_Drawer.hxx".}
proc shadingAspect*(this: var Prs3dDrawer): Handle[Prs3dShadingAspect] {.cdecl,
    importcpp: "ShadingAspect", header: "Prs3d_Drawer.hxx".}
proc setShadingAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dShadingAspect]) {.
    cdecl, importcpp: "SetShadingAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnShadingAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnShadingAspect", header: "Prs3d_Drawer.hxx".}
#proc setupOwnShadingAspect*(this: var Prs3dDrawer; theDefaults: Handle[Prs3dDrawer] = constructHandle[newPrs3dDrawer()]()): bool {.cdecl, importcpp: "SetupOwnShadingAspect", header: "Prs3d_Drawer.hxx".}
proc seenLineAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "SeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc setSeenLineAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    cdecl, importcpp: "SetSeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnSeenLineAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnSeenLineAspect", header: "Prs3d_Drawer.hxx".}
proc planeAspect*(this: var Prs3dDrawer): Handle[Prs3dPlaneAspect] {.cdecl,
    importcpp: "PlaneAspect", header: "Prs3d_Drawer.hxx".}
proc setPlaneAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dPlaneAspect]) {.
    cdecl, importcpp: "SetPlaneAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnPlaneAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnPlaneAspect", header: "Prs3d_Drawer.hxx".}
proc arrowAspect*(this: var Prs3dDrawer): Handle[Prs3dArrowAspect] {.cdecl,
    importcpp: "ArrowAspect", header: "Prs3d_Drawer.hxx".}
proc setArrowAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dArrowAspect]) {.
    cdecl, importcpp: "SetArrowAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnArrowAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnArrowAspect", header: "Prs3d_Drawer.hxx".}
proc setLineArrowDraw*(this: var Prs3dDrawer; theIsEnabled: bool) {.cdecl,
    importcpp: "SetLineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc lineArrowDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "LineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnLineArrowDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnLineArrowDraw", header: "Prs3d_Drawer.hxx".}
proc hiddenLineAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "HiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc setHiddenLineAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    cdecl, importcpp: "SetHiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnHiddenLineAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnHiddenLineAspect", header: "Prs3d_Drawer.hxx".}
proc drawHiddenLine*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "DrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc enableDrawHiddenLine*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "EnableDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc disableDrawHiddenLine*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "DisableDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc hasOwnDrawHiddenLine*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDrawHiddenLine", header: "Prs3d_Drawer.hxx".}
proc vectorAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "VectorAspect", header: "Prs3d_Drawer.hxx".}
proc setVectorAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    cdecl, importcpp: "SetVectorAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnVectorAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnVectorAspect", header: "Prs3d_Drawer.hxx".}
proc setVertexDrawMode*(this: var Prs3dDrawer; theMode: Prs3dVertexDrawMode) {.cdecl,
    importcpp: "SetVertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc vertexDrawMode*(this: var Prs3dDrawer): Prs3dVertexDrawMode {.cdecl,
    importcpp: "VertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc hasOwnVertexDrawMode*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnVertexDrawMode", header: "Prs3d_Drawer.hxx".}
proc datumAspect*(this: var Prs3dDrawer): Handle[Prs3dDatumAspect] {.cdecl,
    importcpp: "DatumAspect", header: "Prs3d_Drawer.hxx".}
proc setDatumAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dDatumAspect]) {.
    cdecl, importcpp: "SetDatumAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnDatumAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDatumAspect", header: "Prs3d_Drawer.hxx".}
proc sectionAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "SectionAspect", header: "Prs3d_Drawer.hxx".}
proc setSectionAspect*(this: var Prs3dDrawer; theAspect: Handle[Prs3dLineAspect]) {.
    cdecl, importcpp: "SetSectionAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnSectionAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnSectionAspect", header: "Prs3d_Drawer.hxx".}
proc setFreeBoundaryAspect*(this: var Prs3dDrawer;
                           theAspect: Handle[Prs3dLineAspect]) {.cdecl,
    importcpp: "SetFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc freeBoundaryAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "FreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnFreeBoundaryAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc setFreeBoundaryDraw*(this: var Prs3dDrawer; theIsEnabled: bool) {.cdecl,
    importcpp: "SetFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc freeBoundaryDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "FreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnFreeBoundaryDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc setUnFreeBoundaryAspect*(this: var Prs3dDrawer;
                             theAspect: Handle[Prs3dLineAspect]) {.cdecl,
    importcpp: "SetUnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc unFreeBoundaryAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "UnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnUnFreeBoundaryAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnUnFreeBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc setUnFreeBoundaryDraw*(this: var Prs3dDrawer; theIsEnabled: bool) {.cdecl,
    importcpp: "SetUnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc unFreeBoundaryDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "UnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnUnFreeBoundaryDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnUnFreeBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc setFaceBoundaryAspect*(this: var Prs3dDrawer;
                           theAspect: Handle[Prs3dLineAspect]) {.cdecl,
    importcpp: "SetFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc faceBoundaryAspect*(this: var Prs3dDrawer): Handle[Prs3dLineAspect] {.cdecl,
    importcpp: "FaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnFaceBoundaryAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
#proc setupOwnFaceBoundaryAspect*(this: var Prs3dDrawer; theDefaults: Handle[
#    Prs3dDrawer] = handle[Prs3dDrawer]()): bool {.cdecl,
#    importcpp: "SetupOwnFaceBoundaryAspect", header: "Prs3d_Drawer.hxx".}
proc setFaceBoundaryDraw*(this: var Prs3dDrawer; theIsEnabled: bool) {.cdecl,
    importcpp: "SetFaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc faceBoundaryDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "FaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnFaceBoundaryDraw*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnFaceBoundaryDraw", header: "Prs3d_Drawer.hxx".}
proc hasOwnFaceBoundaryUpperContinuity*(this: Prs3dDrawer): bool {.noSideEffect,
    cdecl, importcpp: "HasOwnFaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc faceBoundaryUpperContinuity*(this: Prs3dDrawer): GeomAbsShape {.noSideEffect,
    cdecl, importcpp: "FaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc setFaceBoundaryUpperContinuity*(this: var Prs3dDrawer;
                                    theMostAllowedEdgeClass: GeomAbsShape) {.
    cdecl, importcpp: "SetFaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc unsetFaceBoundaryUpperContinuity*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "UnsetFaceBoundaryUpperContinuity", header: "Prs3d_Drawer.hxx".}
proc dimensionAspect*(this: var Prs3dDrawer): Handle[Prs3dDimensionAspect] {.cdecl,
    importcpp: "DimensionAspect", header: "Prs3d_Drawer.hxx".}
proc setDimensionAspect*(this: var Prs3dDrawer;
                        theAspect: Handle[Prs3dDimensionAspect]) {.cdecl,
    importcpp: "SetDimensionAspect", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimensionAspect*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDimensionAspect", header: "Prs3d_Drawer.hxx".}
proc setDimLengthModelUnits*(this: var Prs3dDrawer; theUnits: TCollectionAsciiString) {.
    cdecl, importcpp: "SetDimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc setDimAngleModelUnits*(this: var Prs3dDrawer; theUnits: TCollectionAsciiString) {.
    cdecl, importcpp: "SetDimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc dimLengthModelUnits*(this: Prs3dDrawer): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "DimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc dimAngleModelUnits*(this: Prs3dDrawer): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "DimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimLengthModelUnits*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDimLengthModelUnits", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimAngleModelUnits*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDimAngleModelUnits", header: "Prs3d_Drawer.hxx".}
proc setDimLengthDisplayUnits*(this: var Prs3dDrawer;
                              theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDimLengthDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc setDimAngleDisplayUnits*(this: var Prs3dDrawer;
                             theUnits: TCollectionAsciiString) {.cdecl,
    importcpp: "SetDimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc dimLengthDisplayUnits*(this: Prs3dDrawer): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "DimLengthDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc dimAngleDisplayUnits*(this: Prs3dDrawer): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "DimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimLengthDisplayUnits*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDimLengthDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc hasOwnDimAngleDisplayUnits*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnDimAngleDisplayUnits", header: "Prs3d_Drawer.hxx".}
proc link*(this: var Prs3dDrawer): Handle[Prs3dDrawer] {.cdecl, importcpp: "Link",
    header: "Prs3d_Drawer.hxx".}
proc hasLink*(this: Prs3dDrawer): bool {.noSideEffect, cdecl, importcpp: "HasLink",
                                     header: "Prs3d_Drawer.hxx".}
proc link*(this: var Prs3dDrawer; theDrawer: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "Link", header: "Prs3d_Drawer.hxx".}
proc setLink*(this: var Prs3dDrawer; theDrawer: Handle[Prs3dDrawer]) {.cdecl,
    importcpp: "SetLink", header: "Prs3d_Drawer.hxx".}
proc clearLocalAttributes*(this: var Prs3dDrawer) {.cdecl,
    importcpp: "ClearLocalAttributes", header: "Prs3d_Drawer.hxx".}
proc setShaderProgram*(this: var Prs3dDrawer;
                      theProgram: Handle[Graphic3dShaderProgram];
                      theAspect: Graphic3dGroupAspect;
                      theToOverrideDefaults: bool = false): bool {.cdecl,
    importcpp: "SetShaderProgram", header: "Prs3d_Drawer.hxx".}
proc setShadingModel*(this: var Prs3dDrawer; theModel: Graphic3dTypeOfShadingModel;
                     theToOverrideDefaults: bool = false): bool {.cdecl,
    importcpp: "SetShadingModel", header: "Prs3d_Drawer.hxx".}
proc dumpJson*(this: Prs3dDrawer; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "Prs3d_Drawer.hxx".}
proc setHLRAngle*(this: var Prs3dDrawer; theAngle: cfloat) {.cdecl,
    importcpp: "SetHLRAngle", header: "Prs3d_Drawer.hxx".}
proc hLRAngle*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
                                        importcpp: "HLRAngle", header: "Prs3d_Drawer.hxx".}
proc setHLRAngle*(this: var Prs3dDrawer) {.cdecl, importcpp: "SetHLRAngle",
                                       header: "Prs3d_Drawer.hxx".}
proc hasOwnHLRDeviationAngle*(this: Prs3dDrawer): bool {.noSideEffect, cdecl,
    importcpp: "HasOwnHLRDeviationAngle", header: "Prs3d_Drawer.hxx".}
proc previousHLRDeviationAngle*(this: Prs3dDrawer): cfloat {.noSideEffect, cdecl,
    importcpp: "PreviousHLRDeviationAngle", header: "Prs3d_Drawer.hxx".}


