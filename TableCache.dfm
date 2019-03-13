object dmTableCache: TdmTableCache
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 327
  Width = 431
  object vtSettings: TVirtualTable
    Left = 16
    Top = 8
    Data = {03000000000000000000}
  end
  object vtEmpTypeSecurity: TVirtualTable
    Left = 96
    Top = 8
    Data = {03000000000000000000}
  end
  object vtDisplayName: TVirtualTable
    Left = 24
    Top = 64
    Data = {03000000000000000000}
  end
  object vtJurisdiction: TVirtualTable
    Left = 24
    Top = 120
    Data = {03000000000000000000}
  end
  object vtBranches: TVirtualTable
    Left = 96
    Top = 64
    Data = {03000000000000000000}
  end
  object vtFeeBasis: TVirtualTable
    Left = 96
    Top = 120
    Data = {03000000000000000000}
  end
  object qrySql: TUniQuery
    Left = 272
    Top = 8
  end
  object vtReqFields: TVirtualTable
    Left = 104
    Top = 176
    Data = {03000000000000000000}
  end
  object vtMatterType: TVirtualTable
    Left = 184
    Top = 8
    Data = {03000000000000000000}
  end
  object vtWorkFlow: TVirtualTable
    Left = 184
    Top = 64
    Data = {03000000000000000000}
  end
  object vtMatterStatus: TVirtualTable
    Left = 192
    Top = 120
    Data = {03000000000000000000}
  end
  object vtMatterSubStatus: TVirtualTable
    Left = 184
    Top = 176
    Data = {03000000000000000000}
  end
  object vtMatterSubType: TVirtualTable
    Left = 24
    Top = 176
    Data = {03000000000000000000}
  end
  object vtSundryType: TVirtualTable
    Left = 24
    Top = 232
    Data = {03000000000000000000}
  end
  object vtEntity: TVirtualTable
    Left = 104
    Top = 232
    Data = {03000000000000000000}
  end
  object vtSubJurisdiction: TVirtualTable
    Left = 273
    Top = 65
    Data = {03000000000000000000}
  end
  object vtEmpSecurity: TVirtualTable
    Left = 186
    Top = 237
    Data = {03000000000000000000}
  end
end
