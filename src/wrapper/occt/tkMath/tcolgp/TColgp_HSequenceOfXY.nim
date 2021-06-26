# /usr/include/opencascade/TColgp_HSequenceOfXY.hxx --> occt/tkMath/tcolgp/TColgp_HSequenceOfXY.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofxy = "/usr/include/opencascade/TColgp_HSequenceOfXY.hxx"
type
  TColgpHSequenceOfXY* {.importcpp: "TColgp_HSequenceOfXY",
                        header: headerTcolgphsequenceofxy, bycopy.} = object of TColgpSequenceOfXY


proc `new`*(this: var TColgpHSequenceOfXY; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfXY::operator new",
    header: headerTcolgphsequenceofxy.}
proc `delete`*(this: var TColgpHSequenceOfXY; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfXY::operator delete",
    header: headerTcolgphsequenceofxy.}
proc `new[]`*(this: var TColgpHSequenceOfXY; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfXY::operator new[]",
    header: headerTcolgphsequenceofxy.}
proc `delete[]`*(this: var TColgpHSequenceOfXY; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfXY::operator delete[]",
    header: headerTcolgphsequenceofxy.}
proc `new`*(this: var TColgpHSequenceOfXY; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfXY::operator new",
    header: headerTcolgphsequenceofxy.}
proc `delete`*(this: var TColgpHSequenceOfXY; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfXY::operator delete",
    header: headerTcolgphsequenceofxy.}
proc `new`*(this: var TColgpHSequenceOfXY; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfXY::operator new",
    header: headerTcolgphsequenceofxy.}
proc `delete`*(this: var TColgpHSequenceOfXY; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfXY::operator delete",
    header: headerTcolgphsequenceofxy.}
proc constructTColgpHSequenceOfXY*(): TColgpHSequenceOfXY {.constructor,
    importcpp: "TColgp_HSequenceOfXY(@)", header: headerTcolgphsequenceofxy.}
proc constructTColgpHSequenceOfXY*(theOther: TColgpSequenceOfXY): TColgpHSequenceOfXY {.
    constructor, importcpp: "TColgp_HSequenceOfXY(@)",
    header: headerTcolgphsequenceofxy.}
proc sequence*(this: TColgpHSequenceOfXY): TColgpSequenceOfXY {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofxy.}
proc append*(this: var TColgpHSequenceOfXY; theItem: ValueType) {.importcpp: "Append",
    header: headerTcolgphsequenceofxy.}
proc append*(this: var TColgpHSequenceOfXY; theSequence: var TColgpSequenceOfXY) {.
    importcpp: "Append", header: headerTcolgphsequenceofxy.}
proc changeSequence*(this: var TColgpHSequenceOfXY): var TColgpSequenceOfXY {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofxy.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfXY , T > :: value > :: type * = 0 ) { TColgp_SequenceOfXY :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfXY::get_type_name(@)",
                            header: headerTcolgphsequenceofxy.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfXY::get_type_descriptor(@)",
    header: headerTcolgphsequenceofxy.}
proc dynamicType*(this: TColgpHSequenceOfXY): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgphsequenceofxy.}
discard "forward decl of TColgp_HSequenceOfXY"
type
  HandleTColgpHSequenceOfXY* = Handle[TColgpHSequenceOfXY]
