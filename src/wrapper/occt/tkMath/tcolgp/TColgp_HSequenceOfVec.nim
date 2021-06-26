# /usr/include/opencascade/TColgp_HSequenceOfVec.hxx --> occt/tkMath/tcolgp/TColgp_HSequenceOfVec.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgphsequenceofvec = "/usr/include/opencascade/TColgp_HSequenceOfVec.hxx"
type
  TColgpHSequenceOfVec* {.importcpp: "TColgp_HSequenceOfVec",
                         header: headerTcolgphsequenceofvec, bycopy.} = object of TColgpSequenceOfVec


proc `new`*(this: var TColgpHSequenceOfVec; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfVec::operator new",
    header: headerTcolgphsequenceofvec.}
proc `delete`*(this: var TColgpHSequenceOfVec; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfVec::operator delete",
    header: headerTcolgphsequenceofvec.}
proc `new[]`*(this: var TColgpHSequenceOfVec; theSize: csize_t): pointer {.
    importcpp: "TColgp_HSequenceOfVec::operator new[]",
    header: headerTcolgphsequenceofvec.}
proc `delete[]`*(this: var TColgpHSequenceOfVec; theAddress: pointer) {.
    importcpp: "TColgp_HSequenceOfVec::operator delete[]",
    header: headerTcolgphsequenceofvec.}
proc `new`*(this: var TColgpHSequenceOfVec; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "TColgp_HSequenceOfVec::operator new",
    header: headerTcolgphsequenceofvec.}
proc `delete`*(this: var TColgpHSequenceOfVec; a2: pointer; a3: pointer) {.
    importcpp: "TColgp_HSequenceOfVec::operator delete",
    header: headerTcolgphsequenceofvec.}
proc `new`*(this: var TColgpHSequenceOfVec; theSize: csize_t;
           theAllocator: Handle[NCollectionBaseAllocator]): pointer {.
    importcpp: "TColgp_HSequenceOfVec::operator new",
    header: headerTcolgphsequenceofvec.}
proc `delete`*(this: var TColgpHSequenceOfVec; theAddress: pointer;
              theAllocator: Handle[NCollectionBaseAllocator]) {.
    importcpp: "TColgp_HSequenceOfVec::operator delete",
    header: headerTcolgphsequenceofvec.}
proc constructTColgpHSequenceOfVec*(): TColgpHSequenceOfVec {.constructor,
    importcpp: "TColgp_HSequenceOfVec(@)", header: headerTcolgphsequenceofvec.}
proc constructTColgpHSequenceOfVec*(theOther: TColgpSequenceOfVec): TColgpHSequenceOfVec {.
    constructor, importcpp: "TColgp_HSequenceOfVec(@)",
    header: headerTcolgphsequenceofvec.}
proc sequence*(this: TColgpHSequenceOfVec): TColgpSequenceOfVec {.noSideEffect,
    importcpp: "Sequence", header: headerTcolgphsequenceofvec.}
proc append*(this: var TColgpHSequenceOfVec; theItem: ValueType) {.
    importcpp: "Append", header: headerTcolgphsequenceofvec.}
proc append*(this: var TColgpHSequenceOfVec; theSequence: var TColgpSequenceOfVec) {.
    importcpp: "Append", header: headerTcolgphsequenceofvec.}
proc changeSequence*(this: var TColgpHSequenceOfVec): var TColgpSequenceOfVec {.
    importcpp: "ChangeSequence", header: headerTcolgphsequenceofvec.}
## !!!Ignored construct:  template < class T > [end of template] void Append ( const opencascade :: handle < T > [end of template] & theOther , typename opencascade :: std :: enable_if < opencascade :: std :: is_base_of < TColgp_HSequenceOfVec , T > :: value > :: type * = 0 ) { TColgp_SequenceOfVec :: Append ( theOther -> ChangeSequence ( ) ) ; } public : typedef Standard_Transient base_type ;
## Error: token expected: ) but got: ::!!!

proc getTypeName*(): cstring {.importcpp: "TColgp_HSequenceOfVec::get_type_name(@)",
                            header: headerTcolgphsequenceofvec.}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TColgp_HSequenceOfVec::get_type_descriptor(@)",
    header: headerTcolgphsequenceofvec.}
proc dynamicType*(this: TColgpHSequenceOfVec): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: headerTcolgphsequenceofvec.}
discard "forward decl of TColgp_HSequenceOfVec"
type
  HandleTColgpHSequenceOfVec* = Handle[TColgpHSequenceOfVec]
