# /usr/include/opencascade/TColgp_HArray2OfXYZ.hxx --> occt/tkMath/tcolgp/TColgp_HArray2OfXYZ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpharray2ofxyz = "/usr/include/opencascade/TColgp_HArray2OfXYZ.hxx"
type
  TColgpHArray2OfXYZ* {.importcpp: "TColgp_HArray2OfXYZ",
                       header: headerTcolgpharray2ofxyz, bycopy.} = object of TColgpArray2OfXYZ


proc `new`*(this: var TColgpHArray2OfXYZ; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfXYZ::operator new",
    header: headerTcolgpharray2ofxyz.}
proc `delete`*(this: var TColgpHArray2OfXYZ; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfXYZ::operator delete",
    header: headerTcolgpharray2ofxyz.}
proc `new[]`*(this: var TColgpHArray2OfXYZ; theSize: csize_t): pointer {.
    importcpp: "TColgp_HArray2OfXYZ::operator new[]",
    header: headerTcolgpharray2ofxyz.}
proc `delete[]`*(this: var TColgpHArray2OfXYZ; theAddress: pointer) {.
    importcpp: "TColgp_HArray2OfXYZ::operator delete[]",
    header: headerTcolgpharray2ofxyz.}
proc `new`*(this: var TColgpHArray2OfXYZ; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HArray2OfXYZ::operator new",
    header: headerTcolgpharray2ofxyz.}
proc `delete`*(this: var TColgpHArray2OfXYZ; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HArray2OfXYZ::operator delete",
    header: headerTcolgpharray2ofxyz.}
proc `new`*(this: var TColgpHArray2OfXYZ; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HArray2OfXYZ::operator new",
    header: headerTcolgpharray2ofxyz.}
proc `delete`*(this: var TColgpHArray2OfXYZ; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HArray2OfXYZ::operator delete",
    header: headerTcolgpharray2ofxyz.}
proc constructTColgpHArray2OfXYZ*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger): TColgpHArray2OfXYZ {.
    constructor, importcpp: "TColgp_HArray2OfXYZ(@)",
    header: headerTcolgpharray2ofxyz.}
proc constructTColgpHArray2OfXYZ*(theRowLow: StandardInteger;
                                 theRowUpp: StandardInteger;
                                 theColLow: StandardInteger;
                                 theColUpp: StandardInteger; theValue: ValueType): TColgpHArray2OfXYZ {.
    constructor, importcpp: "TColgp_HArray2OfXYZ(@)",
    header: headerTcolgpharray2ofxyz.}
proc constructTColgpHArray2OfXYZ*(theOther: TColgpArray2OfXYZ): TColgpHArray2OfXYZ {.
    constructor, importcpp: "TColgp_HArray2OfXYZ(@)",
    header: headerTcolgpharray2ofxyz.}
proc array2*(this: TColgpHArray2OfXYZ): TColgpArray2OfXYZ {.noSideEffect,
    importcpp: "Array2", header: headerTcolgpharray2ofxyz.}
proc changeArray2*(this: var TColgpHArray2OfXYZ): var TColgpArray2OfXYZ {.
    importcpp: "ChangeArray2", header: headerTcolgpharray2ofxyz.}
type
  TColgpHArray2OfXYZbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TColgp_HArray2OfXYZ::get_type_name(@)",
                            header: headerTcolgpharray2ofxyz.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HArray2OfXYZ::get_type_descriptor(@)",
    header: headerTcolgpharray2ofxyz.}
proc dynamicType*(this: TColgpHArray2OfXYZ): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgpharray2ofxyz.}
discard "forward decl of TColgp_HArray2OfXYZ"
type
  HandleTColgpHArray2OfXYZ* = Handle[TColgpHArray2OfXYZ]
