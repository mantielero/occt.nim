# /usr/include/opencascade/TColgp_HSequenceOfPnt.hxx --> occt/tkMath/tcolgp/TColgp_HSequenceOfPnt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofpnt = "/usr/include/opencascade/TColgp_HSequenceOfPnt.hxx"
type
  TColgpHSequenceOfPnt* {.importcpp: "TColgp_HSequenceOfPnt",
                         header: headerTcolgphsequenceofpnt, bycopy.} = object of TColgpSequenceOfPnt


proc `new`*(this: var TColgpHSequenceOfPnt; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfPnt::operator new",
    header: headerTcolgphsequenceofpnt.}
proc `delete`*(this: var TColgpHSequenceOfPnt; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfPnt::operator delete",
    header: headerTcolgphsequenceofpnt.}
proc `new[]`*(this: var TColgpHSequenceOfPnt; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfPnt::operator new[]",
    header: headerTcolgphsequenceofpnt.}
proc `delete[]`*(this: var TColgpHSequenceOfPnt; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfPnt::operator delete[]",
    header: headerTcolgphsequenceofpnt.}
proc `new`*(this: var TColgpHSequenceOfPnt; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfPnt::operator new",
    header: headerTcolgphsequenceofpnt.}
proc `delete`*(this: var TColgpHSequenceOfPnt; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfPnt::operator delete",
    header: headerTcolgphsequenceofpnt.}
proc `new`*(this: var TColgpHSequenceOfPnt; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfPnt::operator new",
    header: headerTcolgphsequenceofpnt.}
proc `delete`*(this: var TColgpHSequenceOfPnt; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfPnt::operator delete",
    header: headerTcolgphsequenceofpnt.}
proc constructTColgpHSequenceOfPnt*(): TColgpHSequenceOfPnt {.constructor,
    importcpp: "TColgp_HSequenceOfPnt(@)", header: headerTcolgphsequenceofpnt.}
proc constructTColgpHSequenceOfPnt*(theOther: TColgpSequenceOfPnt): TColgpHSequenceOfPnt {.
    constructor, importcpp: "TColgp_HSequenceOfPnt(@)",
    header: headerTcolgphsequenceofpnt.}
proc sequence*(this: TColgpHSequenceOfPnt): TColgpSequenceOfPnt {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofpnt.}
proc append*(this: var TColgpHSequenceOfPnt; theItem: ValueType) {.
    importcpp: "Append", header: headerTcolgphsequenceofpnt.}
proc append*(this: var TColgpHSequenceOfPnt; theSequence: var TColgpSequenceOfPnt) {.
    importcpp: "Append", header: headerTcolgphsequenceofpnt.}
proc changeSequence*(this: var TColgpHSequenceOfPnt): var TColgpSequenceOfPnt {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofpnt.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfPnt , T > :: value > :: type * = 0 ) { TColgp_SequenceOfPnt :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfPnt::get_type_name(@)",
                            header: headerTcolgphsequenceofpnt.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfPnt::get_type_descriptor(@)",
    header: headerTcolgphsequenceofpnt.}
proc dynamicType*(this: TColgpHSequenceOfPnt): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgphsequenceofpnt.}
discard "forward decl of TColgp_HSequenceOfPnt"
type
  HandleTColgpHSequenceOfPnt* = Handle[TColgpHSequenceOfPnt]
