# C2NIM
Lo siguiente parece lo correcto, pero no va:
```
#def DEFINE_STANDARD_ALLOC                         \
  void* operator new (size_t theSize)              \
  void  operator delete (void* theAddress)         \
  DEFINE_STANDARD_ALLOC_ARRAY                      \
  DEFINE_STANDARD_ALLOC_PLACEMENT

#def DEFINE_STANDARD_ALLOC_ARRAY               \
   void* operator new[] (size_t theSize)       \
   void  operator delete[] (void* theAddress)  

#def DEFINE_STANDARD_ALLOC_PLACEMENT               \
   void* operator new (size_t, void* theAddress)   \
   void operator delete (void*, void*)        
```

# Ficheros con problemas
```
/usr/include/opencascade/Geom_HSequenceOfBSplineSurface.hxx
/usr/include/opencascade/Geom_UndefinedDerivative.hxx
/usr/include/opencascade/Geom_UndefinedValue.hxx
```


# gp

```
"occt/gp/gp_includes.nim".append(3, """
# TODO: what would be better
type
  StandardOStream* = object
  StandardSStream* = object
  NCollectionMat4*[T] = object
  TColStdArray1OfReal* = object
  NCollectionLerp*[T] = object    
  """)
```

# Standard
## Standard_SStream.nim
```
type
  StandardSStream* {.importcpp: "std::stringstream".} = object
```

# Exception
Funciona:
```
#def DEFINE_STANDARD_EXCEPTION(C1,C2) \
class C1 : public C2 { \
  void Throw () const Standard_OVERRIDE ; \
};
```

No funciona:
```
#def DEFINE_STANDARD_EXCEPTION(C1,C2) \
class C1 : public C2 { \
  void Throw () const Standard_OVERRIDE \
public: \
  C1() : C2() \
  C1(const Standard_CString theMessage) : C2(theMessage)                \
  static void Raise(const Standard_CString theMessage = "")             \
  static void Raise(Standard_SStream& theMessage)                       \
  static Handle(C1) NewInstance(const Standard_CString theMessage = "") \
  DEFINE_STANDARD_RTTI_INLINE(C1,C2)                                    \  
};


#assumedef No_Exception
#assumedef No_Standard_Underflow
```


# NCollection
```
#def NCOLLECTION_VEC_COMPONENTS_2D(theX, theY) \
  const NCollection_Vec2<Element_t> theX##theY() const ; \
  const NCollection_Vec2<Element_t> theY##theX() const ;
```