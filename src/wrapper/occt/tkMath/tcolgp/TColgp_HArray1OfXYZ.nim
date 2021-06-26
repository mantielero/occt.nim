# /usr/include/opencascade/TColgp_HArray1OfXYZ.hxx --> occt/tkMath/tcolgp/TColgp_HArray1OfXYZ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray1ofxyz = "/usr/include/opencascade/TColgp_HArray1OfXYZ.hxx"
type
  TColgpHArray1OfXYZ* {.importcpp: "TColgp_HArray1OfXYZ",
                       header: headerTcolgpharray1ofxyz, bycopy.} = object of TColgpArray1OfXYZ


proc `new`*(this: var TColgpHArray1OfXYZ; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfXYZ::operator new",
    header: headerTcolgpharray1ofxyz.}
proc `delete`*(this: var TColgpHArray1OfXYZ; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfXYZ::operator delete",
    header: headerTcolgpharray1ofxyz.}
proc `new[]`*(this: var TColgpHArray1OfXYZ; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray1OfXYZ::operator new[]",
    header: headerTcolgpharray1ofxyz.}
proc `delete[]`*(this: var TColgpHArray1OfXYZ; theAddress: pointer) {.
    importcpp: "TColgp_HArray1OfXYZ::operator delete[]",
    header: headerTcolgpharray1ofxyz.}
proc `new`*(this: var TColgpHArray1OfXYZ; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray1OfXYZ::operator new",
    header: headerTcolgpharray1ofxyz.}
proc `delete`*(this: var TColgpHArray1OfXYZ; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray1OfXYZ::operator delete",
    header: headerTcolgpharray1ofxyz.}
proc `new`*(this: var TColgpHArray1OfXYZ; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray1OfXYZ::operator new",
    header: headerTcolgpharray1ofxyz.}
proc `delete`*(this: var TColgpHArray1OfXYZ; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray1OfXYZ::operator delete",
    header: headerTcolgpharray1ofxyz.}
proc constructTColgpHArray1OfXYZ*(): TColgpHArray1OfXYZ {.constructor,
    importcpp: "TColgp_HArray1OfXYZ(@)", header: headerTcolgpharray1ofxyz.}
proc constructTColgpHArray1OfXYZ*(theLower: StandardInteger;
                                 theUpper: StandardInteger): TColgpHArray1OfXYZ {.
    constructor, importcpp: "TColgp_HArray1OfXYZ(@)",
    header: headerTcolgpharray1ofxyz.}
proc constructTColgpHArray1OfXYZ*(theLower: StandardInteger;
                                 theUpper: StandardInteger; theValue: ValueType): TColgpHArray1OfXYZ {.
    constructor, importcpp: "TColgp_HArray1OfXYZ(@)",
    header: headerTcolgpharray1ofxyz.}
proc constructTColgpHArray1OfXYZ*(theOther: TColgpArray1OfXYZ): TColgpHArray1OfXYZ {.
    constructor, importcpp: "TColgp_HArray1OfXYZ(@)",
    header: headerTcolgpharray1ofxyz.}
proc array1*(this: TColgpHArray1OfXYZ): TColgpArray1OfXYZ {.noSideEffect,
    importcpp: "Array1", header: headerTcolgpharray1ofxyz.}
proc changeArray1*(this: var TColgpHArray1OfXYZ): var TColgpArray1OfXYZ {.
    importcpp: "ChangeArray1", header: headerTcolgpharray1ofxyz.}
type
  TColgpHArray1OfXYZbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray1OfXYZ::get_type_name(@)",
                            header: headerTcolgpharray1ofxyz.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray1OfXYZ::get_type_descriptor(@)",
    header: headerTcolgpharray1ofxyz.}
proc dynamicType*(this: TColgpHArray1OfXYZ): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray1ofxyz.}
discard "forward decl of TColgp_HArray1OfXYZ"
type
  HandleTColgpHArray1OfXYZ* = Handle[TColgpHArray1OfXYZ]
