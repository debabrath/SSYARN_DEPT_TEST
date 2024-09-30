@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'yarn department test cds'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity YARN_DEPT_TEST_cds as select from I_ManufacturingOrderItem as a 
                 left outer join  ZPP_WARPING_REP1 as b on ( a.Material = b.Material ) 
                 left outer join  I_MfgOrderDocdGoodsMovement as C on ( C.ManufacturingOrder = a.ManufacturingOrder and C.Material like 'YGPC%' )
                 left outer join  I_MfgOrderDocdGoodsMovement as D on ( D.ManufacturingOrder = a.ManufacturingOrder and D.Material like 'YGPPV%' ) 
                 left outer join  I_MfgOrderDocdGoodsMovement as E on ( E.ManufacturingOrder = a.ManufacturingOrder and E.Material like 'WW%' ) 
                  
                                                               
                 
{  a.ManufacturingOrder,
   C.Material as COTTON_YARN,
   D.Material as PV_YARN ,
   E.Material as BOTTOM
}
// where  C.Material like 'Y%'
