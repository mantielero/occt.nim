##  Author: Roman Lygin, 2012.
##  This file is in the Public Domain and thus can freely be used for any purpose.
##  The author disclaims any rights and liabilities.

## !!!Ignored construct:  # _NCollection_StdAllocator_HeaderFile [NewLine] # _NCollection_StdAllocator_HeaderFile [NewLine] # < NCollection_BaseAllocator . hxx > [NewLine] # _MSC_VER [NewLine] Workaround for false "unreferenced parameter" warning in destroy(). # warning ( push ) [NewLine] # warning ( disable : 4100 ) [NewLine] # [NewLine] ! Implements allocator requirements as defined in ISO C++ Standard 2003, section 20.1.5. ! The allocator uses instance of the NCollection_BaseAllocator (sub)class for memory
##   allocation/deallocation. The allocator can be used with standard
##   containers (std::vector, std::map, etc) to take advantage of NCollection_IncAllocator
##   which implements memory region concept, and hence to increase performance in specific
##   cases.
##
##   The underlying NCollection_BaseAllocator instance can be received using the Allocator()
##   method.
##
##   Example of use:
##   \code
##   Handle(NCollection_IncAllocator) anIncAlloc = new NCollection_IncAllocator();
##   NCollection_StdAllocator<TopoDS_Shape> aSAlloc (anIncAlloc);
##   std::list<TopoDS_Shape, NCollection_StdAllocator<TopoDS_Shape> > aL (aSAlloc);
##   TopoDS_Solid aSolid = BRepPrimAPI_MakeBox (10., 20., 30.);
##   aL.push_back (aSolid);
##   \endcode
##  template < typename T > [end of template] class NCollection_StdAllocator { public : typedef T value_type ; typedef value_type * pointer ; typedef const value_type * const_pointer ; typedef value_type & reference ; typedef const value_type & const_reference ; typedef size_t size_type ; typedef ptrdiff_t difference_type ; template < typename U > [end of template] struct rebind { typedef NCollection_StdAllocator < U > [end of template] other ; } ; ! Constructor. ! Creates an object using default Open CASCADE allocation mechanism, i.e. which uses
##     Standard::Allocate() and Standard::Free() underneath.
##  NCollection_StdAllocator ( ) { myAlloc = NCollection_BaseAllocator :: CommonBaseAllocator ( ) ; } ! Constructor. ! Saves \a theAlloc as an underlying allocator instance. NCollection_StdAllocator ( const opencascade :: handle < NCollection_BaseAllocator > [end of template] & theAlloc ) { myAlloc = theAlloc ; } ! Copy constructor. ! Copies Allocator() from \a Y. template < typename U > [end of template] NCollection_StdAllocator ( const NCollection_StdAllocator < U > [end of template] & Y ) { myAlloc = Y . Allocator ( ) ; } ! Assignment operator template < typename U > [end of template] NCollection_StdAllocator & operator = ( const NCollection_StdAllocator < U > [end of template] & Y ) { myAlloc = Y . Allocator ( ) ; return * this ; } ! Returns an object address. ! Returns &x. pointer address ( reference x ) const { return & x ; } ! Returns an object address. ! Returns &x. const_pointer address ( const_reference x ) const { return & x ; } ! Allocates memory for \a n objects. ! Uses underlying allocator to allocate memory. pointer allocate ( size_type n , const void * hint = 0 ) { return pointer ( myAlloc -> Allocate ( n * sizeof ( value_type ) ) ) ; } ! Frees previously allocated memory. ! Uses underlying allocator to deallocate memory. void deallocate ( pointer p , size_type ) { myAlloc -> Free ( p ) ; } ! Returns the largest value for which method allocate might succeed. size_type max_size ( ) const { size_type aMax = static_cast < size_type > [end of template] ( - 1 ) / sizeof ( value_type ) ; return aMax ; } ! Constructs an object. ! Uses placement new operator and copy constructor to construct an object. void construct ( pointer p , const_reference val ) { new ( static_cast < void * > [end of template] ( p ) ) value_type ( val ) ; } ! Destroys the object. ! Uses object destructor. void destroy ( pointer p ) { p -> ~ value_type ( ) ; } ! Returns an underlying NCollection_BaseAllocator instance. ! Returns an object specified in the constructor. const opencascade :: handle < NCollection_BaseAllocator > [end of template] & Allocator ( ) const { return myAlloc ; } protected : opencascade :: handle < NCollection_BaseAllocator > [end of template] myAlloc ; } ;
## Error: token expected: ; but got: <!!!

# when msc_Ver:
#   discard
## ! Implements specialization NCollection_StdAllocator<void>.
## ! Specialization is of low value and should normally be avoided in favor of a typed specialization.
##
##   Example of use:
##   \code
##   Handle(NCollection_IncAllocator) anIncAlloc = new NCollection_IncAllocator();
##   NCollection_StdAllocator<void> aVAlloc (anIncAlloc);
##   std::vector<double, NCollection_StdAllocator<double> > aV3 (aVAlloc);
##   aV3.push_back (10.);
##   \endcode
##
type
  NCollection_StdAllocator*[T] {.importcpp: "NCollection_StdAllocator",
                 header: "NCollection_StdAllocator.hxx", bycopy.} = object


#type
#  NCollection_StdAllocator*[T] {.importcpp: "NCollection_StdAllocator",
#                 header: "NCollection_StdAllocator.hxx", bycopy.} = object


#type
#   NCollection_StdAllocator*[T] {.importcpp: "NCollection_StdAllocator",
#                  header: "NCollection_StdAllocator.hxx", bycopy.} = object
# 

#type
#   NCollection_StdAllocator*[T] {.importcpp: "NCollection_StdAllocator",
#                  header: "NCollection_StdAllocator.hxx", bycopy.} = object
# 


# ## !!!Ignored construct:  template < > [end of template] class NCollection_StdAllocator < void > { public : typedef void * pointer ; typedef const void * const_pointer ; typedef void value_type ; template < typename U > struct rebind { typedef NCollection_StdAllocator < U > other ; } ; ! Constructor. ! Creates an object using default Open CASCADE allocation mechanism, i.e. which uses
# ##     Standard::Allocate() and Standard::Free() underneath.
# ##  NCollection_StdAllocator ( ) { myAlloc = NCollection_BaseAllocator :: CommonBaseAllocator ( ) ; } ! Constructor. ! Saves \a theAlloc as an underlying allocator instance. NCollection_StdAllocator ( const opencascade :: handle < NCollection_BaseAllocator > [end of template] & theAlloc ) { myAlloc = theAlloc ; } ! Constructor. ! Copies Allocator() from \a X. NCollection_StdAllocator ( const NCollection_StdAllocator & X ) { myAlloc = X . myAlloc ; } ! Returns an underlying NCollection_BaseAllocator instance. ! Returns an object specified in the constructor. const opencascade :: handle < NCollection_BaseAllocator > [end of template] & Allocator ( ) const { return myAlloc ; } ! Assignment operator NCollection_StdAllocator & operator = ( const NCollection_StdAllocator & X ) { myAlloc = X . myAlloc ; return * this ; } protected : opencascade :: handle < NCollection_BaseAllocator > [end of template] myAlloc ; } ;
## Error: token expected: ; but got: <!!!

# proc `==`*(x: NCollectionStdAllocator[T];
#           y: NCollectionStdAllocator[U]): bool {.
#     importcpp: "(# == #)", header: "NCollection_StdAllocator.hxx".}
## !!!Ignored construct:  template < typename T , typename U > [end of template] inline bool operator != ( const NCollection_StdAllocator < T > [end of template] & X , const NCollection_StdAllocator < U > [end of template] & Y ) { return ! ( X == Y ) ; } # [NewLine]
## Error: token expected: ; but got: #!!!










