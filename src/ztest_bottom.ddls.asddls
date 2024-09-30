@AbapCatalog.sqlViewName: 'YTES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'TEST_BOTTOM'
define view ZTEST_BOTTOM as select from I_ManufacturingOrderItem as aA 
                 left outer join  ZPP_WARPING_REP1 as bB on ( aA.Material = bB.Material ) 
                 left outer join  I_MfgOrderDocdGoodsMovement as CC on ( CC.ManufacturingOrder = aA.ManufacturingOrder and CC.Material like 'YGPC%' )
                 left outer join  I_MfgOrderDocdGoodsMovement as DD on ( DD.ManufacturingOrder = aA.ManufacturingOrder and DD.Material like 'YGPPV%' ) 
                 left outer join  I_MfgOrderDocdGoodsMovement as EE on ( EE.ManufacturingOrder = aA.ManufacturingOrder and EE.Material like 'WW%' ) 
                  
                                                               
                 
{  aA.ManufacturingOrder ,
   CC.Material as COTTON ,
   CC.QuantityInBaseUnit as COTTON_QUAN  ,
   DD.Material as PV_YARN ,
   DD.QuantityInBaseUnit as YARN_QUAN ,
   EE.Material as BOTTOM,
   EE.QuantityInBaseUnit as BOTTOM_QUAN
}
// where  C.Material like 'Y%'
