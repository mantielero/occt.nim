# /usr/include/opencascade/TColgp_HSequenceOfXYZ.hxx --> occt/tcolgp/TColgp_HSequenceOfXYZ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofxyz = "/usr/include/opencascade/TColgp_HSequenceOfXYZ.hxx"
type
  TColgpHSequenceOfXYZ* {.importcpp: "TColgp_HSequenceOfXYZ",
                         header: headerTcolgphsequenceofxyz, bycopy.} = object of TColgpSequenceOfXYZ


proc `new`*(this: var TColgpHSequenceOfXYZ; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfXYZ::operator new",
    header: headerTcolgphsequenceofxyz.}
proc `delete`*(this: var TColgpHSequenceOfXYZ; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfXYZ::operator delete",
    header: headerTcolgphsequenceofxyz.}
proc `new[]`*(this: var TColgpHSequenceOfXYZ; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfXYZ::operator new[]",
    header: headerTcolgphsequenceofxyz.}
proc `delete[]`*(this: var TColgpHSequenceOfXYZ; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfXYZ::operator delete[]",
    header: headerTcolgphsequenceofxyz.}
proc `new`*(this: var TColgpHSequenceOfXYZ; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfXYZ::operator new",
    header: headerTcolgphsequenceofxyz.}
proc `delete`*(this: var TColgpHSequenceOfXYZ; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfXYZ::operator delete",
    header: headerTcolgphsequenceofxyz.}
proc `new`*(this: var TColgpHSequenceOfXYZ; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfXYZ::operator new",
    header: headerTcolgphsequenceofxyz.}
proc `delete`*(this: var TColgpHSequenceOfXYZ; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfXYZ::operator delete",
    header: headerTcolgphsequenceofxyz.}
proc constructTColgpHSequenceOfXYZ*(): TColgpHSequenceOfXYZ {.constructor,
    importcpp: "TColgp_HSequenceOfXYZ(@)", header: headerTcolgphsequenceofxyz.}
proc constructTColgpHSequenceOfXYZ*(theOther: TColgpSequenceOfXYZ): TColgpHSequenceOfXYZ {.
    constructor, importcpp: "TColgp_HSequenceOfXYZ(@)",
    header: headerTcolgphsequenceofxyz.}
proc sequence*(this: TColgpHSequenceOfXYZ): TColgpSequenceOfXYZ {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofxyz.}
proc append*(this: var TColgpHSequenceOfXYZ; theItem: ValueType) {.
    importcpp: "Append", header: headerTcolgphsequenceofxyz.}
proc append*(this: var TColgpHSequenceOfXYZ; theSequence: var TColgpSequenceOfXYZ) {.
    importcpp: "Append", header: headerTcolgphsequenceofxyz.}
proc changeSequence*(this: var TColgpHSequenceOfXYZ): var TColgpSequenceOfXYZ {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofxyz.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfXYZ , T > :: value > :: type * = 0 ) { TColgp_SequenceOfXYZ :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfXYZ::get_type_name(@)",
                            header: headerTcolgphsequenceofxyz.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfXYZ::get_type_descriptor(@)",
    header: headerTcolgphsequenceofxyz.}
proc dynamicType*(this: TColgpHSequenceOfXYZ): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgphsequenceofxyz.}
discard "forward decl of TColgp_HSequenceOfXYZ"
type
  HandleTColgpHSequenceOfXYZ* = Handle[TColgpHSequenceOfXYZ]
