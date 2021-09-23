# 1 "/usr/include/opencascade/Graphic3d_CubeMapOrder.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/Graphic3d_CubeMapOrder.hxx"
# 18 "/usr/include/opencascade/Graphic3d_CubeMapOrder.hxx"
# 1 "/usr/include/opencascade/Graphic3d_CubeMapSide.hxx" 1
# 19 "/usr/include/opencascade/Graphic3d_CubeMapSide.hxx"
enum Graphic3d_CubeMapSide
{
  Graphic3d_CMS_POS_X,
  Graphic3d_CMS_NEG_X,
  Graphic3d_CMS_POS_Y,
  Graphic3d_CMS_NEG_Y,
  Graphic3d_CMS_POS_Z,
  Graphic3d_CMS_NEG_Z,
};
# 19 "/usr/include/opencascade/Graphic3d_CubeMapOrder.hxx" 2
# 1 "/usr/include/opencascade/Standard_Macro.hxx" 1
# 20 "/usr/include/opencascade/Graphic3d_CubeMapOrder.hxx" 2

class Graphic3d_ValidatedCubeMapOrder;





class Graphic3d_CubeMapOrder
{

public:



  Graphic3d_CubeMapOrder();


  Graphic3d_CubeMapOrder (unsigned char thePosXLocation,
                                          unsigned char theNegXLocation,
                                          unsigned char thePosYLocation,
                                          unsigned char theNegYLocation,
                                          unsigned char thePosZLocation,
                                          unsigned char theNegZLocation);


  Graphic3d_CubeMapOrder (const Graphic3d_ValidatedCubeMapOrder theOrder);


  Graphic3d_CubeMapOrder& Set (const Graphic3d_CubeMapOrder& theOrder);




  Graphic3d_ValidatedCubeMapOrder Validated() const;

public:


  Graphic3d_CubeMapOrder& Set (Graphic3d_CubeMapSide theCubeMapSide, unsigned char theValue);


  Graphic3d_CubeMapOrder& SetDefault();


  Graphic3d_CubeMapOrder& Permute (Graphic3d_ValidatedCubeMapOrder anOrder);


  Graphic3d_CubeMapOrder Permuted (Graphic3d_ValidatedCubeMapOrder anOrder) const;


  Graphic3d_CubeMapOrder& Swap (Graphic3d_CubeMapSide theFirstSide,
                                                Graphic3d_CubeMapSide theSecondSide);


  Graphic3d_CubeMapOrder Swapped (Graphic3d_CubeMapSide theFirstSide,
                                                  Graphic3d_CubeMapSide theSecondSide) const;


  unsigned char Get (Graphic3d_CubeMapSide theCubeMapSide) const;


  unsigned char operator[] (Graphic3d_CubeMapSide theCubeMapSide) const;


  Graphic3d_CubeMapOrder& Clear();


  bool IsEmpty() const;


  bool HasRepetitions() const;


  bool HasOverflows() const;




  bool IsValid() const;

public:



  static const Graphic3d_ValidatedCubeMapOrder& Default();

private:


  unsigned char get (unsigned char theCubeMapSide) const;


  void set (unsigned char theCubeMapSide, unsigned char theValue);


  void set (Graphic3d_CubeMapSide theCubeMapSide, unsigned char theValue);

private:

  unsigned int myConvolution;
  bool myHasOverflows;
};






class Graphic3d_ValidatedCubeMapOrder
{

public:

  friend class Graphic3d_CubeMapOrder;


  const Graphic3d_CubeMapOrder* operator->() const
  {
    return &Order;
  }


  Graphic3d_ValidatedCubeMapOrder (const Graphic3d_ValidatedCubeMapOrder& theOther)
  : Order (theOther.Order) {}

public:

  const Graphic3d_CubeMapOrder Order;

private:


  Graphic3d_ValidatedCubeMapOrder(const Graphic3d_CubeMapOrder theOrder)
  : Order(theOrder) {}


  Graphic3d_ValidatedCubeMapOrder& operator= (const Graphic3d_ValidatedCubeMapOrder&);

};
