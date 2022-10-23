{.passL:"-lTKMath".}
{.passC:"-I/usr/include/opencascade/" .}
{.experimental: "codeReordering".}
{.experimental: "callOperator".}
import gp_types#,gp_xyz

{.push header: "gp_Pnt.hxx".}
#type
#  PntObj* {.importcpp: "gp_Pnt", bycopy.} = object ## ! Creates a point with zero coordinates.

# Constructors
{.push cdecl, constructor.}
proc pnt*(): PntObj {.importcpp: "gp_Pnt(@)".}
proc pnt*(coord: XyzObj): PntObj {.importcpp: "gp_Pnt(@)".}
proc pnt*(xp: cfloat; yp: cfloat; zp: cfloat): PntObj {.importcpp: "gp_Pnt(@)".}
{.pop.}

proc setCoord*(this: var PntObj; index: cint; xi: cfloat) {.cdecl, importcpp: "SetCoord".}
proc setCoord*(this: var PntObj; xp: cfloat; yp: cfloat; zp: cfloat) {.cdecl, importcpp: "SetCoord".}
proc setX*(this: var PntObj; x: cfloat) {.cdecl, importcpp: "SetX".}
proc setY*(this: var PntObj; y: cfloat) {.cdecl, importcpp: "SetY".}
proc setZ*(this: var PntObj; z: cfloat) {.cdecl, importcpp: "SetZ".}
proc setXYZ*(this: var PntObj; coord: XyzObj) {.cdecl, importcpp: "SetXYZ".}


proc coord*(this: PntObj; index: cint): cfloat {.noSideEffect, cdecl, importcpp: "Coord".}
proc coord*(this: PntObj; xp: var cfloat; yp: var cfloat; zp: var cfloat) {.noSideEffect, cdecl,importcpp: "Coord".}

proc x*(this: PntObj): cfloat {.noSideEffect, cdecl, importcpp: "X".}
proc y*(this: PntObj): cfloat {.noSideEffect, cdecl, importcpp: "Y".}
proc z*(this: PntObj): cfloat {.noSideEffect, cdecl, importcpp: "Z".}

proc xyz*(this: PntObj): XyzObj {.noSideEffect, cdecl, importcpp: "XYZ".}
proc coord*(this: PntObj): XyzObj {.noSideEffect, cdecl, importcpp: "Coord".}
proc changeCoord*(this: var PntObj): var XyzObj {.cdecl, importcpp: "ChangeCoord".}
proc baryCenter*(this: var PntObj; alpha: cfloat; p: PntObj; beta: cfloat) {.cdecl,importcpp: "BaryCenter".}
proc isEqual*(this: PntObj; other: PntObj; linearTolerance: cfloat): bool {.noSideEffect,cdecl, importcpp: "IsEqual".}
proc distance*(this: PntObj; other: PntObj): cfloat {.noSideEffect, cdecl,importcpp: "Distance".}
proc squareDistance*(this: PntObj; other: PntObj): cfloat {.noSideEffect, cdecl, importcpp: "SquareDistance".}
proc mirror*(this: var PntObj; p: PntObj) {.cdecl, importcpp: "Mirror".}
proc mirrored*(this: PntObj; p: PntObj): PntObj {.noSideEffect, cdecl, importcpp: "Mirrored".}
proc mirror*(this: var PntObj; a1: Ax1Obj) {.cdecl, importcpp: "Mirror".}
proc mirrored*(this: PntObj; a1: Ax1Obj): PntObj {.noSideEffect, cdecl, importcpp: "Mirrored".}
proc mirror*(this: var PntObj; a2: Ax2Obj) {.cdecl, importcpp: "Mirror".}
proc mirrored*(this: PntObj; a2: Ax2Obj): PntObj {.noSideEffect, cdecl, importcpp: "Mirrored".}
proc rotate*(this: var PntObj; a1: Ax1Obj; ang: cfloat) {.cdecl, importcpp: "Rotate".}
proc rotated*(this: PntObj; a1: Ax1Obj; ang: cfloat): PntObj {.noSideEffect, cdecl,importcpp: "Rotated".}
proc scale*(this: var PntObj; p: PntObj; s: cfloat) {.cdecl, importcpp: "Scale".}
proc scaled*(this: PntObj; p: PntObj; s: cfloat): PntObj {.noSideEffect, cdecl,importcpp: "Scaled".}
proc transform*(this: var PntObj; t: TrsfObj) {.cdecl, importcpp: "Transform".}
proc transformed*(this: PntObj; t: TrsfObj): PntObj {.noSideEffect, cdecl,importcpp: "Transformed".}
proc translate*(this: var PntObj; v: VecObj) {.cdecl, importcpp: "Translate".}
proc translated*(this: PntObj; v: VecObj): PntObj {.noSideEffect, cdecl, importcpp: "Translated".}
proc translate*(this: var PntObj; p1: PntObj; p2: PntObj) {.cdecl, importcpp: "Translate".}
proc translated*(this: PntObj; p1: PntObj; p2: PntObj): PntObj {.noSideEffect, cdecl, importcpp: "Translated".}
#proc dumpJson*(this: PntObj; theOStream: var StandardOStream; theDepth: cint = -1) {.
#    noSideEffect, cdecl, importcpp: "DumpJson".}
#proc initFromJson*(this: var PntObj; theSStream: StandardSStream; theStreamPos: var cint): bool {.
#    cdecl, importcpp: "InitFromJson".}

{.pop.}

#------