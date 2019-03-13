unit Axiom_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : $Revision: 1.1 $
// File generated on 25/05/2005 10:59:56 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\CVS\axiom6-44\Axiom.tlb (1)
// LIBID: {40E92E2A-FB79-44BA-AE89-7314B15469CD}
// LCID: 0
// Helpfile: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\System32\stdole2.tlb)
//   (2) v4.0 StdVCL, (C:\WINDOWS\system32\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  AxiomMajorVersion = 1;
  AxiomMinorVersion = 0;

  LIBID_Axiom: TGUID = '{40E92E2A-FB79-44BA-AE89-7314B15469CD}';

  IID_Interface1: TGUID = '{CA320200-3C62-4BC5-B3E9-A5410CCDAF3C}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  Interface1 = interface;
  Interface1Disp = dispinterface;

// *********************************************************************//
// Interface: Interface1
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA320200-3C62-4BC5-B3E9-A5410CCDAF3C}
// *********************************************************************//
  Interface1 = interface(IDispatch)
    ['{CA320200-3C62-4BC5-B3E9-A5410CCDAF3C}']
  end;

// *********************************************************************//
// DispIntf:  Interface1Disp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {CA320200-3C62-4BC5-B3E9-A5410CCDAF3C}
// *********************************************************************//
  Interface1Disp = dispinterface
    ['{CA320200-3C62-4BC5-B3E9-A5410CCDAF3C}']
  end;

implementation

uses ComObj;

end.
